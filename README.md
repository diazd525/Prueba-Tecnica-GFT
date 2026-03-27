### Prueba técnica: Playwright + Cucumber

Esta solución busca implementar pruebas automatizadas usando Playwright + Cucumber + JavaScript

## 1. Proceso de Instalación

Es necesario contar con la instalación previa de las siguientes herramientas:
- Node.js instalado 
- Git
- IDE

### Pasos de instalación 

1. Clonar el repositorio con el siguiente comando:
* git clone <URL_DEL_REPOSITORIO>

2. Ingresar al proyecto denominado
* RETO TECNICO

3. Instalar las dependencias necesarias por medio del siguiente comando:
* npm install

## 2. ¿Cómo ejecutar todos los test?

Para la ejecución de todos los test es necesario implementar cualquiera de los siguientes comando:
* npx cucumber-js
* npm run test
  
## 3. ¿Cómo ejecutar solo los @smoke?

Para la ejecución de solo los @smoke es necesario implementar el siguiente comando:
* npx cucumber-js --tags "@smoke"
  
## 4. ¿Cómo abrir el reporte HTML generado?

Para abrir el reporte HTML se puede por los siguientes comandos:
* npm run report
* npm run test:report (Esta opción ejecuta todos los escenarios y genera el reporte automáticamente)

El reporte HTML se genera en la carpeta /reports

## 5. Estructura del proyecto 

El proyecto está implementado utilizando Playwright, Cucumber y JavaScript, aplicando buenas prácticas de automatización de pruebas, mediante el uso de lenguaje Gherkin, lo que permite describir los escenarios de prueba de manera clara, legible.

Se ha estructurado el proyecto de forma modular, separando los archivos en features, steps, pages y support, lo que facilita el mantenimiento, escalabilidad y reutilización del código.

Se implementa el patrón Page Object Model (POM) para abstraer la lógica de interacción con la interfaz, mejorando la legibilidad y reduciendo la duplicación de código.

También se emplean selectores robustos, basados en atributos como `data-test`, lo que garantiza mayor estabilidad en las pruebas frente a cambios en la interfaz de usuario.

Los reportes de ejecución se generan a partir de un archivo JSON, el cual es transformado en un reporte HTML para facilitar la visualización de los resultados.

## 6. Evidencia de ejecución 

<img width="1915" height="995" alt="image" src="https://github.com/user-attachments/assets/34618eb5-57a0-46bf-96c5-7231723305ab" />

<img width="486" height="265" alt="image" src="https://github.com/user-attachments/assets/e199b46b-0276-4411-a440-1edcdf0a9696" />

<img width="973" height="544" alt="image" src="https://github.com/user-attachments/assets/7707e4f9-f575-400b-bfcc-28614eed5b54" />

## 7. Reto SQL 

El proyecto cuenta con una carpeta llamada **dataBase**, la cual contiene los queries asociados al reto de SQL.

La implementación de la base de datos se realizó utilizando **PostgreSQL 15**, y la base de datos se encuentra publica y accesible con el nombre "Spa".

Las credenciales necesarias para la conexión son las siguientes:

<img width="688" height="547" alt="image" src="https://github.com/user-attachments/assets/783acfc4-5a01-4424-8e2d-f89580a19952" />





