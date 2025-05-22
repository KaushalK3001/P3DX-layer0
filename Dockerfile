# Use an official Python runtime as a parent image
FROM python:3.11-slim AS base

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    FLASK_APP=manage.py \
    FLASK_RUN_HOST=0.0.0.0

# Create working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    libpq-dev \
&& rm -rf /var/lib/apt/lists/*

# Install Python dependencies separately to leverage caching
COPY requirements.txt .
RUN pip install --upgrade pip \
&& pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose port (optional, for dev)
EXPOSE 5000
