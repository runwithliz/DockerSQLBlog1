FROM mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04

COPY . /

CMD /bin/bash ./entrypoint.sh