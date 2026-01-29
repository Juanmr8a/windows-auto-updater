# Windows Auto-Updater Script 🚀

Un script por lotes (batch) simple y robusto para automatizar la actualización de software y del sistema operativo en Windows 10 y Windows 11.

## 📋 Características

- **Verificación de Administrador:** Asegura que el script tenga los permisos necesarios antes de ejecutarse.
- **Winget Integration:** Utiliza el Gestor de Paquetes de Windows para actualizar todas las aplicaciones instaladas automáticamente.
- **Windows Update:** Invoca al cliente USO para buscar parches de seguridad del sistema.
- **Silencioso y Rápido:** Intenta realizar las instalaciones sin intervención del usuario.

## ⚙️ Requisitos

- Windows 10 (versión 1709 o superior) o Windows 11.
- Conexión a Internet.
- App Installer (Winget) instalado (viene por defecto en versiones modernas).

## 🚀 Uso

1. Descarga el archivo `ActualizarTodo.bat`.
2. Haz clic derecho sobre el archivo.
3. Selecciona **"Ejecutar como administrador"**.
4. Espera a que la consola termine el proceso.

## ⚠️ Nota Legal

Este script se proporciona "tal cual". Úsalo bajo tu propia responsabilidad. Se recomienda revisar el código antes de ejecutarlo en entornos de producción.
