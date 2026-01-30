# Neovim Keymaps

Leader key: ESPACIO

## Neo-tree (Explorador de archivos)
- Espacio + E: Abrir/cerrar explorador de archivos
- Espacio + O: Enfocar explorador

## Telescope (Buscador)
- Espacio + F F: Buscar archivos en el proyecto
- Espacio + F G: Buscar texto dentro de archivos (grep)
- Espacio + F B: Ver lista de buffers/pestañas abiertas
- Espacio + F H: Buscar en la ayuda de Neovim
- Espacio + F O: Ver archivos recientemente abiertos
- Espacio + C F G: Buscar archivos en TODO el directorio HOME
- Espacio + C F R: Buscar archivos del sistema (requiere sudo)

## Bufferline (Pestañas)
- Tab: Ir a la siguiente pestaña
- Shift + Tab: Ir a la pestaña anterior
- Espacio + X: Cerrar pestaña actual
- Espacio + X (mayúscula): Cerrar todas las pestañas

## Ventanas (Navegación)
- Ctrl + H: Ir a ventana izquierda
- Ctrl + J: Ir a ventana abajo
- Ctrl + K: Ir a ventana arriba
- Ctrl + L: Ir a ventana derecha

## Ventanas (Redimensionar)
- Ctrl + Flecha Arriba: Aumentar altura de ventana
- Ctrl + Flecha Abajo: Disminuir altura de ventana
- Ctrl + Flecha Izquierda: Reducir ancho de ventana
- Ctrl + Flecha Derecha: Aumentar ancho de ventana

## Ventanas (Dividir)
- Espacio + S V: Dividir ventana verticalmente
- Espacio + S H: Dividir ventana horizontalmente

## Terminal
- Ctrl + T: Abrir/cerrar terminal inferior (toggle)
- Esc (en modo terminal): Salir a modo normal

## Trouble (Diagnósticos/Errores)
- Espacio + X X: Abrir/cerrar panel de todos los diagnósticos
- Espacio + X D: Diagnósticos solo del archivo actual
- Espacio + X L: Abrir lista de ubicaciones
- Espacio + X Q: Abrir quickfix list

## LSP (Inteligencia de código)
- G D: Ir a definición
- G D (mayúscula): Ir a declaración
- G R: Ir a todas las referencias
- G I: Ir a implementación
- K: Mostrar documentación/hover
- Espacio + R N: Renombrar símbolo
- Espacio + C A: Mostrar acciones de código
- [ D: Ir al error/warning anterior
- ] D: Ir al siguiente error/warning
- Espacio + F: Formatear código

## Mover líneas
- Alt + J: Mover línea actual hacia abajo (modo normal)
- Alt + K: Mover línea actual hacia arriba (modo normal)
- Alt + J: Mover selección hacia abajo (modo visual)
- Alt + K: Mover selección hacia arriba (modo visual)

## Búsqueda
- N: Siguiente resultado (centrado en pantalla)
- N (mayúscula): Resultado anterior (centrado en pantalla)

## Indentación (Modo visual)
- <: Reducir indentación (mantiene selección)
- >: Aumentar indentación (mantiene selección)

## Copiar/Pegar
- P (en modo visual): Pegar sin perder el clipboard

## Guardar y salir
- Espacio + W: Guardar archivo
- Ctrl + S: Guardar archivo (todos los modos)
- Espacio + Q: Salir de Neovim
- Espacio + Q (mayúscula): Salir forzado sin guardar

## Varios
- Espacio + H: Limpiar resaltado de búsqueda
- Espacio + A: Abrir dashboard/pantalla de inicio

## Git Signs
- Espacio + G P: Vista previa del cambio
- Espacio + G B: Ver quién modificó la línea (blame)
- Espacio + G R: Revertir cambios del hunk