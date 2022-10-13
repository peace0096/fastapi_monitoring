FROM python:3.9
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
WORKDIR /mlops_serving
COPY . /mlops_serving
EXPOSE 80
CMD ["uvicorn", "app.api:app", "--host", "0.0.0.0", "--port", "80"]