
KOBRA DUI (TriggerFinder Input Enabled)

This ZIP contains updated:
 - ui.js (with REAL input-field support)
 - style.css (input styles)
 - index.html (container)

Required Lua additions:

RegisterNUICallback("ui_input_update", function(data, cb)
    local index = tonumber(data.index)
    if CurrentMenu and CurrentMenu[index] then
        CurrentMenu[index].value = data.value
    end
    cb(true)
end)

RegisterNUICallback("ui_input_enter", function(data, cb)
    local index = tonumber(data.index)
    if CurrentMenu and CurrentMenu[index] then
        local el = CurrentMenu[index]
        if el.onEnter then
            pcall(el.onEnter, el.value)
        end
    end
    cb(true)
end)

Place these files into:
resource/ui/
