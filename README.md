# OnePlus 9 LineageOS with MicroG, android auto. Build and install guide



# Install

## Install the recovery and image:

grab the latest images from https://github.com/SolidHal/lineageos-microg-oneplus-lemonade/releases

these instruction are for lemonadep, but work the same. Just replace "lemonadep" with "lemonade"
https://wiki.lineageos.org/devices/lemonadep/install

## get microg setup

- Install the following location/lookup backends from fdroid
```
Apple UnifiedNlp Backend - you can use others but this one works reliably
NominatimNlpBackend
```

- Open MicroG settings, Self-Check

- Tap "System grants signature spoofing permission" and grant it 

- Tap "Play Store (Phonesky) has correct signature" and grant it (this is FakeStore)

- Go back to MicroG setting, open Location modules
  Enable Apple WiFi and nominatim
  *IMPORTANT* you must let them *always* have access to location for things to work reliably
  on android 11 and newer, this means tapping "Allow in settings" and choosing "Allow all the time"
  
## get android auto setup

- Install the latest android auto apk (you can find this online or get it with aurora store)
- Install google maps in the same way
- open google maps once, grant it location permissions. Just while in use is fine.
- android auto *should* just work now

if you get stuck on google maps permission, try pressing cancel instead of settings.

if you are having trouble with first time setup, I found it was helpful to setup the bluetooth connection to the car before plugging in the usb c.


## Camera app

GCam is one of the best, if not the best camera app out there. Plus it can take advantage of all 3 of the lenses on the phone, which many camera apps can't do.

You can get a build of GCam here: https://forum.xda-developers.com/t/google-camera-for-the-oneplus-9.4303015/

I suggest the Wichaya build, as the Arnova8G2 build fails to open at all.

To avoid crashing when viewing images, I suggest enabling 3rd party galleries in GCam. To do so, tap the arrow at the top, tap the gear, go to Advanced, and at the bottom enable "Use a third-party gallery"

# Build

device repo: https://github.com/SolidHal/android_device_oneplus_lemonade

## Prepare the build environment

First we need to build the docker image:
```
git checkout https://github.com/lineageos4microg/docker-lineage-cicd.git
cd docker-lineage-cicd
docker build --tag solidhal/docker-lineage-cicd .
```

Now head back to this checkout, and run the build script This will take quite some time, and use ~200GB of disk space. 
build_lemonade.sh can be modified to not include microg, signature spoofing, android auto, etc if you would prefer

```
cd build
./build_lemonade.sh
```


# Functionality

- [x] audio
  - [x] speakers
  - [x] bluetooth
  - [x] microphone
  
- [x] biometrics
  - [x] fingerprint

- [x] buttons
  - [x] lock
  - [x] volume
  - [x] silent switch

- [x] camera
  - [x] front
  - [x] back normal
  - [x] back telephoto
  - [x] back monochrome
  
- [x] cellular
  - [x] phone service
  - [x] sms/mms
  - [x] lte
  - [x] 5g

- [x] display
  - [x] basic
  - [x] sleep/wake
  - [x] dimming
  - [x] camera cutout

- [x] gps
  - [x] rough location
  - [x] precise location

- [ ] nfc: untested, likely works

- [x] power
  - [x] charging
  - wireless charging
  
- [x] wifi
  - [x] 2.4G
  - [x] 5G

# Thanks
reference repos:
https://github.com/tangalbert919/android_device_oneplus_lemonade
https://github.com/LineageOS/android_device_oneplus_lemonadep
