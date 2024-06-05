local wibox = require("wibox")
local watch = require("awful.widget.watch")
local json = require("json")
local http = require("http")

local temp_text = wibox.widget({
	widget = wibox.widget.textbox,
})

local temp_widget = wibox.widget.background()
temp_widget:set_widget(temp_text)

watch("weather", 60, function(widget, stdout, stderr, exitreason, exitcode) end, temp_widget)

return temp_widget
