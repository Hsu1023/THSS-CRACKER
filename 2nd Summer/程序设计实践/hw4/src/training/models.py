from pickletools import optimize
from xml.etree.ElementTree import tostring
from django.db import models
from django.utils import timezone

class Article(models.Model):
    id = models.AutoField(primary_key=True, unique=True)
    title = models.TextField()
    model = models.BooleanField() # 0 for MLP, 1 for LeNet
    lr = models.FloatField()
    optimizer = models.BooleanField() # 0 for SGD, 1 for Adam
    epoch = models.IntegerField()
    batch_size = models.IntegerField()
    author = models.TextField()
    log = models.TextField()
    state = models.BooleanField() # 0 for traning, 1 for finished
    date = models.DateTimeField(default=timezone.now)
    finished_date = models.DateTimeField()
    acc = models.FloatField()
    device = models.TextField()
    def __str__(self):
        return self.title

    @staticmethod
    def process_data(form):
        res = Article()
        res.title = "Default" if form['title'] is None or form['title']=="" else form['title']
        res.model = form.get('model', False)
        res.lr = float(form.get('lr', 0.01))
        res.optimizer = form.get('optimizer', False)
        res.epoch = int(form.get('epoch', 10))
        res.batch_size = int(form.get('batch_size', 256))
        res.author = "Default" if form['author'] is None or form['author']=="" else form['author']
        res.state = 0
        res.finished_date = timezone.now()
        res.log = ""
        res.acc = 0
        res.device = ""
        return res