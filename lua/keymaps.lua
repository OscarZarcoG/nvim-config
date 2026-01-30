local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Neo-tree
keymap("n", "<leader>e", ":Neotree toggle<CR>", opts)
keymap("n", "<leader>o", ":Neotree focus<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fo", ":Telescope oldfiles<CR>", opts)

keymap("n", "<leader>cfg", function()
  require("telescope.builtin").find_files({
    prompt_title = "Buscar en HOME (~)",
    cwd = vim.fn.expand("~"),
    hidden = true,
  })
end, opts)

keymap("n", "<leader>cfr", function()
  require("telescope.builtin").find_files({
    prompt_title = "Buscar archivos del sistema (root)",
    cwd = "/",
    hidden = true,
  })
end, opts)

-- Bufferline
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<leader>x", ":bdelete<CR>", opts)
keymap("n", "<leader>X", ":bufdo bd<CR>", opts)

-- Navegación entre ventanas
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

-- Terminal
local terminal_bufnr = nil

keymap("n", "<C-t>", function()
  if terminal_bufnr and vim.api.nvim_buf_is_valid(terminal_bufnr) then
    local win = vim.fn.bufwinid(terminal_bufnr)
    if win ~= -1 then
      vim.cmd("close")
    else
      vim.cmd("botright split | buffer " .. terminal_bufnr)
      vim.cmd("resize 15")
    end
  else
    vim.cmd("botright split | resize 15 | terminal")
    terminal_bufnr = vim.api.nvim_get_current_buf()
  end
end, opts)

keymap("t", "<Esc>", [[<C-\><C-n>]], opts)

-- Trouble
keymap("n", "<leader>xx", ":Trouble diagnostics toggle<CR>", opts)
keymap("n", "<leader>xd", ":Trouble diagnostics toggle filter.buf=0<CR>", opts)
keymap("n", "<leader>xl", ":Trouble loclist toggle<CR>", opts)
keymap("n", "<leader>xq", ":Trouble quickfix toggle<CR>", opts)

-- LSP
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

-- Mover líneas
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Búsqueda centrada
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Indentación visual
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Pegar sin romper clipboard
keymap("v", "p", '"_dP', opts)

-- Guardar / salir
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>Q", ":qa!<CR>", opts)
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<Esc>:w<CR>a", opts)
keymap("v", "<C-s>", "<Esc>:w<CR>", opts)

-- Extras
keymap("n", "<leader>h", ":nohlsearch<CR>", opts)
keymap("n", "<leader>a", ":Alpha<CR>", opts)

-- GitSigns
keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", opts)
keymap("n", "<leader>gb", ":Gitsigns blame_line<CR>", opts)
keymap("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", opts)