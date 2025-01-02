-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})

-- Oil
vim.keymap.set("n", "-", "<cmd>Oil<CR>")

-- Neogit
vim.keymap.set("n", "<leader>gs", vim.cmd.Neogit)

-- LSP
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>")
vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>")
vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>")
