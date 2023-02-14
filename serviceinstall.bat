@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

if exist "C:\Bitnami\PROGRE~2\mysql\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\mysql\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\postgresql\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\postgresql\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\elasticsearch\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\elasticsearch\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\logstash\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\logstash\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\logstash-forwarder\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\logstash-forwarder\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\kibana\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\kibana\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\apache2\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\apache2\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\apache-tomcat\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\apache-tomcat\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\resin\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\resin\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\jboss\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\jboss\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\wildfly\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\wildfly\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\activemq\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\activemq\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\openoffice\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\openoffice\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\subversion\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\subversion\scripts\serviceinstall.bat" INSTALL)
rem redmine_code_start
if exist C:\Bitnami\PROGRE~2\apps\redmine\scripts\serviceinstall.bat (start /MIN C:\Bitnami\PROGRE~2\apps\redmine\scripts\serviceinstall.bat INSTALL)
rem redmine_code_end
rem RUBY_APPLICATION_INSTALL
if exist "C:\Bitnami\PROGRE~2\mongodb\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\mongodb\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\lucene\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\lucene\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\third_application\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\third_application\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\nginx\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\nginx\scripts\serviceinstall.bat" INSTALL)
if exist "C:\Bitnami\PROGRE~2\php\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\php\scripts\serviceinstall.bat" INSTALL)
goto end

:remove

if exist "C:\Bitnami\PROGRE~2\third_application\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\third_application\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\lucene\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\lucene\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\mongodb\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\mongodb\scripts\serviceinstall.bat")
rem redmine_code_start
if exist C:\Bitnami\PROGRE~2\apps\redmine\scripts\serviceinstall.bat (start /MIN C:\Bitnami\PROGRE~2\apps\redmine\scripts\serviceinstall.bat)
rem redmine_code_end
rem RUBY_APPLICATION_REMOVE
if exist "C:\Bitnami\PROGRE~2\subversion\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\subversion\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\openoffice\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\openoffice\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\jboss\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\jboss\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\wildfly\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\wildfly\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\resin\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\resin\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\activemq\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\activemq\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\apache-tomcat\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\apache-tomcat\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\apache2\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\apache2\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\logstash-forwarder\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\logstash-forwarder\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\kibana\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\kibana\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\logstash\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\logstash\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\elasticsearch\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\elasticsearch\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\postgresql\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\postgresql\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\mysql\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\mysql\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\php\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\php\scripts\serviceinstall.bat")
if exist "C:\Bitnami\PROGRE~2\nginx\scripts\serviceinstall.bat" (start "" /MIN "C:\Bitnami\PROGRE~2\nginx\scripts\serviceinstall.bat")
:end
