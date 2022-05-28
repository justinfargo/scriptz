## Installing yay
echo "Initializing..."
sudo pacman --noconfirm --needed -S git base-devel fakeroot

yay()
{
mkdir -p ~/.local/src 
cd ~/.local/src
git clone https://aur.archlinux.org/yay.git
cd ~/.local/src/yay
makepkg --noconfirm -si ~/.local/src/yay/PKGBUILD
} 

repos()
{
cd ~/.local/src
git clone https://github.com/justinfargo/dwm
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/st
cd ~/.local/src/dwm && make && sudo make install
cd ~/.local/src/dmenu && make && sudo make install
cd ~/.local/src/st && make && sudo make install
/bin/bash -c "yay --noconfirm --needed -S brave-bin"
}  

configs()
{
cd ~ && git clone https://github.com/justinfargo/configs.git && cd ~/configs
mv .xinitrc ~/


}
echo "Welcome to my scriptz.sh file. This will install some of my favorite software, and my personal configs for it."
echo "Installing yay..."
yay
echo "yay successfully installed!"
echo "Installing packages...This may take a while..."
sudo pacman --noconfirm --needed -S feh vim man-db ttf-dejavu vifm neofetch htop xorg libx11 libxft libxinerama xorg-xinit openssh 
echo "Packages successfully installed..."
echo "Cloning and compiling git repositories...this is definitely going to take a while...#ripbozo"
repos
echo "Git repositories successfully compiled..."
echo "Cloning my configs..."
# configs
echo "Done!"

