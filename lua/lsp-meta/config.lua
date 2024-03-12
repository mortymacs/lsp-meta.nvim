local default = {
    display = {
        declaration = true,
        reference = true,
        implementation = true,
        status = {
            is_dead = true,
            has_recursive = true,
            has_error = true,
        },
    },
}

function SetDefaults(opts)
    if not opts["display"] then
        return default
    end

    for key in pairs(default["display"]) do
        if opts["display"][key] then
           default["display"][key] = opts["display"][key]
        end
    end

    return default
end
