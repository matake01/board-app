# start from an official image
FROM python:3.6

# arbitrary location choice: you can change the directory
RUN mkdir -p /opt/services/app/src
WORKDIR /opt/services/app/src

# copy our project code
COPY . /opt/services/app/src

# install our two dependencies
RUN pip install -r requirements.txt

# expose the port 8000
EXPOSE 8000

# define the default command to run when starting the container
CMD ["gunicorn", "--chdir", "src", "--bind", ":8000", "app.wsgi:application"]
