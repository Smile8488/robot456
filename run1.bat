del /F /Q .\pabot_results\*
pabot --processes 2 -d reports --variable remote:http://localhost:9999/wd/hub -i A* test
