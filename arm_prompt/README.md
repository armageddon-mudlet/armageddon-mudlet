# Installation
Open Mudlet and navigate to the Package Manager (this is also found under Toolbox > Package manager).

Press *Install* and open the `arm_prompt.zip` file.

The prompt bar uses the font *Fondamento*. The font files are included in the `arm_prompt.zip` file in the *fonts* folder.

## Setting the prompt
In game, you will have to set your prompt to `%h/%H|%v/%V|%t/%T|%m/%M|%A|%w|%S|%a|%o|%d|%e|%E|%p|%P|%O|%n>`. The alias `setprompt` does this for you.

## Setting the background color
Because Mudlet does not (AFAIK) support setting the background color through a script, you will have to set it yourself through the preferences.

In the *Profile preferences* window, open the tab *Color view* and change the background colors (*Background*, *Command line background*, and *Command background*) to `#16130F`.

Alternatively, you can keep the background black. Modify `arm_prompt.xml` within the zip file and change the line `setBorderColor(22,19,15)` to `setBorderColor(0,0,0)`.
