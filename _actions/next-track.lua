setlistTrack = findSetlistTrack()
if (setlistTrack == nil) then
  return
end
setlist = buildSetlist(setlistTrack)
modifySelectedIndex(setlist, 1)
reaper.UpdateArrange()