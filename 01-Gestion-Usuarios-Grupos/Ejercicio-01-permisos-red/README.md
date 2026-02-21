# Ejercicio 01: Gestión de Identidades y Permisos

## Descripción del Escenario
Como administrador de sistemas, se requiere dar acceso a un nuevo técnico de soporte (`operador1`) para que pueda consultar la configuración de red del servidor, pero sin permisos para modificarla.

## Conceptos Aplicados
* **Aislamiento de privilegios:** Uso de grupos para gestionar accesos.
* **Permisos Octales:** Configuración de `chmod 640` para proteger archivos críticos.
* **Propiedad de archivos:** Uso de `chown` para definir el `Owner` del sistema.

## Comandos Utilizados
- `groupadd`: Crear grupos de sistema.
- `useradd`: Alta de usuarios con directorio personal.
- `chmod`: Modificación de permisos de acceso.
- `chown`: Cambio de propietario y grupo.
