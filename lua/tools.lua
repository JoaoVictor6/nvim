vim.cmd([[ let extension = expand('%:e') ]]) --variavel de ambiente da API

function get_extension( var ) --recebe o argumento para a variável que queremos
	return vim.api.nvim_get_var( var ) -- retorna a variavel
end

local ext = get_extension("extension") --dizemos qual o nome da variável que queremos

print("A extensão desse arquivo é:" .. ext) --usamos a extensão como quisermos
