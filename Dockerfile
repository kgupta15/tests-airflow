#
# Dockerfile for airflow project
#

# OS image
FROM fluxcapacitor/scheduler-airflow:latest

# Set environment variables
ENV HOME /root

# Define working directory
WORKDIR /code
ADD . /code
RUN pip install -r requirements.txt

# initialize database for airflow
RUN airflow initdb

# start airflow ui
# RUN airflow webserver -p 8080

CMD ["/usr/bin/env", "python", "src/tutorial/tutorial.py"]
