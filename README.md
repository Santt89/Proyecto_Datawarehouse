## Proyecto DataWarehouse

Este proyecto tiene como objetivo crear un DataWarehouse a partir de una base de datos transaccional llamada TRADEProd utilizando SSIS. El DataWarehouse permitirá realizar análisis y generar informes basados en los datos de TRADEProd. Además, se incluye un tablero interactivo en Power BI para visualizar los datos de manera intuitiva y facilitar el análisis de la información.


## Escenario
La empresa LOGICS-TRADE tiene como objetivo comenzar a realizar un análisis de sus ventas y para
dicho análisis se ha decidido en conjunto, entre la dirección, la gerencia de ventas y el departamento de
sistemas, el diseño de un DataWarehouse para poder desarrollar posteriormente los reportes
requeridos.
LOGICS-TRADE posee un software de ventas que utiliza un motor de base de datos SQL Server en
plataforma Windows y que registra las operaciones en la base de datos “TRADEProd”. Posee licencias de
SQL Server en Windows y Oracle en Linux para más de un servidor ya que utiliza otras aplicaciones que
usan esas bases de datos, contando con DBAs con experiencia en ambas plataformas.

Teniendo en cuenta lo mencionado para nuestro DataWarehouse utilizaremos el motor de bases de datos Microsoft SQL Server.
Para el proceso de ETL, , optaremos por utilizar SQL Server Integration Services (SSIS) ya que la 
empresa utiliza un motor de base de datos SQL Server en plataforma Windows y SSIS 
es una herramienta que se integra a la perfección con SQL Server. Esto facilitara la 
implementación y la gestión del proyecto


## Requerimientos de Negocio
La dirección de la Empresa ha requerido el desarrollo de los siguientes reportes:

  - Clasificación de los productos por categoría.
    
  - Distribución de los clientes por zona (región, ciudad).
    
  - Tipo de cliente y su preferencia sobre los productos (al menos por edad)
    
  - Relación entre las ventas en $ por vendedor y la cantidad de horas de capacitación que reciben (tipo de capacitación y horas de capacitación).
    
  - Ventas mensuales y anuales (expresadas tanto en $ como en dólares) por categoría de producto.


## Archivos incluidos: 

`TRADEProd_29032023.bank` : backup de la base de datos transaccional TRADEProd.

`Modelo estrella DW` :  Modelo estrella del Data Warehouse, proporcionando una representación visual de la estructura de tus tablas y relaciones.

`Creacion Staging` : Archivo SQL que contiene el script para crear la base de datos de nuestra Staging.

`Creacion DW` :  Archivo SQL que contiene el script para crear la base de datos de nuestro DataWarehouse.

`Cotizacion_BNA` (excel de cotización del dolar): Archivo Excel que contiene información sobre las cotizaciones del dólar utilizadas en el proyecto. Este archivo se utilizará para obtener los detalles de las ventas en dólares.

`Carpeta SSIS` (proceso ETL): contiene el flujo de trabajo y las transformaciones necesarias para extraer, transformar y cargar los datos desde TRADEProd al Data Warehouse.

`TABLERO_DW` (Power BI): Archivo de Power BI que muestra un tablero o informe interactivo basado en los datos del Data Warehouse.



## Instrucciones de uso

1. Descargar o clonar el repositorio en tu máquina local.

2. Levantar el backup de la base de datos transaccional `TRADEProd_29032023.bank` en SQL Server.

3. Ejecutar el archivo `Creacion Staging` en SQL Server.

4. Ejecutar el archivo `Creacion DW` en SQL Server.

6. Abrir el archivo SSIS en SQL Server Integration Services y configurar las conexiones de origen y destino según tu entorno.

7. Ejecutar el flujo de trabajo ETL en el archivo SSIS para transferir los datos desde TRADEProd al Data Warehouse.

8. Abrir el archivo `TABLERO_DW` en Power BI Desktop (chequear que las conexiones de datos apunten al DataWarehouse)











