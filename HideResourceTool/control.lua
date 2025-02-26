-- Hide Resource Tool by jagoly

local function on_player_selected_area(event)
    if event.item == "hide-resource-tool" then
        for _, resource in pairs(event.entities) do
            local name, position, amount = resource.name, resource.position, resource.amount
            resource.destroy()
            event.surface.create_entity({ name = "hrt-" .. name, position = position, amount = amount })
        end
    end
end

local function on_player_alt_selected_area(event)
    if event.item == "hide-resource-tool" then
        for _, resource in pairs(event.entities) do
            local name, position, amount = resource.name, resource.position, resource.amount
            resource.destroy()
            event.surface.create_entity({ name = string.sub(name, 5), position = position, amount = amount })
        end
    end
end

script.on_event(defines.events.on_player_selected_area, on_player_selected_area )
script.on_event(defines.events.on_player_alt_selected_area, on_player_alt_selected_area)
