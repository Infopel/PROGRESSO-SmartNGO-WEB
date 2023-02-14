@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Bitnami\progresso2/apps/redmine\scripts\winserv.exe" install "redmineThin1-3" -start auto "C:\Bitnami\progresso2\ruby\bin\ruby.exe" "C:\Bitnami\progresso2/apps/redmine\htdocs\bin\thin" start -p 3001 -e production -c "C:\Bitnami\progresso2/apps/redmine/htdocs" -a 127.0.0.1 --prefix /redmine
net start redmineThin1-3 >NUL
"C:\Bitnami\progresso2/apps/redmine\scripts\winserv.exe" install "redmineThin2-3" -start auto "C:\Bitnami\progresso2\ruby\bin\ruby.exe" "C:\Bitnami\progresso2/apps/redmine\htdocs\bin\thin" start -p 3002 -e production -c "C:\Bitnami\progresso2/apps/redmine/htdocs" -a 127.0.0.1 --prefix /redmine

net start redmineThin2-3 >NUL

goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop redmineThin1-3 >NUL

"C:\Bitnami\progresso2/apps/redmine\scripts\winserv.exe" uninstall "redmineThin1-3"

net stop redmineThin2-3 >NUL
"C:\Bitnami\progresso2/apps/redmine\scripts\winserv.exe" uninstall "redmineThin2-3"

:end
exit
