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

require('plugins/*')
