# Nerv-DFVD
AI-powered web app for detecting deepfake videos with high accuracy.

## Features

- User authentication system
- Video upload functionality
- Deepfake detection using a pre-trained machine learning model
- User profile to view past detection results

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/Kenxpx/Nerv-DFVD.git
   cd Nerv-DFVD

3. Create a virtual environment and activate it:

   ```bash
   python -m venv venv
   venv\Scripts\activate

5. Install the required packages:

   ```bash
   pip install -r requirements.txt

6. Apply database migrations:

   ```bash
   python manage.py migrate

7. Create a superuser (admin) account:

   ```bash
   python manage.py createsuperuser

8. Run the development server:

   ```bash
   python manage.py runserver

9. Access the application at

   ```bash
   http://127.0.0.1:8000

## Usage

1. Register for an account or log in if you already have one.
2. Navigate to the upload page and select a video file to analyze.
3. Submit the video and wait for the detection results.
4. View your detection history in your user profile.

## Technology Stack

- Django
- TensorFlow
- OpenCV
- SQLite (default database, can be changed for production)

## Contributing

Contributions to Nerv-DFVD are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the Apache License - see the LICENSE file for details.

## Contact

For any queries or suggestions, please open an issue on the GitHub repository.

Project Link:   https://github.com/Kenxpx/Nerv-DFVD

## File Structure

```bash

C:.
│   LICENSE
│   manage.py
│   README.md
│   
├───app
│   │   admin.py
│   │   apps.py
│   │   forms.py
│   │   models.py
│   │   tests.py
│   │   urls.py
│   │   views.py
│   │   __init__.py
│   │
│   └───migrations
│           __init__.py
│
├───detection_unit
│       asgi.py
│       settings.py
│       urls.py
│       wsgi.py
│       __init__.py
│
├───models
│       Ken.h5
│
├───notebooks
│       final.ipynb
│       usinglstmcnn.ipynb
│
└───templates
        base.html
        landing_page.html
        results.html
        upload.html
