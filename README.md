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
Because we like to live dangerously...
There one needs to edit the `/etc/apt/sources.list` and change all *stable* (or buster) to *unstable*, and comment the lines corresponding to security updates as they are included in unstable per say.

Then a good old `apt update` and `apt full-upgrade`. That will take a while.


