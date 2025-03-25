require("mason-lspconfig").setup_handlers({
  -- ...configs for other LSP

  ["tsserver"] = function()
    -- ↓先述
    local vue_typescript_plugin = require("mason-registry").get_package("vue-language-server"):get_install_path()
      .. "/node_modules/@vue/language-server/node_modules/@vue/typescript-plugin"

    lspconfig["tsserver"].setup({
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
