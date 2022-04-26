FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN py_flask_api create-db
RUN py_flask_api populate-db
RUN py_flask_api add-user -u admin -p admin
EXPOSE 5000
CMD ["py_flask_api", "run"]
