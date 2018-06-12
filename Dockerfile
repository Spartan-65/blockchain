FROM python:3.6-alpine

WORKDIR /app

# Install dependencies.
ADD requirements.txt /app
RUN cd /app && \
    pip install -r requirements.txt

# Add actual source code.
ADD web.py /app
ADD blockchain.py /app

EXPOSE 5000

CMD ["python", "web.py", "--port", "5000"]
