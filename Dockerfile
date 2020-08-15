FROM dseifert/rpi-python3:latest

RUN apt-get update && apt-get install libraspberrypi-bin

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
CMD python3 -u ./fancontrol.py