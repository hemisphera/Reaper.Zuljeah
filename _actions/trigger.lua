setlistTrack = findSetlistTrack()
if (setlistTrack == nil) then
  return
end
setlist = buildSetlist(setlistTrack)
idx = getSelectedIndex(setlist, -1)
item = setlist[idx]
reaper.SetEditCurPos(item["start"], true, false)
reaper.OnPlayButton()