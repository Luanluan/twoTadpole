local CUR_MODULE = ...
local CheackPoint1 = class("CheackPoint1")
local scheduler = require("framework.scheduler")
local NAMES = {"pineapple" , "strawberry" , "watermelon" , "grapes"}
function CheackPoint1:ctor()
	self.list = {}
	self.physics = require("scripts/app/pedatas/fruits").physicsData(1)
end

--初始化  node:显示对象容器 , world:物理世界 
function CheackPoint1:init(node , world)
	self.container = node
	self.world = world
end

--开始
function CheackPoint1:start()
	CheackPoint1.timer = scheduler.scheduleGlobal(function () self:addObject() end, 1)
	CheackPoint1.updateHandler = scheduler.scheduleUpdateGlobal(function () self:update() end)
end

--停止
function CheackPoint1:stop()
	scheduler.unscheduleGlobal(CheackPoint1.timer)
	scheduler.unscheduleGlobal(CheackPoint1.updateHandler)
end

--重置
function CheackPoint1:reset()
	for i = 1 , #self.list do
		local body = self.list[i]
		body:getNode():removeFromParentAndCleanup(true)
		self.world:removeBody(body, true)
	end
	self.list = {}
end

--添加一个障碍物
function CheackPoint1:addObject()
	local name = NAMES[math.random(1 , #NAMES)]
	local obj = display.newSprite("#"..name..".png")
	self.container:addChild(obj)
	local physicsData = self.physics:get(name)
	local body = createBody(physicsData, self.world)
	body:bind(obj)
	body:setPosition(math.random(100 , CONFIG_SCREEN_WIDTH  - 100) , CONFIG_SCREEN_HEIGHT)
	table.insert(self.list, body)
	--print("list length" , #self.list)
end

--每帧更新
function CheackPoint1:update()
	for i = 1 , #self.list do
		local body = self.list[i]
		if body ~= nil then
			body:setPositionY(body:getPositionY() - 4)
			if body:getPositionY() < 0 then
				table.remove(self.list , i)
				body:getNode():removeFromParentAndCleanup(true)		--移除显示对象
				self.world:removeBody(body, true)					--移除物理对象并解绑
			end
		end
	end
end

return CheackPoint1