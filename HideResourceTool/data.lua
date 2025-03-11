-- Hide Resource Tool by jagoly

data:extend({
    {
        type = "selection-tool",
        name = "hide-resource-tool",
        icon = "__HideResourceTool__/graphics/tool.png",
        icon_size = 64,
        flags = { "only-in-cursor", "spawnable", "not-stackable" },
        subgroup = "tool",
        stack_size = 1,
        select = {
            mode = "any-entity",
            cursor_box_type = "entity",
            entity_filters = {}, -- populated in data-final-fixes.lua
            entity_filter_mode = "whitelist",
            border_color = { r = 1, g = 0, b = 0 },
            started_sound = { filename = "__core__/sound/deconstruct-select-start.ogg" },
            ended_sound = { filename = "__core__/sound/deconstruct-select-end.ogg" },
        },
        alt_select = {
            mode = "any-entity",
            cursor_box_type = "entity",
            entity_filters = {}, -- populated in data-final-fixes.lua
            entity_filter_mode = "whitelist",
            border_color = { r = 0, g = 1, b = 0 },
            started_sound = { filename = "__core__/sound/deconstruct-cancel-start.ogg" },
            ended_sound = { filename = "__core__/sound/deconstruct-cancel-end.ogg" },
        },
    },
    {
        type = "shortcut",
        name = "hide-resource-tool",
        action = "spawn-item",
        order = "f[hrt]",
        localised_name = { "item-name.hide-resource-tool" },
        icon = "__HideResourceTool__/graphics/shortcut-x56.png",
        icon_size = 56,
        small_icon = "__HideResourceTool__/graphics/shortcut-x24.png",
        small_icon_size = 24,
        item_to_spawn = "hide-resource-tool",
    },
})
