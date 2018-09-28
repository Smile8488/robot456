del /F /Q .\reports
mkdir reports
pabot --processes 2 -d reports --variable remote:%1 -i %2 test
