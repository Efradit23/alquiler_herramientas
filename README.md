# Alquiler de Herramientas — Base de Datos

Base de datos relacional para la gestión de un sistema de alquiler de herramientas con múltiples sucursales, desarrollada en MySQL.

---

## Estructura del repositorio

```
├── estructura.sql   # DDL: tablas, vistas, funciones, triggers y stored procedures
├── datos.sql        # DML: inserción de datos de prueba
└── README.md
```

---

## Cómo ejecutar

Correr los archivos **en este orden**:

```sql
-- 1. Primero la estructura
source estructura.sql

-- 2. Luego los datos
source datos.sql

---

 ## Tablas

| Tabla | Descripción |
|---|---|
| `sucursal` | Sucursales donde se gestionan las herramientas |
| `categorias` | Categorías de herramientas (construcción, electricidad, etc.) |
| `herramientas` | Catálogo de herramientas con precio por día |
| `inventario` | Unidades físicas de cada herramienta por sucursal |
| `clientes` | Datos de los clientes |
| `alquiler` | Registro de alquileres por cliente |
| `detalle_alquiler` | Herramientas incluidas en cada alquiler |
| `pagos` | Pagos asociados a cada alquiler |
| `mantenimiento` | Historial de mantenimientos del inventario |
| `resenia` | Reseñas y calificaciones de los clientes |

---

 ## Vistas

| Vista | Descripción |
|---|---|
| `vista_ingresos_alquiler` | Ingresos generados por cada alquiler |
| `vista_herramientas_populares` | Herramientas más veces alquiladas |
| `vista_estado_inventario` | Cantidad de unidades por estado (disponible / alquilado / mantenimiento) |
| `vista_clientes_frecuentes` | Clientes ordenados por cantidad de alquileres |
| `vista_calificaciones` | Promedio general de calificaciones |

---

## Funciones

| Función | Descripción |
|---|---|
| `dias_alquiler(fecha_inicio, fecha_fin)` | Devuelve la cantidad de días entre dos fechas |
| `calcular_total(precio, dias)` | Calcula el total aplicando 10% de descuento si supera los 5 días |
| `dias_ultimo_alq(cliente_id)` | Devuelve los días transcurridos desde el último alquiler del cliente |

---

## Triggers

| Trigger | Tabla | Descripción |
|---|---|---|
| `verificar_disponibilidad` | `detalle_alquiler` | Impide alquilar una herramienta que esté en estado `alquilado` o `mantenimiento` |
| `validar_resenia` | `resenia` | Impide reseñar un alquiler que no esté en estado `finalizado` |

---

## Stored Procedures

| Procedure | Descripción |
|---|---|
| `crear_alquiler(cliente_id, fecha_inicio, fecha_fin, precio)` | Registra un nuevo alquiler en estado `activo` |
| `finalizar_alquiler(id_alquiler)` | Cambia el estado de un alquiler de `activo` a `finalizado` |

---

## Datos de prueba

- 100 clientes
- 5 sucursales
- 8 categorías y 32 herramientas
- 200 unidades de inventario (generadas dinámicamente)
- 40 alquileres (30 finalizados, 10 activos)
- 10 pagos y 10 reseñas
