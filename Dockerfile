# Use official Python slim image for smaller size but still allows installing system libs
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install system dependencies needed for OpenCV and PostgreSQL
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python3-dev \
    libpq-dev \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libgthread-2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements file
COPY requirements.txt .

# Upgrade pip and install python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy your project code
COPY . .

# Collect static files (for whitenoise and static serving)
RUN python manage.py collectstatic --noinput

# Expose port 8000 (or your configured port)
EXPOSE 8000

# Run Gunicorn server
CMD ["gunicorn", "detection_unit.wsgi:application", "--bind", "0.0.0.0:8000"]
