@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\Bitnami\progresso2\ruby\bin\ruby.exe" "C:/Bitnami/progresso2/apps/redmine/htdocs/vendor/bundle/ruby/2.3.0/bin/thin" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\Bitnami\progresso2\ruby\bin\ruby.exe" "%~dpn0" %*
