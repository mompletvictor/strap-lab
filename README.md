# Companion de pulsera — build familiar

Build personal (uso familiar, no comercial) de una app open source de datos de pulsera deportiva,
con dos extras propios y firma propia estable:

- **Tema "Porcelana"**: estilo claro adicional (Ajustes → Appearance → Light style → Porcelain).
- **Tensión arterial**: las lecturas de un tensiómetro real guardadas en Health Connect se importan
  al Lab Book de la app (Data Sources → Health Connect → Sync).
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
