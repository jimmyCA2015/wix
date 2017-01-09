SET CURRENTDIR=%~dp0

set "xml_file=path.config"
for /f "skip=2 tokens=3,5 delims== " %%a in ('find "Path" "%xml_file%"') do (
    set "name=%%~a"
    set "pass=%%b"
    call %%b\0_Config.cmd
 

)

CD %CURRENTDIR%
 

fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^OPTIONAL_SERVICE_PREFIX^^^^ %OPTIONAL_SERVICE_PREFIX%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^LOG_FILE_PATH^^^^ %LOG_FILE_PATH%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^XOSLOG_SMTP_SERVER^^^^ %XOSLOG_SMTP_SERVER%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^XOSLOG_TO_EMAIL^^^^ %XOSLOG_TO_EMAIL%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^XOSLOG_FROM_EMAIL^^^^ %XOSLOG_FROM_EMAIL%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DEFAULT_EMAIL_TO^^^^ %DEFAULT_EMAIL_TO%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DEFAULT_EMAIL_FROM^^^^ %DEFAULT_EMAIL_FROM%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^PATH_TO_UISERVICE^^^^ %PATH_TO_UISERVICE%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_SERVER^^^^ %DB_SERVER%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_USERNAME^^^^ %DB_USERNAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_USER_PASSWORD^^^^ %DB_USER_PASSWORD%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_DWUSERNAME^^^^ %DB_DWUSERNAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_DWUSER_PASSWORD^^^^ %DB_DWUSER_PASSWORD% 
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_PROMOUSERNAME^^^^ %DB_PROMOUSERNAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_PROMOUSER_PASSWORD^^^^ %DB_PROMOUSER_PASSWORD%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_TRANSACTION_DB_NAME^^^^ %DB_TRANSACTION_DB_NAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_CREDIT_DB_NAME^^^^ %DB_CREDIT_DB_NAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_CREDITBUREAU_DB_NAME^^^^ %DB_CREDITBUREAU_DB_NAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_DOCUMENT_DB_NAME^^^^ %DB_DOCUMENT_DB_NAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_LOG_DB_NAME^^^^ %DB_LOG_DB_NAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_SECURITY_DB_NAME^^^^ %DB_SECURITY_DB_NAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_DATAWAREHOUSE_DB_NAME^^^^ %DB_DATAWAREHOUSE_DB_NAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DB_INTEGRATION_DB_NAME^^^^ %DB_INTEGRATION_DB_NAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^APP_SERVER^^^^ %APP_SERVER%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^WEB_SERVER^^^^ %WEB_SERVER%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DOC_GEN_SERVER^^^^ %DOC_GEN_SERVER% 
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^APP_SERVER_SSL^^^^ %APP_SERVER_SSL%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^CREDIT_SERVICES_URL^^^^ %CREDIT_SERVICES_URL%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^ENVIRONMENT_NAME^^^^ %ENVIRONMENT_NAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^WEB_SERVIVE_ROOT_PATH^^^^ %WEB_SERVIVE_ROOT_PATH%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^RTF_TO_PDF_HOSTING_SERVER^^^^ %RTF_TO_PDF_HOSTING_SERVER%

REM *** MortgageCallbackWebService ***
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^MI_CALL_BACK_SERVICE_USERNAME^^^^ %MI_CALL_BACK_SERVICE_USERNAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^MI_CALL_BACK_SERVICE_PASSWORD^^^^ %MI_CALL_BACK_SERVICE_PASSWORD%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^MI_SERVICE_CERTIFICATE_NAME^^^^ %MI_SERVICE_CERTIFICATE_NAME%
REM *** XosIntegrationEngine ***
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^TVALUE_INTEGRATION_URL^^^^ %TVALUE_INTEGRATION_URL%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^DTK_BARCODE_LICENSE_KEY^^^^ %DTK_BARCODE_LICENSE_KEY%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^XOS_INTEGRATION_ENGINE_CERTIFICATE_NAME^^^^ %XOS_INTEGRATION_ENGINE_CERTIFICATE_NAME%
REM *** UCCDirectWebService & ExpressOS ***
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^LIEN_REGISTRATION_USERNAME^^^^ %LIEN_REGISTRATION_USERNAME%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^LIEN_REGISTRATION_PASSWORD^^^^ %LIEN_REGISTRATION_PASSWORD%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^LIEN_REGISTRATION_CLIENT_ACCOUNT_ID^^^^ %LIEN_REGISTRATION_CLIENT_ACCOUNT_ID%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^LIEN_REGISTRATION_CLIENT_USER_ID^^^^ %LIEN_REGISTRATION_CLIENT_USER_ID%
REM *** XosFaxReceivedMonitorLocations.xml ***
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^PATH_TO_FAX_FOLDERS^^^^ %PATH_TO_FAX_FOLDERS%
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^FAX_INTEGRATION_CODE^^^^ %FAX_INTEGRATION_CODE%
REM *** XosFaxRecievedMontitor ***
fart.exe -r -c -- %CURRENTDIR%\web.config ^^^^PATH_TO_FAX_CONFIGURATION^^^^ %PATH_TO_FAX_CONFIGURATION%

DEL fart.exe
DEL path.config
DEL "%~f0"
pause
 