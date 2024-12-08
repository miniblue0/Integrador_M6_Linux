# Integrador_M6_Linux
## Requisitos Previos
- Sistema Operativo: Ubuntu o cualquier distribución basada en Debian.
- Acceso de administrador: Necesario para instalar dependencias.
## Instalación
 ### Paso 1: Instalar iSpeak
  Ejecuta el siguiente comando para instalar la herramienta de síntesis de voz iSpeak:
  ```bash
    sudo apt install ispeak
  ```
 ### Paso 2: Verificar el Idioma Español
  Confirma que iSpeak soporta el idioma español ejecutando:
    ```bash
    ispeak -v es "instalado correctamente" 
    ```
  Si el mensaje se pronuncia en español, la instalacion es correcta.

 ### Paso 3: Descargar el Script
  Descarga el archivo recordatorio.sh desde el repositorio de GitHub:

  Accede al repositorio ```https://github.com/miniblue0/Integrador_M6_Linux.git```
  Descarga el script utilizando la interfaz web 

 ### Paso 4: Configurar Permisos
  Hacer que el script sea ejecutable con:
    ```bash
    chmod +x recordatorio.sh
    ```
## Uso de la Herramienta
 ### Paso 1: Ejecutar el Script
  Ejecuta el script desde la terminal con:
    ```bash
    ./recordatorio.sh
    ```
 ### Paso 2: Configurar un Recordatorio
  - Mensaje del Recordatorio: Ingresa el texto que quieres que se anuncie.
  - Tiempo de Espera: Especifica el tiempo en segundos antes de que el recordatorio se active.
 ### Paso 3: Confirmación y Anuncio
  - El script te indicará el tiempo de espera y usará iSpeak para anunciar el mensaje al finalizar.
 ### Paso 4: Programar Múltiples Recordatorios
  - Después de que se anuncie un recordatorio, el script te preguntará si deseas configurar otro. Escribe s para continuar o n para salir.

## Ejemplo de Uso
  - Inicia el script:
  ```bash
  ./recordatorio.sh
  ```
  Ingresa:
  Mensaje: "Hora de tomar agua"
  Tiempo: 60 (segundos)
  Espera 1 minuto, y escucharás el anuncio: "Hora de tomar agua".
