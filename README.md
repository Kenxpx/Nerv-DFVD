# Nerv-DFVD
AI-powered web app for detecting deepfake videos with high accuracy.
## Features

- Upload videos in common formats (MP4, AVI, etc.)
- Real-time deepfake video detection
- Results visualization with deepfake confidence scores
- User-friendly web interface
- Mobile-responsive design

## Demo

You can access the live version of the web app at nervgames.com

## Requirements

Before running the web app, ensure you have the following installed:

- Python 3.8+
- Django 3.2+
- TensorFlow or PyTorch (depending on the model version you're using)
- OpenCV
- Nerv-DFVD dependencies

To install the required packages, run:

```bash
pip install -r requirements.txt
python manage.py migrate
python manage.py createsuperuser
python manage.py runserver
