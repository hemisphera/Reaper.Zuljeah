# Zuljeah Setlist Player

Zuljeah is a setlist player for REAPER. You organize your various songs into project regions inside a single REAPER project. Zuljeah then allows you to rearrange the playing order, navigate them and trigger the playback of them.

## How do I prepare my project?

1. You start out by creating your project. Create one or more regions in your project where each region corresponds to a song on your setlist
2. Create one or more "setlist" tracks. A setlist track is any arbitrary track that contains 'SETLIST' (literally, case sensititve) in the name. This track will be used to define the order of your songs. The first setlist track that is found will be used. Muted tracks will be excluded. This way you can create multiple setlists, mute them all and unmute only the one you want to use
3. Create an "Empty Item" for each song that you want to have in your setlist and place it on your setlist track anywhere inside the project region.
4. As content of this empty item insert a numeric value which specifies the sequence of this song on your setlist. It is important that this item does not contain anything but a numeric value. The setlist will be ordered by the numbers you assign here. These numbers can have gaps.

## Alright. And now?

1. Assign shortcuts or keys or MIDI notes to Zuljeah actions.
2. Run the "Zuljeah - Monitor" action which starts Zuljeah. This must always be running to use Zuljeah. You can restart this anytime you make substantial changes to your setlist or songs to refresh Zuljeah.
3. Use the "Next Song" and "Previous Song" to navigate between songs.
4. Hit play to start playback of a song. Zuljeah will automatically stop at the end of the region and move to the next song in the list.