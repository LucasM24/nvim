return {
  "L3MON4D3/LuaSnip",
  tag = "v2.*", -- or the latest release version
  config = function()
    -- Lazy-load snippets, i.e. only load when required, e.g. for a given filetype
    require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})
    require("luasnip").config.setup({ update_events = "TextChanged,TextChangedI" })
    require("luasnip").config.setup({ enable_autosnippets = true })
  end
}
