FROM python:3.10-slim
ADD ./test /test
RUN python -m pip install -r /test/requirements.txt
RUN chmod 755 /test/run.sh

ENTRYPOINT ["/test/run.sh"]