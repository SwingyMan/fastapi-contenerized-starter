FROM python:latest
RUN [ "mkdir", "/python" ]
COPY main.py /python/
COPY requirements.txt /python/
WORKDIR /python
RUN ["pip", "install", "-r", "requirements.txt"]
EXPOSE 8000
CMD [ "uvicorn","main:app","--reload" ]
