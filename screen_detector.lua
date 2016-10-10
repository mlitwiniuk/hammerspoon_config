-- Mjolnir layout configuration
-- Copyright Javier González (javier@javigon.com)
--

-- Load Extensions ============================================
screen = hs.screen
screens = screen.allScreens()
nscreens = #screens
nscreens_old = nscreens

local alert = hs.alert

screenWatcher = nil

--TODO: Save running applications and apply layout for them
function reloadScreens()
	nscreens = #screen.allScreens()

	if nscreens_old ~= nscreens then
		defineLayout()
		applyLayout(work_layout)

		-- FIXME: We should really be calling a function here that destroys and
		-- re-creates the statuslets, in case they need to be in new places

		nscreens_old = nscreens

		alert.show("New number of screens: " .. nscreens, 3)
	end

end



