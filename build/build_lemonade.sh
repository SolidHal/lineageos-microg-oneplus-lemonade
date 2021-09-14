#!/bin/bash


docker run \
       -e "BRANCH_NAME=lineage-18.1" \
       -e "DEVICE_LIST=lemondae" \
       -e "INCLUDE_PROPRIETARY=true" \
       -e "CCACHE_SIZE=100G" \
       -e "CLEAN_AFTER_BUILD=false" \
       -e "SIGN_BUILDS=true" \
       -e "SIGNATURE_SPOOFING=yes" \
       -e "CUSTOM_PACKAGES=GmsCore GsfProxy FakeStore FDroid FDroidPrivilegedExtension" \
       -v "$PWD/src:/srv/src" \
       -v "$PWD/zips:/srv/zips" \
       -v "$PWD/logs:/srv/logs" \
       -v "$PWD/ccache:/srv/ccache" \
       -v "$PWD/local_manifests:/srv/local_manifests" \
       -v "$PWD/userscripts:/srv/userscripts" \
       -v "$HOME/.android-certs:/srv/keys" \
       solidhal/docker-lineage-cicd

# Keep the android signing keys in the home directory to avoid accidentally including in a git commit
