# Registro de Evidencias - Ejercicio 04
> **Diagnóstico de Red y Conectividad**

## 1. Configuración de Interfaces
Se validó el direccionamiento IP local para asegurar que el nodo 
está correctamente integrado en la subred.

* **Comando**: `ip addr show > red_info.txt`
* **Estado**: Interfaz principal en `UP` con IP privada válida.

---

## 2. Análisis de Ruta (Tracepath)
Se realizó una traza hacia el DNS de Google (`8.8.8.8`) para 
verificar la salida a través del Gateway.

* **Comando**: `tracepath 8.8.8.8 > ruta_red.txt`

### Observaciones Técnicas:
1. **Salto 1**: El router local (`Livebox`) responde correctamente.
2. **Saltos 6-30**: Aparecen como `no reply`. 
3. **Diagnóstico**: Es un filtrado de seguridad (Firewall) del ISP. 
   No afecta a la navegación real.

---

## 3. Verificación de Conectividad
Prueba de eco directa para confirmar latencia y estabilidad.

* **Comando**: `ping -c 4 8.8.8.8 > verificacion_red.txt`
* **Resultado**: `0% packet loss`. Conectividad total confirmada.

---

## 4. Gestión de Archivos
* **Comando**: `ls -l *.txt`
* **Resultado**: Informes generados con éxito en el directorio.
