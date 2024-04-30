FROM python:3.12.3-alpine3.18

RUN pip3 install b2 

COPY . /run
RUN chmod +x /run/run_backup.sh

ENTRYPOINT ["/run/run_backup.sh"]
