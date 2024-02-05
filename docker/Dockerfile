FROM python:3.11.7-slim

RUN mkdir /python_server \
  && pip install --upgrade pip \
  && pip install flask

COPY server.py /python_server


ENTRYPOINT ["python3", "/python_server/server.py"]

CMD ["Hello World!"]

