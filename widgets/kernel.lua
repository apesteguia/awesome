local wibox = require("wibox")
local watch = require("awful.widget.watch")

local temp_text = wibox.widget({
	widget = wibox.widget.textbox,
})

local temp_widget = wibox.widget.background()
temp_widget:set_widget(temp_text)

watch("weather", 240, function(widget, stdout, stderr, exitreason, exitcode)
	-- Reemplazar los saltos de línea con espacios
	local clean_output = stdout:gsub("\n", " ")
	temp_text:set_text(clean_output)
end, temp_widget)

return temp_widget
