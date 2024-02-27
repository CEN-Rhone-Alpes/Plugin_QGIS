@echo off

echo Ne pas fermer cette page, elle se fermera seule une fois l'installation complète.


echo %time% %date% : START INSTALL QGIS 3 >\\100.100.100.100\users\tlaveille\logQGIS3\log%USERNAME%.txt
ipconfig | findstr /R /C:"IPv4 Address" >>\\100.100.100.100\users\tlaveille\logQGIS3\log%USERNAME%.txt

\\100.100.100.100\bd_sig\z_QGIS\Formations\tests_oslandia_b\osgeo4w-setup-v2.exe --quiet-mode --advanced --arch x86_64 --autoaccept --delete-orphans --local-install --local-package-dir \\100.100.100.100\bd_sig\z_QGIS\Formations\tests_oslandia_b\OSGeo4W_v2-Packages --packages qgis-ltr-full >>\\100.100.100.100\users\tlaveille\logQGIS3\log%USERNAME%.txt

echo END INSTALL Q3 >>\\100.100.100.100\users\tlaveille\logQGIS3\log%USERNAME%.txt
echo START COPY PROFILES >>\\100.100.100.100\users\tlaveille\logQGIS3\log%USERNAME%.txt

XCOPY \\100.100.100.100\bd_sig\z_QGIS\Formations\tests_oslandia_b\default %APPDATA%\QGIS\QGIS3\profiles\default\ /s /e >>\\100.100.100.100\users\tlaveille\logQGIS3\log%USERNAME%.txt

echo END COPY PROFILES >>\\100.100.100.100\users\tlaveille\logQGIS3\log%USERNAME%.txt
echo START UNINSTALL QGIS 2 >>\\100.100.100.100\users\tlaveille\logQGIS3\log%USERNAME%.txt

echo END UNINSTALL QGIS 2 >>\\100.100.100.100\users\tlaveille\logQGIS3\log%USERNAME%.txt
echo %time% %date% : FULL PROCESSE END >>\\100.100.100.100\users\tlaveille\logQGIS3\log%USERNAME%.txt
