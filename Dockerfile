FROM python:3.8.5

RUN apt update && apt upgrade 
RUN apt autoremove

ENV FLAG_DB_TYPE sqlite
ENV FLAG_DB data
ENV FLAG_HOST 0.0.0.0
ENV FLAG_PORT 61217
ENV FLAG_LANG ko-KR
ENV FLAG_MARKUP namumark
ENV FLAG_ENCRYPT sha3
EXPOSE 61217


WORKDIR /flagwiki

COPY . .
RUN python3 -m pip install -U pip && python3 -m pip install -r requirements.txt
ENTRYPOINT ["python3", "app.py"]
