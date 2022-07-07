---@declare-global
---@class moho.blip_methods : moho.entity_methods
local ReconBlip = {}

---
--  unit = ReconBlip:GetSource()
function ReconBlip:GetSource()
end

---
--  bool = ReconBlip:IsKnownFake()
function ReconBlip:IsKnownFake()
end

---
--  bool = ReconBlip:IsMaybeDead()
function ReconBlip:IsMaybeDead()
end

---
--  bool = ReconBlip:IsOnOmni()
function ReconBlip:IsOnOmni()
end

---
--  bool = ReconBlip:IsOnRadar()
function ReconBlip:IsOnRadar()
end

---
--  bool = ReconBlip:IsOnSonar()
function ReconBlip:IsOnSonar()
end

---
--  bool = ReconBlip:IsSeenEver()
function ReconBlip:IsSeenEver()
end

---
--  bool = ReconBlip:IsSeenNow()
function ReconBlip:IsSeenNow()
end

function ReconBlip:GetBlueprint()
end

return ReconBlip

