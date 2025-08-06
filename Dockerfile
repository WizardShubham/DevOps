FROM python:3.10-slim

RUN apt-get update && apt-get upgrade -y && apt-get clean

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD ["python", "app.py"]
