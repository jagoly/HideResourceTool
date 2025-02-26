-- Hide Resource Tool by jagoly

data:extend({
    { type = "resource-category", name = "hrt" },
})

local filters_hide = data.raw["selection-tool"]["hide-resource-tool"].select.entity_filters
local filters_reveal = data.raw["selection-tool"]["hide-resource-tool"].alt_select.entity_filters

local resources = {}

for _, resource in pairs(data.raw["resource"]) do
    resources[#resources+1] = {
        type = "resource",
        name = "hrt-" .. resource.name,
        localised_name = resource.localised_name or { "entity-name." .. resource.name },
        icon = resource.icon,
        icon_size = resource.icon_size,
        flags = { "placeable-neutral" },
        minable = {
            mining_time = 1.0,
            results = resource.minable.results,
            result = resource.minable.result,
        },
        category = "hrt",
        collision_mask = resource.collision_mask,
        collision_box = resource.collision_box,
        selection_box = resource.selection_box,
        stage_counts = { 1 },
        stages = {
            sheet = {
                filename = "__core__/graphics/empty.png",
                priority = "extra-high",
                size = 1,
                frame_count = 1,
                variation_count = 1,
            },
        },
        map_color = resource.map_color,
        hidden = true,
        hidden_in_factoriopedia = true,
    }
    filters_hide[#filters_hide+1] = resource.name
    filters_reveal[#filters_reveal+1] = "hrt-" .. resource.name
end

data:extend(resources)
