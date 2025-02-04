FROM ubuntu:20.04

FROM python:3.12-slim

# Install the dependancies
RUN apt-get update && apt-get install -y \
    pkg-config \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt /app

COPY secret_ai_getting_started.py /app

# Install the python packages
RUN pip install --upgrade pip && pip install -r requirements.txt && pip install 'secret-sdk>=1.8.1' && pip install secret-ai-sdk
