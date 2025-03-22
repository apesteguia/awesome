local wibox = require("wibox")
local watch = require("awful.widget.watch")

local temp_text = wibox.widget({
	widget = wibox.widget.textbox,
})

local battery_widget = wibox.widget.background()
battery_widget:set_widget(temp_text)

watch("cat /sys/class/power_supply/BAT1/capacity", 120, function(widget, stdout, stderr, exitreason, exitcode)
	local text = stdout:gsub("\n", "") .. "%"
	temp_text:set_text(text)
end, battery_widget)

return battery_widget
