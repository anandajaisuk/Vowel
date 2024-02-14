FROM python:3.9

WORKDIR /python

COPY requirements.txt requirements.txt

RUN pip3 install --upgrade pip

RUN python3 -m pip install tensorflow

RUN pip3 install -r requirements.txt

COPY . .

CMD ["gunicorn","--bind","0.0.0.0:5000","app:app"]