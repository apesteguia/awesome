local wibox = require("wibox")
local watch = require("awful.widget.watch")

local temp_text = wibox.widget({
	widget = wibox.widget.textbox,
})

local temp_widget = wibox.widget.background()
temp_widget:set_widget(temp_text)

watch('date +"%A %d de %B, %H:%M:%S"', 1, function(widget, stdout, stderr, exitreason, exitcode)
	temp_text:set_text(stdout)
end, temp_widget)

return temp_widget
