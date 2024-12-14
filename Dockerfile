# Getting base python image
FROM python:3.9-slim

# Creating  work directory
WORKDIR /app 

# Copy the application files into the app folder container
COPY . /app

# Copy Requirements
COPY requirements.txt .
 
# install Requirements using txt
RUN pip install -r requirements.txt

# Copy main pythone app to root folder
COPY main.py .

# Running python and main image
CMD ["python","main.py"]
