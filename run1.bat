del /F /Q .\reports
mkdir reports
pabot --processes 2 -d reports --variable remote:http://localhost:9999/wd/hub -i A* test
