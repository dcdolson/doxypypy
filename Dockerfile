FROM python:alpine

RUN apk add doxygen graphviz ttf-freefont

RUN mkdir /tmp/doxypypy

COPY doxypypy/ /tmp/doxypypy/doxypypy
COPY setup.py README.rst /tmp/doxypypy/

RUN /tmp/doxypypy/setup.py build && /tmp/doxypypy/setup.py install

