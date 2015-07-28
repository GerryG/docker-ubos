
mkdir -p ~/git/github.com/uboslinux
cd ~/git/github.com/uboslinux
git clone https://github.com/uboslinux/ubos-buildconfig

# build
cd ~/git/github.com/uboslinux/ubos-buildconfig
make -f Makefile.dev IMPERSONATEDEPOT=code-is-current build-packages

# create boot images
cd ~/git/github.com/uboslinux/ubos-buildconfig
make -f Makefile.dev IMPERSONATEDEPOT=code-is-current build-images
