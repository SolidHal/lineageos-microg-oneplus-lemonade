# OnePlus 9 LineageOS with MicroG, magisk, android auto build and install guide



# Install


# Build

TODO: bring in android auto reqs
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


## Setup Magisk



# Functionality

- audio
  - speakers
  - bluetooth
  - microphone
  
- biometrics
  - fingerprint

- buttons
  - lock
  - volume
  - silent switch

- camera
  - front
  - back normal
  - back telephoto
  - back macro
  
- cellular
  - phone service
  - sms/mms
  - lte
  - 5g

- display
  - basic
  - sleep/wake
  - dimming
  - camera cutout

- gps
  - rough location
  - precise location

- nfc

- power
  - charging
  - wireless charging
  
- wifi
  - 2.4G
  - 5G

# Thanks
reference repos:
https://github.com/tangalbert919/android_device_oneplus_lemonade
https://github.com/LineageOS/android_device_oneplus_lemonadep
