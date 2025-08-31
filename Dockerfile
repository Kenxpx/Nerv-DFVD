FROM python:3.10-slim-bookworm

WORKDIR /app

# ✅ Fixed: use libgl1 instead of libgl1-mesa-glx
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python3-dev \
    libpq-dev \
    libgl1 \
    libglib2.0-0 \
 && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

# ✅ Collect static files (important for Django + whitenoise)
RUN python manage.py collectstatic --noinput

EXPOSE 8000

# ✅ Start server with Gunicorn
CMD ["gunicorn", "detection_unit.wsgi:application", "--bind", "0.0.0.0:8000"]
