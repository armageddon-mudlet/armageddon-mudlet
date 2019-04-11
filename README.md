![Armageddon on Mudlet](https://i.vgy.me/yd6fwg.gif)

# Table of Contents

1. [Installation](#installation)
2. [Setup](#setup)
3. [Mapping](#mapping)

# Installation

Before you continue, uninstall any existing version of the following scripts below. You can do this by navigating to the Package Manager (which can also be found under Toolbox > Package Manager).

Paste this one-liner into Mudlet to download and install the prompt alone:

```
lua function d(a,b)if not b:find("arm_prompt",1,true)then return end uninstallPackage("arm_prompt")installPackage(b)os.remove(b)cecho("<lime_green>Package installed!\n")end registerAnonymousEventHandler("sysDownloadDone","d")downloadFile(getMudletHomeDir().."/arm_prompt.zip","https://github.com/armageddon-mudlet/armageddon-mudlet/raw/master/arm_prompt/arm_prompt.zip")
```

Or this to install the complete GUI (with the equipment and inventory sidebar):

```
lua function d(a,b)if not b:find("arm_gui",1,true)then return end uninstallPackage("arm_gui")installPackage(b)os.remove(b)cecho("<lime_green>Package installed!\n")end registerAnonymousEventHandler("sysDownloadDone","d")downloadFile(getMudletHomeDir().."/arm_gui.zip","https://github.com/armageddon-mudlet/armageddon-mudlet/raw/master/arm_gui/arm_gui.zip")
```

Install the mapping script (optional):

```
lua function d(a,b)if not b:find("generic_mapper",1,true)then return end uninstallPackage("generic_mapper")installPackage(b)os.remove(b)cecho("<lime_green>Package installed!\n")end registerAnonymousEventHandler("sysDownloadDone","d")downloadFile(getMudletHomeDir().."/generic_mapper.xml","https://github.com/armageddon-mudlet/armageddon-mudlet/raw/master/generic_mapper/generic_mapper.xml")
```

Alternatively, download the .zip file(s) of the packages you'd prefer:

 - [arm_prompt.zip](https://github.com/armageddon-mudlet/armageddon-mudlet/raw/master/arm_prompt/arm_prompt.zip)
 - [arm_gui.zip (with sidebar)](https://github.com/armageddon-mudlet/armageddon-mudlet/raw/master/arm_gui/arm_gui.zip)
 - [generic_mapper.xml](https://github.com/armageddon-mudlet/armageddon-mudlet/raw/master/generic_mapper/generic_mapper.xml)
 
Open Mudlet and navigate to the Package Manager (this is also found under Toolbox > Package manager). Press *Install* and select the downloaded .zip file.

# Setup

## Setting the prompt
When in-game, type `setprompt` to set up your prompt. I'd recommend setting `brief prompt off`, so that the prompt is always kept updated.

# Mapping
To begin mapping, enter `start mapping <area name>`. Also make sure that you have `brief exits off`. Room exits should look like `[N, E, S, W]`, rather than `[NESW]`.

For more information, type `map help`.

> **Note:** When mapping enterable rooms, such as an enterable 'stall', you can make use of the commands `add portal -f enter stall` and `set exit -p leave <destination room ID>` to map out the `leave` exit. `enter` exits should be automatically mapped out when inputted as `enter <object>`.
>
> For more information, type `map help add portal` and `map help set exit` in Mudlet.

> **Note:** From my experience, having a color set for `fg_room_name` and `fg_room_exits` can result in the exits frequently being broken into a new line from the room name. If this happens, try resetting these two settings to none.
>
> If you have an existing color configuration, you can do this by first typing `change color export`. Copy all settings besides `fg_room_name` and `fg_room_exits`. Now type `change color none` to reset all settings to no colors, and paste in the settings you copied earlier.

## Important Commands (Aliases) for Proper Mapping

### Fundamental Aliases
- `start mapping <optional area name>` - use this command to start adding new content to the map, area name is required if there are no rooms in the map
- `stop mapping` - use this command to stop mapping
- `save map` - saves the map to a file (map.dat, located in the profile folder), this is generally only needed to share the map with someone else, or to act as a backup in case something happens to the map that Mudlet maintains for your profile
- `load map <optional 'local'>` - loads the map from the location specified in the download_path, or from the local copy
- `export area <area name>` - exports a file to the profile folder with data for the named area
- `import area <area name>` - imports area data from a file created with export area, must be located in profile folder


### Mapping Aliases
- `map mode <simple, normal, or complex>` - sets the mapping mode, determining what exits are set automatically as you move around
- `set area <area name>` - move the current room into the named area, area will be created if it does not currently exist
- `shift <direction>` - use this command to move the room you are currently in around on the map
- `merge rooms` - use this command to combine the room you are in with any other rooms in the same location and with the same name
- `clear moves` - use this command to clear the move queue after you attempt a move that doesn't succeed, but for which there is no trigger indicating this with the onMoveFail event
- `add door <direction> <optional none, open, closed, locked> <optional yes, no>` - adds a door in the given direction, defaulting to closed (use none to remove a door), and defaulting 'no' for one-way status
  - `add portal <entry command>` - adds a portal that uses the given command for entry. To force this command to create a new room, rather than linking to an existing one, put -f before the entry command, like this: `add portal -f enter portal`
- `set exit <direction> <roomID>` - sets the given direction to connect, one way, to the room with the specified roomID, used for very complex areas. To set the destination room for a portal, put -p before the portal entry command like this: `set exit -p enter portal 1124`

### Normal User Aliases
- `find me` - use this command to search the entire map to try to locate you based on room name and exits. Typically not necessary, as this will be done anyway if a person moves and their location is unknown
- `find path <room name> OR <room name> ; <area name>` - used to find a walking path to a room with the given name, in the given area if specified
- `set character <name>` - sets the current character name (stored as map.character)
- `set recall` - sets the current room as the recall room for the current character
