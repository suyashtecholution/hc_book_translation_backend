FROM python:3.9-slim
RUN apt-get update || true

COPY . /backend_server
WORKDIR /backend_server

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt


EXPOSE 8000
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]