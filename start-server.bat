@echo off
echo Starting MBDA Web Server...
echo.
echo The website will be available at: http://localhost:8080
echo Press Ctrl+C to stop the server
echo.
python -m http.server 8080
pause