rm -rf db.sqlite3
rm -rf training/migrations/
rm -rf assets/loss_pic/*
python manage.py makemigrations training
python manage.py migrate