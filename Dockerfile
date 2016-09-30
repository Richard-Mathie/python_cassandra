FROM python:2.7

MAINTAINER Richard Mathie "Richard.Mathie@amey.co.uk"

RUN apt-get update && apt-get install libpq-dev
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install cassandra-driver
