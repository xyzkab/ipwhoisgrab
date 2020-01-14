FROM python:3-alpine3.10

WORKDIR /opt

RUN apk update && apk add git
RUN git clone https://github.com/xyzkab/ipwhoisgrab.git
RUN cd /opt/ipwhoisgrab && pip install -r requirements.txt

ENTRYPOINT ["python3","/opt/ipwhoisgrab/ipwhoisgrab.py"]
