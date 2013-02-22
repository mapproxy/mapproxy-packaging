REM open OSGeo4W shell and install Distribute and MapProxy with dependencies like PyYaml
call %OSGEO4W_ROOT%\OSGeo4W.bat "python apps\mapproxy\dependencies\distribute_setup.py && cd %OSGEO4W_ROOT%\apps\mapproxy\src && python setup.py install && mapproxy-util create -t base-config %OSGEO4W_ROOT%\apps\mapproxy\config"

del %OSGEO4W_ROOT%\distribute*.tar* /q