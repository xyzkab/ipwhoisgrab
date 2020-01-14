FROM python:3-alpine3.10

WORKDIR /opt

RUN apk update && apk add git
RUN git clone https://github.com/xyzkab/whoisgrab.git
RUN cd /opt/whoisgrab && pip install -r requirements.txt

ENTRYPOINT ["python3","/opt/whoisgrab/whoisgrab.py"]
