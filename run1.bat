del /F /Q .\reports\*
pabot --processes 2 --variable remote:http://localhost:9999/wd/hub -i AA -i BB test
