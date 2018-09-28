del /F /Q .\pabot_results\*
pabot --processes 2 --variable remote:http://localhost:9999/wd/hub -i A* test
