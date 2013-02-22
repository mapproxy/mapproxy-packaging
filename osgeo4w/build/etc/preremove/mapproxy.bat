REM delete created files
call %OSGEO4W_ROOT%\OSGeo4W.bat easy_install -m mapproxy
del %OSGEO4W_ROOT%\apps\Python27\Scripts\mapproxy-seed.exe
del %OSGEO4W_ROOT%\apps\Python27\Scripts\mapproxy-seed-script.py
del %OSGEO4W_ROOT%\apps\Python27\Scripts\mapproxy-util.exe
del %OSGEO4W_ROOT%\apps\Python27\Scripts\mapproxy-util-script.py
for /D %%f in (%OSGEO4W_ROOT%\apps\Python27\Lib\site-packages\MapProxy*) do rmdir %%f /s /q
for /D %%f in (%OSGEO4W_ROOT%\apps\Python27\Lib\site-packages\PyYAML*) do rmdir %%f /s /q
rmdir %OSGEO4W_ROOT%\apps\mapproxy\src\build /s /q
rmdir %OSGEO4W_ROOT%\apps\mapproxy\src\dist /s /q
rmdir %OSGEO4W_ROOT%\apps\mapproxy\src\MapProxy.egg-info /s /q
