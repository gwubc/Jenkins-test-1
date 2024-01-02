FROM python:latest

WORKDIR /usr/src/project
COPY . .

CMD ["python", "hello.py"]
# CMD ["gunicorn", "-w", "2", "main:app", "-b", "0.0.0.0:80"]
