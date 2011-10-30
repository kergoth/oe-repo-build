PATH=$PWD/sources/oe-core/scripts:$PWD/sources/bitbake/bin:$PATH
export PATH

# Used by poky-qemu, scripts/bitbake
export BUILDDIR=$PWD

if [ -e setup.sh.$HOSTNAME ]; then
    . ./setup.sh.$HOSTNAME
fi
