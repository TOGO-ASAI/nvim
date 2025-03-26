require("mason-lspconfig").setup_handlers({
  -- ... configs for other LSP

  ["ts_ls"] = function()
    local vue_typescript_plugin = require("mason-registry")
      .get_package("vue-language-server")
      :get_install_path()
      .. "/node_modules/@vue/typescript-plugin"

    require("lspconfig")["ts_ls"].setup({
      init_options = {
        plugins = {
          {
            name = "@vue/typescript-plugin",
            location = vue_typescript_plugin,
            languages = { "javascript", "typescript", "vue" },
          },
        },
      },
    })
  end,
})

