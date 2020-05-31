FROM python:3.8-alpine
WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "gunicorn", "-bind", "0.0.0.0:80", "-w", "4" "wireguard_hub:app" ]