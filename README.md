# Neovim Config
Configuración completa de Neovim con:
- lazy.nvim
- LSP
- Mason
- Autocompletado
- Treesitter
- Git

## Requisitos

### Windows 11
- Neovim ≥ 0.10 (recomendado 0.11)
- Git
- Node.js (para LSPs JS/PHP)

## Instalación en Windows

### 1. Instalar Neovim
Descargar desde:
https://neovim.io

Agregar `nvim` al PATH.

### 2. Clonar configuración

```powershell
mkdir $env:LOCALAPPDATA\nvim
cd $env:LOCALAPPDATA\nvim
git clone git@github.com:OscarZarcoG/nvim-config.git .

