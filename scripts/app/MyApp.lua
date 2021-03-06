
require("config")
require("framework.init")
require("framework.shortcodes")
require("framework.cc.init")
require("scripts/lib/utils")

local MyApp = class("MyApp", cc.mvc.AppBase)

function MyApp:ctor()
    MyApp.super.ctor(self)
end

function MyApp:run()
    CCFileUtils:sharedFileUtils():addSearchPath("res/")
    self:enterScene("GameScene")
end

return MyApp
