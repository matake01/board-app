# django-template-app

## Getting Started

Install the dependencies:

```sh
pip install -r requirements.txt
```

Create database scheme:

```sh
python src/manage.py migrate -v 3
```

Deploy and run on server:

```sh
gunicorn --chdir src --bind :8000 app.wsgi:application
```

The app should now be available at `http://localhost:8000`