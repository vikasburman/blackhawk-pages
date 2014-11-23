@ECHO OFF
mkdocs build --clean
del "../../blackhawk/gh-pages/*.*" /S /A:-H
rd "../../blackhawk/gh-pages/css" /S /Q
rd "../../blackhawk/gh-pages/fonts" /S /Q
rd "../../blackhawk/gh-pages/img" /S /Q
rd "../../blackhawk/gh-pages/js" /S /Q
rd "../../blackhawk/gh-pages/license" /S /Q
xcopy site "../../blackhawk/gh-pages" /E
start http://127.0.0.1:8000/
mkdocs serve
pause

