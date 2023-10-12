FROM python:3.11
WORKDIR /app
COPY req.txt /app/
RUN pip install -r req.txt
COPY . /app/
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"] 
EXPOSE 8000