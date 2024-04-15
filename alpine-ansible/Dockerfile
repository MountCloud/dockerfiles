FROM alpine:3.19

ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache python3
RUN if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi
RUN rm /usr/lib/python3.11/EXTERNALLY-MANAGED
RUN python -m ensurepip
RUN rm -r /usr/lib/python*/ensurepip
RUN if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi
RUN pip install --no-cache --upgrade pip setuptools wheel

RUN pip --no-cache-dir install ansible