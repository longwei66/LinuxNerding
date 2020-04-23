# LinuxNerding
A bunch of stuff I want to remember when configuring other stuff... aka "external memory log".

Based on a re-install of espresso (my laptop) april 2020, the year of the lockdown, yeah yeah...

## Before reinstall
Remember to backup everything! EVERYTHING!

Specially the config files of for instance mpd, vim, beet. Get the wifi driver thingy... my card is a standard *802.11*. And have a look at the extra lines in the apt sources.list

## Where to get your iso...
Given the fact that using the real completely free, etc. iso is garanteed to give you a headache I suggest to get the netinstall iso with the non-free drivers. And if that is a huge ethical problem, have a stiff drink. This is mainly for the WiFi driver.

e.g. https://cdimage.debian.org/cdimage/unofficial/non-free/images-including-firmware/current/amd64/iso-cd/


## Getting from stable to unstable
Because we like to live dangerously... There one needs to edit the `/etc/apt/sources.list` and change all *stable* (or buster) to *unstable*, and comment the lines corresponding to security updates as they are included in unstable per say.

Then a good old `apt update` and `apt full-upgrade`. That will take a while.

I use XFCE as my desktop thingy (I dislike KDE and Gnome, too, err, blingy?) and it was interesting to see what apps it was loaded with. Synaptic is by default so I did not need to install it. I usually do all my apt things in the command line but sometimes to look around for something or just to browse Synaptic is pretty nice.

## First thing first, getting behind a secure VPN
I use airvpn.org for my VPN. They have a GUI client called Eddie but one can also download a config file from the website and use openvpn directly in the terminal. Neat. Anyway to get Eddie just follow the instruction at https://airvpn.org/linux and then it'll get update via apt as the rest of the machine...

Next thing is to install KeepassXC to recover the .kdbx file with all the passwords and all that. I hope you correctly backed-up that one and that you did not forget your passphrase. KeepassXC is obtainable via apt.

## A bunch of stuff to do things...
Here is a list of software I'll have on the machine, organised roughly as they would be in the menu (plus the ones in terminal shoved into the list, yes there shall be a "diverse" category, there is always one...)

- Accessories (aka Diverse!)
  - db browser for SQLite
  - gnomedisks (I haven't found anything other than this for the moment)
  - KeepassXC
  - owncloud client (Just as a reminder)
  - redshift (with the gtk version in order to add it in the panel of XFCE, this thing shifts the color of the screen towards red at night...)
  - curl
  - orpie (a NP calculator in terminal!)
  - unrar (and additionally unrar-free, not entirely sure of the difference but whatever...)
  - grsync (note: eventually I'll need to learn how to use rsync period, to be able to synch via ssh...)
  - kitty (some weird terminal with funky capabilities such as tabbing and splitting, not entirely sure how to use it but it looks cool)

- Graphics
  - darktable
  - GIMP
  - Inkscape (for vectorial graphics)
  - Scribus
  - XnView (a very nice little piece of software that does a lot of stuff with images, free if not for a company: https://www.xnview.com/en/xnviewmp/#downloads)
  - Xsane (so that was weird, it came as preinstalled, I cannot really see why but there is was, for scanning of course... I am sure I'll have to work on it a bit to get the driver for my scanner but I do not have it with me at the moment so that'll wait.)

- Sound/Video
  - Cmus (I previously used MOC to listen to music in the terminal but I wanted a change of scenery so I'm trying this one now.)
  - mpd + ncmpcpp (There'll be a full section on mpd, for obvious reasons...)
  - VLC
  - Picard (an app to automatically tag audio files, with a GUI)
  - beets (http://beets.io/ which is pretty much the same as Picard but in the command line and with tons of plugins and shit, so there'll be a section later for that, it is fun!)
  - XFCA (to convert stuff from pretty much anything to anything, in my case mostly to put .flac into .mp3)
  - youtube-dl (from apt, very nice and efficient)

- Internet
  - Firefox (comes pre-installed, which is nice)
  - Signal (get the desktop version here https://signal.org/download/# it'll be added to apt and all that, is very often updated...)
  - Deluge (for torrents, I previously used Transmission but I wanted to try something else, besides Deluge is made in python and I have this little obsession with python learning at the moment so that is that.)
  - TOR + OnionShare (obviously!)
  - *(I used to use Vivaldi as my main browser but I'm trying to stick to Firefox for the moment, we'll see if I feel the urge to change.)*
  - Irssi (for documentation reasons, I haven't been on IRC in forever but lest I forget which app to use to get there...)
  - Eddie (GUI for airvpn)
  - *mutt (OK so that's been in the pipe forever, I'll stick it here just to remind me that, yes, at some point, I'll get to it...)*

- Office stuff
  - Libreoffice (comes pre-installed)
  - Calibre (magnificent app to manage ebooks and e-readers...)
  - PDFChain (GUI for pdftk)

- Coding/development (yes given my level in coding, this is a bit pretentious...)
  - Vim (I recently learned a ton of new stuff with plugins and shit so there'll be a section fof vim... Well, there should be a complete notebook full of vim stuff to be honest.)
  - Git (same thing... beware though to `apt install git` and not `git-all`)
  - Python (2 and 3, comes with the box... but as it is the obsession of the moment there'll be a section for that.)
  - Pycharm (my main IDE at the moment, it was a bit tricky so there'll be a section for it, in the python section.)
 
 I may have forgotten some stuff. That'll get updated from time to time.

 Oh, and of course I play a bit of nerdy games from time to time: Stone Soup Crawl (just `apt install crawl`) and Dwarf Fortress. For emulation purposes Higan is nice and covers pretty much all the retrogaming needs. There may be a little bit of info on DosBox and Ultima IV and V at some point later.

- Stuff that at some point was used...
  - Geeqie (Image browser of some sort)
  - RawTherapee (darktable equivalent)
  - Audacity (to manipulate sound files)
  - mplayer (competitor for VLC)
  - Arduino (directly from apt as the one taken from the website did some weird stuff when I tried to install it...)
  - GPXSee (app to see stuff coming from GPS tracks... It seems to be broken in apt at the moment)
  - Keybase + Telegram
  - Etcher (app to flash iso to USB sticks, as an AppImage (not opensource) https://www.balena.io/etcher/)
  - Atom (IDE)

## Now let's make a nice looking conky!
TBD
