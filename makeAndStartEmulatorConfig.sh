echo "source build/envsetup.sh"
source build/envsetup.sh
echo "lunch 65"
lunch 65
echo "make -j16"
make -j16
echo user | sudo -S groupadd -r kvm
echo user | sudo -S gpasswd -a $USER kvm
echo user | sudo -S chmod 777 /dev/kvm
#make emu_img_zip
emulator

