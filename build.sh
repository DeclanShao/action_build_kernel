echo "===================Setup Export========================="
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=$GITHUB_WORKSPACE/kernel/tool/aarch/bin/aarch64-none-linux-gnu-
export CROSS_COMPILE_ARM32=$GITHUB_WORKSPACE/kernel/tool/arm/bin/arm-none-eabi-

echo "=========================Clean========================="
rm -rf $KERNEL_PATH/out/ *.zip
make mrproper && git reset --hard HEAD

echo "=========================make========================="
make O=out rmx1971_chen_defconfig
make -j8 O=out

