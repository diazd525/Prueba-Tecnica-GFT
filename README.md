Prueba técnica (Playwright + Cucumber)

Esta solución busca implementar pruebas automatizadas usando Playwright + Cucumber + JavaScript

## 1. Proceso de Instalación

Es necesario contar con la instalación previa de las siguientes herramientas:
- Node.js instalado 
- Git
- IDE o VS 

### Paso a Paso

1. Clonar el repositorio con el siguiente comando:
git clone <URL_DEL_REPOSITORIO>

2. Ingresar al proyecto denominado
RETO TECNICO

3. Instalar las dependencias necesarias por medio del siguiente comando:
npm install

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

## 5. Estructura del proyecto 

El proyecto esta implementado con Playwright, Cucumber y JavaScript. se busca implementar buenas prácticas, por lo tanto, se utiliza el uso del patrón POM, uso de selectores robustos y hooks para tener un control de la navegación. 
Los reportes se generan a partir de un archivo. JSON

## 6. Evidencia de ejecución 

<img width="1915" height="995" alt="image" src="https://github.com/user-attachments/assets/34618eb5-57a0-46bf-96c5-7231723305ab" />
<img width="1915" height="995" alt="image" src="https://github.com/user-attachments/assets/34618eb5-57a0-46bf-96c5-7231723305ab" />


<img width="486" height="265" alt="image" src="https://github.com/user-attachments/assets/36a30388-4907-4668-bc8b-fe30441af4f2" />
<img width="486" height="265" alt="image" src="https://github.com/user-attachments/assets/36a30388-4907-4668-bc8b-fe30441af4f2" />

<img width="973" height="544" alt="image" src="https://github.com/user-attachments/assets/7707e4f9-f575-400b-bfcc-28614eed5b54" />
<img width="973" height="544" alt="image" src="https://github.com/user-attachments/assets/7707e4f9-f575-400b-bfcc-28614eed5b54" />




