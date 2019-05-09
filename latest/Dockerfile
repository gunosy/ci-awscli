FROM python:3-alpine3.8
RUN apk --update --no-cache add openssh git zip make docker jq gettext
RUN pip install --upgrade pip setuptools awscli
RUN rm -r /root/.cache
