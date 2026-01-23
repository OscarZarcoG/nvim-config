local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Neo-tree (explorador de archivos)
keymap("n", "<leader>e", ":Neotree toggle<CR>", opts)
keymap("n", "<leader>o", ":Neotree focus<CR>", opts)

-- Telescope (buscador)
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fo", ":Telescope oldfiles<CR>", opts)

-- Buscadores globales (TODO el sistema)
keymap("n", "<leader>cfg", function()
    require('telescope.builtin').find_files({
        prompt_title = "Buscar en HOME (~)",
        cwd = vim.fn.expand("~"),
        hidden = true,
    })
end, opts)

keymap("n", "<leader>cfr", function()
    require('telescope.builtin').find_files({
        prompt_title = "Buscar archivos del sistema (root)",
        cwd = "/",
        hidden = true,
    })
end, opts)

-- Bufferline (navegar pestañas)
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<leader>x", ":bdelete<CR>", opts)
keymap("n", "<leader>X", ":bufdo bd<CR>", opts)

-- Navegar entre ventanas
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Redimensionar ventanas
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Dividir ventanas
keymap("n", "<leader>sv", ":vsplit<CR>", opts)
keymap("n", "<leader>sh", ":split<CR>", opts)

-- Trouble (panel de diagnósticos)
keymap("n", "<leader>xx", ":Trouble diagnostics toggle<CR>", opts)
keymap("n", "<leader>xd", ":Trouble diagnostics toggle filter.buf=0<CR>", opts)
keymap("n", "<leader>xl", ":Trouble loclist toggle<CR>", opts)
keymap("n", "<leader>xq", ":Trouble quickfix toggle<CR>", opts)

-- LSP (cuando estés en un archivo con LSP activo)
keymap("n", "gd", vim.lsp.buf.definition, opts)
keymap("n", "gD", vim.lsp.buf.declaration, opts)
keymap("n", "gr", vim.lsp.buf.references, opts)
keymap("n", "gi", vim.lsp.buf.implementation, opts)
keymap("n", "K", vim.lsp.buf.hover, opts)
keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
keymap("n", "[d", vim.diagnostic.goto_prev, opts)
keymap("n", "]d", vim.diagnostic.goto_next, opts)
keymap("n", "<leader>f", vim.lsp.buf.format, opts)

-- Mover líneas arriba/abajo
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Mantener centrado al buscar
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Mejor indentación en modo visual
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Pegar sin perder el clipboard
keymap("v", "p", '"_dP', opts)

-- Guardar y salir
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>Q", ":qa!<CR>", opts)

-- Guardar con Ctrl+S
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<Esc>:w<CR>a", opts)
keymap("v", "<C-s>", "<Esc>:w<CR>", opts)

-- Limpiar búsqueda resaltada
keymap("n", "<leader>h", ":nohlsearch<CR>", opts)

-- Alpha (dashboard)
keymap("n", "<leader>a", ":Alpha<CR>", opts)

-- Git signs (si usas gitsigns)
keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", opts)
keymap("n", "<leader>gb", ":Gitsigns blame_line<CR>", opts)
keymap("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", opts)
