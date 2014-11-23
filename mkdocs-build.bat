@ECHO OFF
mkdocs build --clean
start http://127.0.0.1:8000/
mkdocs serve
