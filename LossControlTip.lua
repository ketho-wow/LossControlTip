-- License: Public Domain

local tt = CreateFrame("GameTooltip", "LossControlTip", LossOfControlFrame, "GameTooltipTemplate")
tt:SetScale(.9)

LossOfControlFrame:HookScript("OnEvent", function(self, event)
	if event == "LOSS_OF_CONTROL_ADDED" and self.spellID then
		tt:SetOwner(self, "ANCHOR_TOP")
		tt:SetSpellByID(self.spellID)
	end
end)
