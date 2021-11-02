local lua_configs = { 
    'mappings', 
    'options',
    'packerInit',
    'pluginList',
    'theme',
    'utils'
}
for _, config in ipairs(lua_configs) do
    require(config)
end

local lua_plugin_configs = { 
    'nvim_lsp', 
    'nvim_cmp',
    'telescope',
    'nvim_treesitter',
    'luasnip',
    'gitsigns',
    'lualine'
}
for _, p_config in ipairs(lua_plugin_configs) do
    require('plugins/' .. p_config)
end
