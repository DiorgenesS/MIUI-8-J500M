#/bin/bash
PWD=`pwd`
METADATA_DIR=$PWD/metadata
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files
build_prop_file=$TARGET_FILES_DIR/SYSTEM/build.prop
OTHER_DIR=$PWD/other
KERNEL_DIR=$PWD/overlay/boot

#Use custom updater bin file
if [ -e $METADATA_DIR/updater ]
then
   echo "Use custom updater bin file"
   cp $METADATA_DIR/updater $TARGET_FILES_DIR/OTA/bin
fi

#Use custom kernel
if [ -e $KERNEL_DIR/boot.img ]
then
   echo "Use custom kernel to boot"
   cp $KERNEL_DIR/boot.img $TARGET_FILES_DIR/BOOTABLE_IMAGES
fi

#Patching modules for custom kernel
if [ -e $KERNEL_DIR/modules ]
then
   echo "Patching modules for custom kernel"
   cp $KERNEL_DIR/modules/hades $TARGET_FILES_DIR/SYSTEM/lib/modules/pronto/pronto_wlan.ko
   cp $KERNEL_DIR/modules/radio $TARGET_FILES_DIR/SYSTEM/lib/modules/radio-iris-transport.ko
fi

#Added file_contexts to ROM
cp -f other/file_contexts out/target_files/META/
rm -rf out/target_files/SYSTEM/vendor/preinstall

#Added mcRegistry
echo "Added mcRegistry"
cp -rf stockrom/system/app/mcRegistry $TARGET_FILES_DIR/SYSTEM/app
