FROM python:3.9

RUN apt-get update && apt-get install -y \
    vim

WORKDIR /uygulama

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app.py"]

