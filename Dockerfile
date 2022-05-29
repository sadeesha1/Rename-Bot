FROM python:3.10

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

FROM signal import signal, SIGPIPE, SIG_DFL 

RUN signal(SIGPIPE,SIG_DFL) 

COPY . /app/

CMD python -m bot

