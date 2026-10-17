# Companion de pulsera — build familiar

Build personal (uso familiar, no comercial) de una app open source de datos de pulsera deportiva,
con extras propios y firma propia estable:

- **Tema "Porcelana"**: estilo claro adicional (Ajustes → Appearance → Light style → Porcelain).
- **Tensión arterial**: las lecturas de un tensiómetro real guardadas en Health Connect se importan
  al Lab Book de la app (Data Sources → Health Connect → Sync).
- **Tasker**: Tasker puede hacer vibrar la pulsera (con token) y recibe un aviso al acabar cada
  sincronización (Automations → Tasker; apagado de serie).
- **Coach IA con Claude**: Anthropic + Claude Opus 5.5 por defecto; el coach ve también la báscula y
  las comidas. Cada uno pega su propia clave en el móvil (nunca va dentro del APK).
- **Báscula** (p. ej. Hume vía Samsung Health → Health Connect): peso, grasa, masa magra, ósea, agua y
  metabolismo basal en una tarjeta de Health.
- **Comida por foto**: pestaña Comida; Claude estima calorías y macros (varias fotos, tipo de comida,
  día y porción comida), editables antes de guardar.
- **Mi día** en Hoy: peso de la báscula, agenda del calendario del móvil y Google Tasks de hoy.
- **Toda la app en español**, con el español de upstream repasado.
- **Auto-actualización**: cada versión nueva del proyecto original se reconstruye y firma aquí
  automáticamente. Si el build falla, no se publica nada — el móvil se queda en la última buena.

> Licencia: PolyForm Noncommercial 1.0.0 (heredada del proyecto original; ver LICENSE y NOTICE).
> El código upstream completo se conserva en la rama `mirror`. Los cambios propios viven como
> parches en `patches/`.

## Instalación (una vez por móvil, Android 8+)

1. Instala **Obtainium** (gestor de actualizaciones open source):
   descarga el APK desde https://github.com/ImranR98/Obtainium/releases (asset `app-release.apk`)
   y ábrelo. Acepta "instalar apps desconocidas" cuando Android lo pida.
2. En el móvil, toca este enlace (o pega la URL del repo en Obtainium → **Add App**):
   **[➕ Añadir a Obtainium](https://apps.obtainium.imranr.dev/redirect?r=obtainium://add/https://github.com/mompletvictor/strap-lab)**
   - Activa **"Instalar actualizaciones en segundo plano"** para esta app si tu Android es 12+.
   - Deja "Include prereleases" desactivado.
3. Toca **Install** en la versión más reciente. Listo: a partir de aquí se actualiza sola.
4. Si tenías instalada la app oficial de NOOP o la de otro fork: expórtate un backup dentro de esa
   app (Settings → Backup), **desinstálala** (la firma es distinta, solo esta primera vez) y
   restaura el backup en esta.

## Emparejar la pulsera (WHOOP 5.0)

1. Cierra la app oficial de WHOOP y en Ajustes → Bluetooth **olvida** la pulsera.
2. Da golpecitos firmes a la pulsera hasta ver las luces **azules**.
3. En la app: pantalla **Live** → **Scan & Connect** → elige tu pulsera → permite Bluetooth.
4. Verás el pulso en vivo. En Settings → Experimental puedes activar las métricas 5.0 (aproximadas).

## Estado del build

Workflow `sync-release`: comprueba upstream 2×/día, aplica los parches, compila, pasa tests y lint,
verifica la firma y publica. Un fallo abre un Issue en este repo y NO publica nada.

## Privacidad

La app (nombre en Google: **NOOP familia**) guarda todos los datos de salud en el propio móvil; no hay
servidor, cuenta ni telemetría de este proyecto. Solo sale algo del móvil cuando el usuario lo activa:

- **Google Tasks** (opcional): con el permiso de solo lectura `tasks.readonly`, la app consulta las
  tareas del usuario directamente a Google desde su móvil para mostrar las de hoy en la pantalla Hoy.
  No las guarda fuera del móvil, no las modifica, no las comparte con nadie y no las usa para nada más.
  El acceso se retira desde la app o en myaccount.google.com → Seguridad.
- **Calendario**: se lee del propio móvil; no se envía a ningún sitio.
- **Coach IA y comida por foto** (opcional): el resumen o la foto van a Anthropic con la clave del
  propio usuario, solo al pulsar el botón correspondiente.

El uso de la información recibida de las APIs de Google cumple la
[Política de Datos del Usuario de los Servicios de las APIs de Google](https://developers.google.com/terms/api-services-user-data-policy),
incluidos los requisitos de uso limitado. Contacto: mompletvictor@gmail.com.
