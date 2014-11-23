@ECHO OFF
mkdocs build --clean

echo.
echo Updating gh-pages:
del "../../blackhawk/gh-pages/*.*" /A:-H
rd "../../blackhawk/gh-pages/css" /S /Q
rd "../../blackhawk/gh-pages/fonts" /S /Q
rd "../../blackhawk/gh-pages/img" /S /Q
rd "../../blackhawk/gh-pages/js" /S /Q
rd "../../blackhawk/gh-pages/license" /S /Q
xcopy site "../../blackhawk/gh-pages" /E 

echo.
start http://127.0.0.1:8000/
mkdocs serve

