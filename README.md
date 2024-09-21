# Nerv-DFVD
AI-powered web app for detecting deepfake videos with high accuracy.

## Features

- User authentication system
- Video upload functionality
- Deepfake detection using a pre-trained machine learning model
- RESTful API for programmatic access to the detection service
- User profile to view past detection results

## Installation

1. Clone the repository:
   git clone https://github.com/Kenxpx/Nerv-DFVD.git
   cd Nerv-DFVD

2. Create a virtual environment and activate it:
   python -m venv venv
   venv\Scripts\activate

3. Install the required packages:
   pip install -r requirements.txt

4. Apply database migrations:
   python manage.py migrate

5. Create a superuser (admin) account:
   python manage.py createsuperuser

6. Run the development server:
   python manage.py runserver

7. Access the application at http://127.0.0.1:8000

## Usage

1. Register for an account or log in if you already have one.
2. Navigate to the upload page and select a video file to analyze.
3. Submit the video and wait for the detection results.
4. View your detection history in your user profile.

## API Usage

The project includes a RESTful API for programmatic access:

Authentication is required for API access. Use the browsable API interface or tools like curl or Postman for testing.

## Technology Stack

- Django
- Django REST Framework
- TensorFlow
- OpenCV
- SQLite (default database, can be changed for production)

## Contributing

Contributions to Nerv-DFVD are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

For any queries or suggestions, please open an issue on the GitHub repository.

Project Link: https://github.com/Kenxpx/Nerv-DFVD
