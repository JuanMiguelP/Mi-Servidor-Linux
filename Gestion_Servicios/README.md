# Administración de Servicios y Configuración - Ubuntu Server

Este ejercicio forma parte de mi preparación para la certificación Linux Essentials y mi portafolio como Técnico de Sistemas.

## Objetivos del Ejercicio:
- **Gestión de Servicios**: Instalación y control de estados (Start, Stop, Restart) usando `systemctl`.
- **Configuración de Entorno**: Modificación de archivos del sistema y despliegue de contenido.
- **Evidencia Práctica**: Generación de logs para verificar cambios reales en el servidor.

## Proceso Realizado:
1. **Instalación**: Se instaló el servidor web Apache2.
2. **Estado Inicial**: Comprobación del servicio antes de cambios.
3. **Modificación**: Cambio del contenido del servidor (`index.html`) para simular un panel de control industrial.
4. **Reinicio (Restart)**: Aplicación de la nueva configuración para que el servicio la reconozca.
5. **Verificación**: Comprobación final del estado y del contenido actualizado.

## Comandos Clave:
- `sudo systemctl restart apache2`: Para aplicar los cambios.
- `systemctl is-active`: Para validar la operatividad.
- `tee`: Para edición de archivos de configuración con permisos de superusuario.
