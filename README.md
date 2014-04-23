# Barkstopper

## What does this script do?
This script will play music, when your dogs starts barking loudly. For further comfort, you can easily stop or start music with your mobile device. This is extra handy at night when the computer is too far and your phone is close.

To control music with you smartphone, just launch the barkstopper, open up browser with your phone and navigate to the address displayed in the script output (usually your local IP with port 9000).

## Why do I need it?
We have a dog. When he hears a slightest noise at night, he has no second thoughts and starts barking. Only thing that calms him down is music, really.

So I thought. Why not make a script, that monitors the volume in the room and when it reaches a predefined point (e.g dog bark), random mp3 starts playing.

## I want it, what do I need?
You need a *nix based machine with [SOX](http://sox.sourceforge.net/) with mp3 handler (libsox-fmt-mp3) installed on it.

Currenty, the script is tested on Ubuntu 13.10 (Saucy Salamander) and Debian GNU/Linux 7 (Wheezy)

## Installation tutorial for Ubuntu and Debian

```bash
sudo apt-get install sox
sudo apt-get install libsox-fmt-mp3

git clone git@github.com:mlensment/barkstopper.git
cd barkstopper

nano barkstopper.config
```

Further instructions can be found in the configuration file itself.


## Known issues
Sometimes the GUI does not open at once. Calmly refresh the webpage and do not spam the refresh button.
Webserver is embedded into barkstopper script and is not meant for heavy refreshing action.
