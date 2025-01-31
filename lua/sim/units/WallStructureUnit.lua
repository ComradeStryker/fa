
local StructureUnit = import("/lua/sim/units/structureunit.lua").StructureUnit

-- upvalue scope for performance
local EntityCategoryContains = EntityCategoryContains

local StructureUnitOnDamage = StructureUnit.OnDamage

local CategoriesWall = categories.WALL

---@class WallStructureUnit : StructureUnit
WallStructureUnit = ClassUnit(StructureUnit) {

    WallOverspillFactor = 0.2,

    ---@param self WallStructureUnit
    ---@param instigator Unit
    ---@param amount number
    ---@param vector Vector
    ---@param damageType DamageType
    OnDamage = function(self, instigator, amount, vector, damageType)
        StructureUnitOnDamage(self, instigator, amount, vector, damageType)

        if damageType != 'WallOverspill' then
            local adjacentUnits = self.AdjacentUnits
            if adjacentUnits then
                local wallOverspillFactor = self.WallOverspillFactor
                for id, adjacentUnit in adjacentUnits do
                    if EntityCategoryContains(CategoriesWall, adjacentUnit) then
                        adjacentUnit:OnDamage(instigator, wallOverspillFactor * amount, vector, 'WallOverspill')
                    end
                end
            end
        end
    end,
}
