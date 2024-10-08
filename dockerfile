FROM python:3.9-alpine

WORKDIR /flask_app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install pytest

COPY app/ .

COPY tests/ tests/test_app.py

CMD [ "python", "app.py" ]

CMD ["flask", "run", "--host=0.0.0.0"]
