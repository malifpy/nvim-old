require('impatient').enable_profile()

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
    'luasnip',
    'nvim_lsp', 
    'nvim_cmp',
    -- 'telescope',
    'nvim_treesitter',
    'gitsigns',
    'lualine',
    -- 'alpha_nvim',
    'nvim_tree'
}
for _, p_config in ipairs(lua_plugin_configs) do
    require('plugins/' .. p_config)
end
