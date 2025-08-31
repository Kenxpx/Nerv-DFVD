# ✅ Use Debian Bookworm so builds don’t break with Trixie
FROM python:3.10-slim-bookworm

# Set working directory
WORKDIR /app

# ✅ Install system dependencies
# - Replaced `libgl1-mesa-glx` → `libgl1`
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    python3-dev \
    libpq-dev \
    libgl1 \
    libglib2.0-0 \
 && rm -rf /var/lib/apt/lists/*

# Copy dependencies first (for caching)
COPY requirements.txt .

# Upgrade pip & install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# ✅ Collect static files for Django
RUN python manage.py collectstatic --noinput

# Expose app port
EXPOSE 8000

# ✅ Start server with Gunicorn
CMD ["gunicorn", "detection_unit.wsgi:application", "--bind", "0.0.0.0:8000"]
