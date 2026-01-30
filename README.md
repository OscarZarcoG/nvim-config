# Neovim Config

Configuración completa de Neovim con LSP, autocompletado, Git y más.

## Características

- lazy.nvim como gestor de plugins
- LSP con Mason
- Autocompletado con nvim-cmp
- Telescope para búsqueda
- Neo-tree como explorador de archivos
- GitSigns para integración con Git
- Terminal integrado
- Sintaxis y diagnósticos con Treesitter
- Autopairs, comentarios y surround
- TODO comments
- Flash para navegación rápida
- Which-key para ayuda de atajos
- Colorizer para previsualización de colores
- Indent blankline para guías visuales

## Requisitos

### Windows 11
- Neovim mayor o igual a 0.10 (recomendado 0.11)
- Git
- Node.js (para LSPs de JavaScript/PHP)
- Ripgrep (para Telescope live_grep)
- Un terminal moderno (Windows Terminal, Alacritty, etc.)

### Linux/macOS
- Neovim mayor o igual a 0.10
- Git
- Node.js
- Ripgrep
- GCC o Clang (para compilar Treesitter)

## Instalación

### Windows

#### 1. Instalar Neovim
Descargar desde: https://neovim.io

Agregar nvim al PATH.

#### 2. Instalar Ripgrep
Abrir PowerShell y ejecutar:

winget install BurntSushi.ripgrep.MSVC

#### 3. Clonar configuración
Abrir PowerShell y ejecutar:

mkdir $env:LOCALAPPDATA\nvim
cd $env:LOCALAPPDATA\nvim
git clone git@github.com:OscarZarcoG/nvim-config.git .

#### 4. Abrir Neovim
Ejecutar:

nvim

Esperar a que lazy.nvim instale todos los plugins automáticamente.

#### 5. Instalar LSPs
Abrir Neovim y ejecutar:

:Mason

Los LSPs configurados se instalarán automáticamente.

### Linux/macOS

#### 1. Instalar Neovim

Ubuntu/Debian:
sudo apt install neovim

Arch:
sudo pacman -S neovim

macOS:
brew install neovim

#### 2. Instalar dependencias

Ubuntu/Debian:
sudo apt install ripgrep nodejs npm

Arch:
sudo pacman -S ripgrep nodejs npm

macOS:
brew install ripgrep node

#### 3. Clonar configuración

mkdir -p ~/.config/nvim
cd ~/.config/nvim
git clone git@github.com:OscarZarcoG/nvim-config.git .

#### 4. Abrir Neovim

nvim

Los plugins se instalarán automáticamente.

## Estructura del proyecto

nvim/
├── init.lua
├── lua/
│   ├── plugins.lua
│   ├── keymaps.lua
│   ├── options.lua
│   ├── lsp-config.lua
│   └── cmp-config.lua
└── README.md

## Solución de problemas

### Los plugins no se instalan
1. Cerrar Neovim completamente
2. Ejecutar: :Lazy sync
3. Reiniciar Neovim

### El LSP no funciona
1. Verificar que Mason esté instalado: :Mason
2. Instalar manualmente el LSP necesario
3. Reiniciar Neovim

### Telescope no encuentra archivos
1. Verificar que ripgrep esté instalado: rg --version
2. Instalar ripgrep según tu sistema operativo

### Error al compilar Treesitter
1. Instalar compilador de C (GCC o Clang)
2. En Windows: Instalar Visual Studio Build Tools
3. Ejecutar: :TSUpdate

## Actualizar la configuración

En Linux/macOS:
cd ~/.config/nvim
git pull

En Windows:
cd $env:LOCALAPPDATA\nvim
git pull

Luego abrir Neovim y ejecutar: :Lazy sync

## Plugins incluidos

### Esenciales
- lazy.nvim: Gestor de plugins
- gruvbox.nvim: Tema de colores
- nvim-web-devicons: Iconos

### Interfaz
- lualine.nvim: Barra de estado
- bufferline.nvim: Pestañas de buffers
- alpha-nvim: Dashboard de inicio
- noice.nvim: Mejora de UI
- dressing.nvim: Mejora inputs/selects
- which-key.nvim: Ayuda de teclas

### Navegación
- neo-tree.nvim: Explorador de archivos
- telescope.nvim: Búsqueda fuzzy
- leap.nvim: Navegación rápida
- flash.nvim: Saltos rápidos
- neoscroll.nvim: Scroll suave

### LSP y Autocompletado
- nvim-lspconfig: Configuración LSP
- mason.nvim: Instalador de LSP
- mason-lspconfig.nvim: Integración Mason-LSP
- nvim-cmp: Autocompletado
- cmp-nvim-lsp: Fuente LSP para cmp
- cmp-buffer: Fuente buffer para cmp
- cmp-path: Fuente path para cmp
- LuaSnip: Motor de snippets
- friendly-snippets: Colección de snippets

### Edición
- nvim-autopairs: Cierre automático de pares
- Comment.nvim: Comentar código
- nvim-surround: Manipular delimitadores
- indent-blankline.nvim: Guías de indentación

### Git
- gitsigns.nvim: Integración con Git

### Utilidades
- nvim-colorizer.lua: Previsualización de colores
- todo-comments.nvim: Resalta TODOs
- trouble.nvim: Lista de diagnósticos
- vim-illuminate: Resalta palabras iguales
- barbecue.nvim: Breadcrumbs
- nvim-navic: Navegación de código

## LSPs configurados por defecto

- lua_ls: Lua
- ts_ls: TypeScript/JavaScript
- intelephense: PHP
- html: HTML
- cssls: CSS
- jsonls: JSON
- eslint: ESLint

Puedes agregar más LSPs desde Mason con :Mason

## Personalización

### Cambiar tema
Editar lua/plugins.lua y cambiar la línea:

vim.cmd.colorscheme("gruvbox")

### Agregar más LSPs
Editar lua/plugins.lua en la sección mason-lspconfig y agregar el LSP deseado a ensure_installed.

### Modificar keymaps
Editar lua/keymaps.lua según tus preferencias.

## Créditos

Configuración creada por Oscar Zarco
GitHub: github.com/OscarZarcoG