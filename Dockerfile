FROM python:3.8-slim

Copy requirements.txt .

RUN pip install requirments.txt 

RUN mkdir -p app

copy ./app app

Expose 90

CMD ["uvicorn", "app.main:app", "host" , "127.0.0.1", "--port", "90"]