del /F /Q .\reports\*
robot -T -d reports -n noncritical --variable env:live1 --variable remote:http://192.168.2.58:9999/wd/hub -i AA test
