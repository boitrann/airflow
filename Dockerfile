FROM apache/airflow:slim-2.7.0-python3.10

USER root

RUN apt-get update && apt-get install -y 

USER airflow

COPY requirements.txt /
RUN pip install --upgrade pip
RUN pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements.txt