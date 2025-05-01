# Setup script for local development
cd "api"
python -m venv venv
.env\Scripts\Activate.ps1
pip install -r requirements.txt
Start-Process powershell -ArgumentList "cd `"$PWD`"; .\venv\Scripts\Activate.ps1; python app.py"

cd "..\admin-ui"
npm install
Start-Process powershell -ArgumentList "cd `"$PWD`"; npm run dev"