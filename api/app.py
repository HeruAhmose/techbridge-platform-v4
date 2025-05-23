from flask import Flask
from routes.auth import auth_bp

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'your-jwt-secret'
    app.register_blueprint(auth_bp, url_prefix='/api/auth')
    return app

if __name__ == '__main__':
    app = create_app()
    app.run()