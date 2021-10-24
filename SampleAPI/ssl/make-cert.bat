openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localhost.key -out localhost.crt -config localhost.conf -subj /CN=localhost
openssl pkcs12 -export -out localhost.pfx -inkey localhost.key -in localhost.crt -passout pass:localhost
move localhost.crt ..
move localhost.pfx %USERPROFILE%\.aspnet\https
del localhost.key
