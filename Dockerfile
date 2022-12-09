FROM python:3.10

RUN /app/api

# 
WORKDIR /app/api

# 
COPY requirements.txt .

# 
RUN pip install -r requirements.txt

copy . .

# 
CMD ["uvicorn", "main:app", "--port", "8000", "--host", "0.0.0.0"]