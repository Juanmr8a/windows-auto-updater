@echo off
TITLE Actualizador Automatico del Sistema y Apps
COLOR 0A

:: ---------------------------------------------------
:: 1. VERIFICAR PERMISOS DE ADMINISTRADOR
:: ---------------------------------------------------
echo Verificando permisos de administrador...
net session >nul 2>&1
if %errorLevel% == 0 (
    echo [OK] Permisos concedidos.
) else (
    echo [ERROR] Este script requiere permisos de Administrador.
    echo Por favor, haz clic derecho en el archivo y selecciona "Ejecutar como administrador".
    pause
    exit
)

echo.
echo ========================================================
echo       INICIANDO PROCESO DE ACTUALIZACION
echo ========================================================
echo.

:: ---------------------------------------------------
:: 2. ACTUALIZAR APLICACIONES CON WINGET
:: ---------------------------------------------------
echo Buscando actualizaciones de aplicaciones instaladas...
echo Esto puede tardar unos minutos dependiendo de tu conexion.
echo.

:: Explicación de banderas:
:: --all: Actualiza todo lo disponible.
:: --include-unknown: Intenta actualizar incluso si la versión es desconocida.
:: --accept-package-agreements: Acepta licencias automáticamente para no detenerse.
:: --silent: Intenta instalar sin ventanas emergentes (algunas apps lo ignoran).

winget upgrade --all --include-unknown --accept-package-agreements --accept-source-agreements

echo.
echo [INFO] Proceso de aplicaciones finalizado.
echo.
echo ========================================================

:: ---------------------------------------------------
:: 3. BUSCAR ACTUALIZACIONES DE WINDOWS (WINDOWS UPDATE)
:: ---------------------------------------------------
echo Iniciando busqueda de actualizaciones de Windows...
echo Se abrira la configuracion de Windows Update si es necesario.

:: 'usoclient' es la herramienta de linea de comandos para Windows Update
usoclient StartInteractiveScan

echo.
echo ========================================================
echo       TODO LISTO. TU EQUIPO ESTA ACTUALIZADO.
echo ========================================================
echo.
pause
