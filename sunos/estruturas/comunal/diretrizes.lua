--[[
	Mod Sunos para Minetest
	Copyright (C) 2017 BrunoMine (https://github.com/BrunoMine)
	
	Recebeste uma cópia da GNU Lesser General
	Public License junto com esse software,
	se não, veja em <http://www.gnu.org/licenses/>. 
	
	Diretrizes da casa comunal
  ]]

sunos.estruturas.comunal.var = {}

-- Nodes estruturais
sunos.estruturas.comunal.var.nodes_estruturais = {
	-- Palha
	"farming:straw", 
	"stairs:stair_straw", 
	"stairs:slab_straw", 
	-- Madeiras
	"default:wood", 
	"default:fence_wood", 
	"stairs:stair_wood",
	-- Pedrosos
	"default:cobble", 
	"stairs:stair_cobble",
	"walls:cobble",
	"default:stonebrick",
	"default:furnace",
	"default:furnace_active",
	-- Moveis domesticos
	"vessels:shelf",
	"default:bookshelf",
	"sunos:bancada_nodrop",
	"sunos:bancada_de_trabalho_nodrop",
	-- Vidro
	"xpanes:pane",
	"xpanes:pane_flat",
	-- Portas
	"doors:door_wood_a",
	"doors:door_wood_b",
	"doors:gate_wood_closed",
	"doors:gate_wood_open",
	-- Iluminação
	"default:torch",
	"default:torch_wall",
	"default:torch_ceiling"
}

-- Tabela do menu da casa comunal 
sunos.estruturas.comunal.var.tb_menu_comunal = {
	-- Casas
	[sunos.S("Casa Pequena")] = { -- Nome do items
		-- Texto descritivo do item
		desc = sunos.S("Aumenta um pouco a quantidade de moradores da vila"),
		-- População necessaria
		pop = 0, 
		-- Item a receber (apenas 1 item e 1 unidade)
		item_add = "sunos:fundamento_casa_pequena", 
		-- Itens a pagar (de 1 a 14 itens diferentes de qualquer quantidade) 
		item_rem = {"default:dirt"} 
	},
	[sunos.S("Casa Mediana")] = {
		desc = sunos.S("Aumenta a quantidade de moradores da vila"),
		pop = 5,
		item_add = "sunos:fundamento_casa_mediana", 
		item_rem = {"default:tree 25", "default:cobble 30", "default:stonebrick 25", "xpanes:pane_flat 15", "default:torch 10", "farming:straw 20"}
	},
	[sunos.S("Casa Grande")] = {
		desc = sunos.S("Aumenta bastante a quantidade de moradores da vila"),
		pop = 5,
		item_add = "sunos:fundamento_casa_grande", 
		item_rem = {"default:tree 40", "default:cobble 45", "default:stonebrick 35", "xpanes:pane_flat 20", "default:torch 15", "farming:straw 25"}
	},
	-- Kit Reparador
	[sunos.S("Kit Reparador")] = {
		desc = sunos.S("Esse Kit pode ser usado para reconstruir uma estrutura da vila dos Sunos"),
		pop = 5,
		item_add = "sunos:kit_reparador", 
		item_rem = {"default:tree 20", "default:cobble 20", "wool:yellow 5", "xpanes:pane_flat 15", "farming:straw 20"}
	},
	-- Fundamento de Loja
	[sunos.S("Feirinha")] = {
		desc = sunos.S("Uma feirinha simples para trocar itens"),
		pop = 7,
		item_add = "sunos:fundamento_loja", 
		item_rem = {"default:tree 10", "default:cobble 20", "default:torch 4", "farming:straw 15"}
	},
}