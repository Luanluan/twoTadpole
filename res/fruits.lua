-- This file is for use with quick-cocos2d-x framework
-- https://github.com/dualface/quick-cocos2d-x
-- bugFixed by ChildhoodAndy on 2014/02/01
-- This file is automatically generated with PhysicsEdtior (http://physicseditor.de). Do not edit
--
-- Usage example:
--			local scaleFactor = 1.0
--			local physicsData = require("shapedefs").physicsData(scaleFactor)
--			local shape = display.newSprite("objectname.png")
--          physics.bindBody(shape, physicsData:get("objectname"))
--

-- copy needed functions to local scope
local pairs = pairs
local ipairs = ipairs

local M = {}

function M.physicsData(scale)
    local physics = {data = {}}

    

    physics.data["grapes"] = {
        anchorpoint = { 0.51562,0.53906 },
        shapes = {
            
            {
                mass = 2,
                elasticity = 0,
                friction = 0,
                surface_velocity = { 0.00000,0.00000 },
                layers = 0,
                group = 0,
                collision_type = 0,
                isSensor = false,
                shape_type = "POLYGON",
                
                polygons = {
                    
                    {22.50000, -42.00000, -2.00000, -65.50000, 11.00000, 53.50000, 12.00000, 53.50000, 42.50000, 26.00000, },
                    
                    {-23.50000, 35.00000, 11.00000, 53.50000, -2.00000, -65.50000, -32.50000, -35.00000, -41.50000, 11.00000, },
                    
                    {11.00000, 53.50000, -23.50000, 35.00000, -39.50000, 44.00000, },
                    
                    {-2.00000, -65.50000, 22.50000, -42.00000, 10.00000, -63.50000, },
                    
                }
                
            },
            
        },
    }

    

    physics.data["pineapple"] = {
        anchorpoint = { 0.37500,0.39062 },
        shapes = {
            
            {
                mass = 2,
                elasticity = 0,
                friction = 0,
                surface_velocity = { 0.00000,0.00000 },
                layers = 0,
                group = 0,
                collision_type = 0,
                isSensor = false,
                shape_type = "POLYGON",
                
                polygons = {
                    
                    {63.00000, 37.50000, 40.00000, 14.50000, 9.00000, 35.50000, 46.50000, 62.00000, 74.50000, 74.00000, },
                    
                    {40.00000, 14.50000, 63.00000, 37.50000, 79.00000, 24.50000, },
                    
                    {-32.00000, -47.50000, -48.50000, -29.00000, -45.50000, 3.00000, -14.50000, 32.00000, 9.00000, 35.50000, 40.00000, 14.50000, 36.50000, -18.00000, 8.50000, -49.00000, },
                    
                    {33.50000, 78.00000, 33.50000, 77.00000, 9.00000, 35.50000, 4.50000, 51.00000, },
                    
                    {9.00000, 35.50000, 33.50000, 77.00000, 46.50000, 62.00000, },
                    
                }
                
            },
            
        },
    }

    

    physics.data["strawberry"] = {
        anchorpoint = { 0.57031,0.52344 },
        shapes = {
            
            {
                mass = 2,
                elasticity = 0,
                friction = 0,
                surface_velocity = { 0.00000,0.00000 },
                layers = 0,
                group = 0,
                collision_type = 0,
                isSensor = false,
                shape_type = "POLYGON",
                
                polygons = {
                    
                    {-21.00000, 34.50000, -35.00000, 25.50000, -40.50000, 39.00000, },
                    
                    {-11.00000, -52.50000, -49.50000, -17.00000, -44.50000, 12.00000, -3.50000, 44.00000, 15.00000, 33.50000, 35.50000, 13.00000, 37.50000, -32.00000, 24.00000, -58.50000, },
                    
                    {-35.00000, 25.50000, -44.50000, 12.00000, -57.50000, 16.00000, },
                    
                    {15.00000, 33.50000, -3.50000, 44.00000, 17.00000, 42.50000, },
                    
                    {-21.00000, 34.50000, -3.50000, 44.00000, -44.50000, 12.00000, -35.00000, 25.50000, },
                    
                    {-11.00000, 51.50000, -10.00000, 51.50000, -3.50000, 44.00000, -21.00000, 34.50000, },
                    
                }
                
            },
            
            {
                mass = 2,
                elasticity = 0,
                friction = 0,
                surface_velocity = { 0.00000,0.00000 },
                layers = 0,
                group = 0,
                collision_type = 0,
                isSensor = false,
                shape_type = "POLYGON",
                
                polygons = {
                    
                    {-14.00000, -50.50000, -49.50000, -15.00000, -55.00000, 19.50000, -11.00000, 51.50000, -10.00000, 51.50000, 33.50000, 19.00000, 38.50000, -21.00000, 25.00000, -58.50000, },
                    
                }
                
            },
            
        },
    }

    

    physics.data["watermelon"] = {
        anchorpoint = { 0.49219,0.46094 },
        shapes = {
            
            {
                mass = 2,
                elasticity = 0,
                friction = 0,
                surface_velocity = { 0.00000,0.00000 },
                layers = 0,
                group = 0,
                collision_type = 0,
                isSensor = false,
                shape_type = "POLYGON",
                
                polygons = {
                    
                    {-4.00000, 61.50000, -3.00000, 61.50000, 12.50000, 50.00000, 57.50000, -31.00000, 31.00000, -45.50000, -17.00000, -48.50000, -53.50000, -28.00000, },
                    
                }
                
            },
            
            {
                mass = 2,
                elasticity = 0,
                friction = 0,
                surface_velocity = { 0.00000,0.00000 },
                layers = 0,
                group = 0,
                collision_type = 0,
                isSensor = false,
                shape_type = "POLYGON",
                
                polygons = {
                    
                    {-4.00000, 61.50000, -3.00000, 61.50000, 54.50000, -24.00000, 50.00000, -37.50000, 2.00000, -50.50000, -51.50000, -31.00000, },
                    
                }
                
            },
            
        },
    }

    

    -- apply scale factor
    local s = scale or 1.0
    for bi, body in pairs(physics.data) do
        for fi, shape in ipairs(body.shapes) do
            if shape.polygons then
                for ci, coordinate in ipairs(shape.polygons) do
                    for i, point in ipairs(coordinate) do
                        point = s * point
                    end
                end

            else
                shape.radius = s * shape.radius
            end
        end
    end

    function physics:get(name)
        return self.data[name]
    end

    return physics
end

return M