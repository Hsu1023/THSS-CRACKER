from datetime import timedelta
from django.shortcuts import redirect, render
from training.models import Article as model
import training.train as train
import _thread
from django.utils import timezone
from time import gmtime, strftime

def homepage(request):
    return render(request, 'homepage.html')

def start(request):
    return render(request, 'start.html')

def results(request):
    items = model.objects.all()
    newest = list(items)[-5:]
    return render(request, 'results.html',{"items":items, "newest":newest})

def details(request, item_id):
    items = model.objects.all()
    res = model.objects.filter(id=item_id)
    if res[0].state != True:
        res.update(finished_date=timezone.now())
    res = res[0]
    previous_id = res.id - 1 if res.id > 1 else -1
    next_id = res.id + 1 if res.id < len(items) else -1
    logs = res.log.split('\n')
    span = strftime('%X',gmtime(timedelta.total_seconds(res.finished_date - res.date)))
    return render(request, 'details.html', {"task":res, "previous_id":previous_id, "next_id":next_id, "logs":logs, "span":span})

def start_train(task):
    model_type = 'LeNet' if task.model else 'MLP'
    optimizer = 'Adam' if task.optimizer else 'SGD'
    train.train(task.id, task.epoch, task.batch_size, task.lr, model_type, optimizer)
    model.objects.filter(id=task.id).update(state=True)

def submit_post(request):
    res = model.process_data(request.POST)
    res.save()
    _thread.start_new_thread(start_train,(res,))
    return redirect("/results/")
