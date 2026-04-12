# Alquiler de Herramientas — Base de Datos

Base de datos relacional para la gestión de un sistema de alquiler de herramientas con múltiples sucursales, desarrollada en MySQL por QueryLab.

---

## Estructura del repositorio

```


├── Documentos/
│   ├── documentacion_sql.pdf      # Documentación de la base de datos
│   └── dashboard_db.pbix          # Dashboard desarrollado en Power BI
├── SQL/
│   ├── creacion_objetos.sql       # Estructura (Tablas/Vistas) y Lógica (Funciones/Procedures/Triggers)
│   └── carga_instancias.sql       # Datos iniciales (Seed) para el sistema
└── README.md                      # Instrucciones generales del proyecto

```

---

## Cómo ejecutar

Para poner en marcha la base de datos, se deben ejecutar los scripts en el siguiente orden:
1. `SQL/creacion_objetos.sql`
2. `SQL/carga_instancias.sql`

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
| `fact_alquiler` | Tabla de hechos (BI), creada específicamente para optimizar las consultas de Business Intelligence |

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
- 200 unidades de inventario
- 40 alquileres 
- 10 pagos y 10 reseñas

---
### 🔗 Enlace de la presentación

* [Presentación del proyecto](https://querylab-zbhvy85.gamma.site/)
---
## Herramientas y Tecnologías utilizadas

* En draw.io se desarrolló el DER.
* Se utilizó MySQL Workbench para desarrollar la base de datos.
* La documentación fue realizada en Microsoft Word.
* La conversión de formato WORD a PDF fue posible gracias a la web de ilovepdf.com.
* Para realizar la presentación se utilizó Gamma AI.
* El Dashboard se realizó en Power BI.
* El README se hizo en Visual Studio Code.
* Se utilizó Git Bash para ejercutar comandos de Git.