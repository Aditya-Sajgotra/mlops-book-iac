FROM python:3.8

COPY ./requirements.txt /workapp/requirements.txt

WORKDIR /workapp

RUN pip install -r requirements.txt

COPY workapp/* /workapp

COPY ./roberta-sequence-classification-9.onnx /workapp

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

