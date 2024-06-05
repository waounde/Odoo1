FROM python:3.9-slim

RUN apt-get update && apt-get install -y python3-dev python3-pip

WORKDIR /opt/odoo

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python3", "/opt/odoo/odoo", "-c", "/opt/odoo/odoo.conf"]
