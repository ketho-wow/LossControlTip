-- License: Public Domain

local LossControlToolTip = CreateFrame("GameTooltip", "LossControlToolTip", LossOfControlFrame, "GameTooltipTemplate")

LossOfControlFrame:HookScript("OnEvent", function(self, event)
	if event == "LOSS_OF_CONTROL_ADDED" then
		LossControlToolTip:SetOwner(self, "ANCHOR_TOP")
		LossControlToolTip:SetSpellByID(self.spellID)
	end
end)
