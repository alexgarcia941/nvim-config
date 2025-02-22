local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
        'ts_ls',
        'eslint',
        'pyright',
        'html', 
        'cssls',    --css
        'clangd',   --c and c++
        'texlab',   --LaTeX
        'gopls',     --Go
        'templ'
    },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
})
