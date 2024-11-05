# Base de Datos Gasimbas

Este repositorio contiene los scripts SQL necesarios para implementar el sistema de gestión de la empresa de gaseosas Gasimbas.

## Estructura del Repositorio

El proyecto está dividido en dos archivos principales:

### 1. `creacionDBgasimbas.sql`
- Contiene la estructura base de la base de datos
- Define todas las tablas necesarias
- Establece las relaciones y claves foráneas
- Implementa las restricciones de integridad

### 2. `insertsyFuncionesGasimbas.sql`
- Contiene el minado de información (datos de prueba)
- Implementa las funciones de verificación:
  * Verificación de stock
  * Control de pagos pendientes
- Incluye procedimientos almacenados para:
  * Gestión de historiales de venta
  * Control de rutas de distribución
- Contiene casos de prueba comentados

## Instrucciones de Uso

1. Ejecutar primero `database_creation.sql` para crear la estructura de la base de datos
2. Posteriormente ejecutar `data_and_functions.sql` para poblar la base de datos y crear los objetos necesarios

## Importante
Antes de ejecutar los scripts, asegurarse de tener los permisos necesarios en MySQL/MariaDB para crear bases de datos y objetos.
