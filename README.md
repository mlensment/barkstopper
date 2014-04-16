# Barkstopper

## What does this script do?
This script will play music, when your dogs starts barking loudly.

## Why do I need it?
We have a dog. When he hears a slightest noise at night, he has no second thoughts and starts barking. Only thing that calms him down is music, really.

So I thought. Why not make a script, that monitors the volume in the room and when it reaches a predefined point (e.g dog bark), random mp3 starts playing.

## I want it, what do I need?

You need a *nix based machine with [http://sox.sourceforge.net/](SOX) with mp3 handler (libsox-fmt-mp3) installed on it.

Currenty, the script is tested only on Ubuntu 13.10

### Installation tutorial for Ubuntu 13.10

```bash
sudo apt-get install sox
sudo apt-get install libsox-fmt-mp3

git clone git@github.com:mlensment/barkstopper.git
cd barkstopper

nano barkstopper.config
```

Further instructions can be found in the configuration file itself.
