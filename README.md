# Marietta Outland Tools v2.3a

![enter image description here](https://i.imgur.com/r8HD1kg.gif)


## v2.3a Changelog



 - Trackers are not formatted in MM:SS.  Input is still required in seconds where as 15 minutes = 900s.
 - Decreased font size.
 - The tracker will now autohide when your UO window is not in focus, whether it is minimized or another window is on top.  
 - The tracker will update its anchor position when window is brought back to focus.  This is intended to allow you to move your UO window without having to restart to move the trackers position.
  ![enter image description here](https://i.imgur.com/bi3bJ2p.png) 
 -Added a secondary timer for the Summon tracker that counts up  Currently only works if Summon is tracked in the 1st tracking slot.  The intended use to have a rough idea how long your creatures in consideration to Summoner's Tome buffs like Daemon's Growing Fury.  The timer is activated by manually pressing the summon icon and does not reset when the main tracker is triggered.  Manually pressing the icon will reset the mini tracker.  It reports in minutes rounded down and starts at 0.
![enter image description here](https://i.imgur.com/o9cY6CQ.png)


Support for new spells and options to customize font color, size, and a moveable tracker anchor should be right around the corner.  


# Utility

A lightweight but effective cooldown tracker and QOL tool intended for the private Ultima Online server, Outlands.

# Current Spell / Action Support

- Summons
- Mushroom
- Magic Arrow
- Harm
- Fireball
- Lightning
- Mana Drain
- Curse
- Energy Bolt
- Mass Curse
- Mana Vampire
- Discordance
- Peacemaking
- Provocation

## Notes and Functionality

This script is in its infantile stage.  The code is highly unoptimized so your mileage may vary.  I have it tailored to my specific needs and I do not have any testers or any feedback of significance.  Feel free to message me directly on Discord @ leisure#0001 with any comments, concerns, bugs, etc.  I'll try to get back to you as my schedule permits.

This Autohotkey script does not write or write anything besides character profiles for the script from specific user input.  The default profile [can be viewed here.](https://pastebin.com/gatbSffM)  The script boils down to a user started timers bound to the same key as your Razor or in game bound corresponding keys.  The tracker is just simple always on top, transparent window anchored to the top left hand corner of the specified character.  One great thing about AHK is the code is incredibly transparent to verify there is nothing fishy going on here.  I find this tool incredibly helpful and figured I'd share with the class.

Also of note, visibility and display mode are currently functionless.

## Requirements and Installation

 1. Autohotkey is required.  [Download it here.](https://www.autohotkey.com/)
 2. Download and extract released zip on the right.
 3. Make sure to always launch the script in admin mode or functionality might be compromised.
 4. Select your desired trackers from the drop down menus, input your in game key bind and its corresponding cooldown time.  For example, I have ALT+V set to my use magic mushroom bind.  It will create a 60 on activation via the same keybind.  Apply this logic to the remaining.
 
![enter image description here](https://i.imgur.com/jtD23Ss.png)

 5.  Remember to include an exit key bind, then press Save to save your profile.
 6. Find your newly saved profile in the drop down list and Load the profile.
 7. Press start and play some UO.

While mentioned before, it is import to note these are just simple countdown timers.  They do not read any actual game data, so sometimes spells won't be synced up perfectly.  For example, if you are spamming a key it will reset the timer every time.  If you do not use modifiers for keys, bare characters for example, and you type a message with said keybind characters, it will reset the timer.  Once you become a bit more familiar, it will be easier to work around.  The quality of life this brings outweighs the required adjustments.

## Razor Macro Examples

Since there is no interaction with the client, some use cases need a bit of tinkering.  Below are a few examples of how I sync my timers and abilities with Razor macros.

Summons

Razor Script Example:
![](https://i.imgur.com/NezyRym.png)

Since Spirit Stones and Spell stones share the same item type, this will have to be set manually every time you replace your Spirit Stone.  Tip: don't die as much! :stuck_out_tongue_winking_eye:

You can get the serial by typing the in game command ">info".  Clicking the blue button by Serial will copy the serial ID to your clipboard.  Replace the serial ID in your Razor script as needed.
![enter image description here](https://i.imgur.com/gF7H4YY.png)

Bard Buffs

Razor Macro Example:

A simple razor target relative location macro gets the job done nicely.
![enter image description here](https://i.imgur.com/8wKQAcO.png)


## Very Near Future

 - Bard buffs
 - Potions
 - Hide when UO is not focused
 - Excute timer on mouse target click as opposed to hotkey.
 - Font sizing and color
 - Moveable anchor point
 - Expiration alerts
 
## Future Iterations

- Cast Bar
- Several complete code overhauls to stream line an incredible amount of bad code.  Stay tuned and feel free to message me with feature requests!  I will continue to update this fairly regularly until it is flesh out or hopefully replaced by in game client function.


## Known Bugs

Identified a problem with tracker #7 not properly displaying.
