![Armageddon on Mudlet](https://vgy.me/mnNUi3.gif)

# Table of Contents

1. [Installation](#installation)
2. [Setup](#setup)
3. [Mapping](#mapping)

# Installation

Paste this one-liner into Mudlet to download and install prompt alone:

```
lua function d(a,b)if not b:find("arm_prompt",1,true)then return end installPackage(b)os.remove(b)cecho("<lime_green>Package installed!\n")end registerAnonymousEventHandler("sysDownloadDone","d")downloadFile(getMudletHomeDir().."/arm_prompt.zip","https://github.com/armageddon-mudlet/armageddon-mudlet/raw/master/arm_prompt.zip")
```

Or this to install the complete GUI:

```
lua function d(a,b)if not b:find("arm_gui",1,true)then return end installPackage(b)os.remove(b)cecho("<lime_green>Package installed!\n")end registerAnonymousEventHandler("sysDownloadDone","d")downloadFile(getMudletHomeDir().."/arm_gui.zip","https://github.com/armageddon-mudlet/armageddon-mudlet/raw/master/arm_gui.zip")
```

Alternatively, download one of the .zip files provided ([arm_prompt.zip](https://github.com/armageddon-mudlet/armageddon-mudlet/raw/master/arm_prompt.zip) or [arm_gui.zip](https://github.com/armageddon-mudlet/armageddon-mudlet/raw/master/arm_gui.zip)). Open Mudlet and navigate to the Package Manager (this is also found under Toolbox > Package manager).

Press *Install* and select the downloaded .zip file.

# Setup

## Setting the prompt
In game, you will have to set your prompt to `%h/%H|%v/%V|%t/%T|%m/%M|%A|%w|%S|%a|%o|%d|%e|%E|%p|%P|%O|%n>`. The alias `setprompt` does this for you.

## Setting the background color
Because Mudlet does not (AFAIK) support setting the background color through a script, you will have to set it yourself through the preferences.

In the *Profile preferences* window, open the tab *Color view* and change the background colors (*Background*, *Command line background*, and *Command background*) to `#16130F`.

Alternatively, you can keep the background black. Modify `arm_prompt.xml` or `arm_gui.xml` within the zip file and change the line `setBorderColor(22,19,15)` to `setBorderColor(0,0,0)`.

# Mapping
To begin mapping, enter `start mapping <area name>`. Also make sure that you have `brief exits off`. Room exits should look like `[N, E, S, W]`, rather than `[NESW]`.

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
