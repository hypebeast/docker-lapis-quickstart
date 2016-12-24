local lapis = require("lapis")
local app = lapis.Application()

app:enable("etlua")

app:get("/", function()
  return { render = "index" }
end)

app:get("/about", function()
  return { render = "about" }
end)

return app
