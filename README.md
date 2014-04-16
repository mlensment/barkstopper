# Barkstopper

## What does this script do?
This script will play music, when your dogs starts barking loudly.

## Why do I need it?
We have a dog. When he hears a slightest noise at night, he has no second thoughts and starts barking. Only thing that calms him down is music, really.

So I thought. Why not make a script, that monitors the volume in the room and when it reaches a predefined point (e.g dog bark), random mp3 starts playing.

## I want it, what do I need?
You need a *nix based machine with [SOX](http://sox.sourceforge.net/) with mp3 handler (libsox-fmt-mp3) installed on it.

Currenty, the script is tested on Ubuntu 13.10 (Saucy Salamander) and Debian GNU/Linux 7 (Wheezy)

## Installation tutorial for Saucy Salamander and Wheezy

```bash
sudo apt-get install sox
sudo apt-get install libsox-fmt-mp3

git clone git@github.com:mlensment/barkstopper.git
cd barkstopper

nano barkstopper.config
```

Further instructions can be found in the configuration file itself.
