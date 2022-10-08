@echo off
echo "Bienvenido a la reparacion de la interfaz de internet"
echo chek ip address
ipconfig /all | find "ipv4" /i

:: si ves la ip y no tienes internet es otro problema::

echo "Esta corregido?: salga del programa"
echo "Caso contrario pulse cualquier tecla"
pause
cls
echo "reiniciando controlador de manera física"
ipconfig /release
ipconfig /renew
echo "Esta corregido?: salga del programa"
echo "Caso contrario pulse cualquier tecla"
pause
cls
echo "En la siguiente ventana que se abrira"
Echo "Deshabilitar y Habilitar el controlador".
echo "clic derecho"
echo "SELECCIONA DESHABILITAR"
ECHO "clic derecho"
echo "SELECCIONA HABILITAR"
pause
ncpa.cpl
echo "Esta corregido?: salga del programa"
echo "Caso contrario pulse cualquier tecla"
pause
cls
ncpa.cpl
Echo "Deshabilitar y Habilitar el controlador 2".
echo "clic derecho"
echo "Ingresa a propiedades"
echo "Selecciona configurar"
echo "Selecciona Controlador"
echo "Selecciona Deshabilitar dipositivo"
echo "Selecciona Habilitar dipositivo"
echo "Aceptar"
echo "Esta corregido?: salga del programa"
echo "Caso contrario pulse cualquier tecla"
pause

cls
echo "Guarde y cierre todos los programas abiertos"
echo "Luego presione una tecla para continuar"
pause
netsh int ip reset resetlog.txt
netsh winsock reset 
ipconfig /flushdns
shutdown /R /T 30 /C "Se Programó el reinicio de la pc para guardar cambios tiene 30 segundos para guardar todos los archivos"
timeout /t 5
exit
