## Bitácora de Verificación de Seguridad

Para asegurar que la configuración de permisos es correcta, se realizaron las siguientes pruebas de caja negra con el usuario `operador1`:

### 1. Intento de lectura (Lectura permitida)
* **Comando:** `cat /home/config_red.txt`
* **Resultado:** El usuario pudo visualizar el contenido (IP y Gateway). 
* **Conclusión:** Permiso de lectura (4) para el grupo `soporte` verificado.

### 2. Intento de borrado (Protección del sistema)
* **Comando:** `rm /home/config_red.txt`
* **Resultado observado:** El sistema lanzó el aviso `remove write-protected regular file?`. Al confirmar con `y`, el archivo **permaneció en el sistema** debido a la falta de permisos de escritura en el directorio `/home`.
* **Conclusión:** Se confirma la integridad de los archivos críticos del sistema frente a usuarios no autorizados.

### 3. Verificación de persistencia
* **Comando:** `ls -l /home/config_red.txt`
* **Resultado:** El archivo sigue existiendo con los atributos `-rw-r-----`.
