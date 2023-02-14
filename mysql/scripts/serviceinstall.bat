@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Bitnami\progresso2/mysql\bin\mysqld.exe" --install "redmineMySQL-3" --defaults-file="C:\Bitnami\progresso2/mysql\my.ini"

net start "redmineMySQL-3" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "redmineMySQL-3" >NUL
"C:\Bitnami\progresso2/mysql\bin\mysqld.exe" --remove "redmineMySQL-3"

:end
exit
