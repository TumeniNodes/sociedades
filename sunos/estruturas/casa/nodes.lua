--[[
	Mod Sunos para Minetest
	Copyright (C) 2017 BrunoMine (https://github.com/BrunoMine)
	
	Recebeste uma cópia da GNU Lesser General
	Public License junto com esse software,
	se não, veja em <http://www.gnu.org/licenses/>. 
	
	Nodes para criar fundamentos
  ]]

-- Tradução de strings
local S = sunos.S


-- Fundamento de casa pequena
minetest.register_node("sunos:fundamento_casa_pequena", {
	description = S("Fundamento Suno de Casa Pequena"),
	tiles = {"default_tree_top.png^sunos_fundamento.png", "default_tree_top.png", "default_tree.png"},
	inventory_image = "sunos_inv_fundamento.png^sunos_inv_fundamento_casa.png",
	wield_image = "sunos_inv_fundamento.png^sunos_inv_fundamento_casa.png",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	stack_max = 1,
	
	-- Colocar uma casa
	on_place = function(itemstack, placer, pointed_thing)
		
		sunos.criar_caixa_de_area(pointed_thing.under, 2+1)
		
		local r = sunos.estruturas.casa.construir(pointed_thing.under, 2, nil, true, sunos.estruturas.casa.gerar_itens_repo["2"](), true)
		if r == true then
			
			-- Coloca rua em torno
			sunos.colocar_rua(pointed_thing.under, 2)
			
			-- Retorna mensagem de montagem concluida
			minetest.chat_send_player(placer:get_player_name(), S("Casa construida"))
			itemstack:take_item()
			return itemstack
			
		else
			-- Retorna mensagem de falha
			minetest.chat_send_player(placer:get_player_name(), r)
			return itemstack
		end
	end,
})

-- Fundamento de casa mediana
minetest.register_node("sunos:fundamento_casa_mediana", {
	description = S("Fundamento Suno de Casa Mediana"),
	tiles = {"default_tree_top.png^sunos_fundamento.png", "default_tree_top.png", "default_tree.png"},
	inventory_image = "sunos_inv_fundamento.png^sunos_inv_fundamento_casa.png",
	wield_image = "sunos_inv_fundamento.png^sunos_inv_fundamento_casa.png",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	stack_max = 1,
	
	-- Colocar uma casa
	on_place = function(itemstack, placer, pointed_thing)
		
		sunos.criar_caixa_de_area(pointed_thing.under, 3+1)
		
		local r = sunos.estruturas.casa.construir(pointed_thing.under, 3, nil, true, sunos.estruturas.casa.gerar_itens_repo["3"](), true)
		if r == true then
			
			-- Coloca rua em torno
			sunos.colocar_rua(pointed_thing.under, 3)
			
			-- Retorna mensagem de montagem concluida
			minetest.chat_send_player(placer:get_player_name(), S("Casa construida"))
			itemstack:take_item()
			return itemstack
			
		else
			-- Retorna mensagem de falha
			minetest.chat_send_player(placer:get_player_name(), r)
			return itemstack
		end
	end,
})



-- Fundamento de casa grande
minetest.register_node("sunos:fundamento_casa_grande", {
	description = S("Fundamento Suno de Casa Grande"),
	tiles = {"default_tree_top.png^sunos_fundamento.png", "default_tree_top.png", "default_tree.png"},
	inventory_image = "sunos_inv_fundamento.png^sunos_inv_fundamento_casa.png",
	wield_image = "sunos_inv_fundamento.png^sunos_inv_fundamento_casa.png",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	stack_max = 1,
	
	-- Colocar uma casa
	on_place = function(itemstack, placer, pointed_thing)
		
		sunos.criar_caixa_de_area(pointed_thing.under, 4+1)
		
		local r = sunos.estruturas.casa.construir(pointed_thing.under, 4, nil, true, sunos.estruturas.casa.gerar_itens_repo["4"](), true)
		if r == true then
			
			-- Coloca rua em torno
			sunos.colocar_rua(pointed_thing.under, 4)
			
			-- Retorna mensagem de montagem concluida
			minetest.chat_send_player(placer:get_player_name(), S("Casa construida"))
			itemstack:take_item()
			return itemstack
			
		else
			-- Retorna mensagem de falha
			minetest.chat_send_player(placer:get_player_name(), r)
			return itemstack
		end
	end,
})


