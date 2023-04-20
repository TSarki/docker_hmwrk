FROM python:3.10.6

WORKDIR /stocks_products

COPY ./stocks_products /stocks_products

RUN pip install -r /stocks_products/requirements.txt

ENV SECRET_KEY django-insecure-ds76TRmnds76TRmnds76TRmn
ENV DEBUG 1

RUN python manage.py migrate

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "stocks_products.wsgi"]