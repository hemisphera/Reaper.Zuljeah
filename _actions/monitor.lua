gfx.init("Zuljeah - integrated", 770, 200, 1)
fontSize = 30
gfx.setfont(1, "Consolas", fontSize)

lastActiveRegion = 0

local function render()
  gfx.y = -fontSize
  local playPos = reaper.GetPlayPosition()

  local setlistTrack = findSetlistTrack()
  if (setlistTrack == nil) then
    reaper.ShowConsoleMsg("No setlist track found.\n")
    return
  end

  local activeRegion = 0
  local setlist = buildSetlist(setlistTrack)
  for k,v in pairs(setlist) do
    gfx.x = 0
    gfx.y = gfx.y + fontSize

    local isCurrent = (playPos >= v["start"]) and (playPos <= v["end"])
    if (isCurrent) then
      activeRegion = k
    end

    line = ""
    if (isCurrent) then
      line = line .. ">>"
    else
      line = line .. "  "
    end
    line = line .. " " .. v["name"]
    if (v["selected"]) then
      line = "o " .. line
    else
      line = "  " .. line
    end
    gfx.drawstr(line .. "\n")
  end

  if (lastActiveRegion ~= activeRegion) then
    if (activeRegion == 0) then
      reaper.OnStopButton()
      setSelectedIndex(setlist, lastActiveRegion + 1)
    end
    lastActiveRegion = activeRegion
  end

  reaper.defer(render)
end
render()