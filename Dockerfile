FROM ubuntu:latest 

RUN apt-get update -y && \
    apt-get install -y python3-pip

WORKDIR /app/2048.botify.com/

COPY ./requirements.txt ./requirements.txt

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT [ "/usr/bin/python3" ]

CMD [ "run.py" ]