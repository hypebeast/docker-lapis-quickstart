-- config.lua
local config = require("lapis.config")

config("development", {
  port = 8080
})

config("production", {
  port = 8080
})
