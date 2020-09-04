#!/bin/sh -ex

buildinstall() {
	P=$(pwd)
	cd $1	
	
	makepkg --ignorearch --syncdeps --clean --cleanbuild --force --noconfirm --install
	
	# in case there's nothing to copy, don't fail
	cp -n *.pkg.tar.xz ../pkg || true
	cd ..

	
}
build() {
	P=$(pwd)
	cd $1
	
	makepkg --ignorearch --syncdeps --clean --cleanbuild --force --noconfirm 
	
	# in case there's nothing to copy, don't fail
	cp -n *.pkg.tar.xz ../pkg || true
	cd ..
}


mkdir -p build

cd build
mkdir -p pkg
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/lcov
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/wlcs
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/mir
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/cmake-extras-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/libqtdbustest-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/unity-api-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/dbus-test-runner
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/ubuntu-download-manager-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/properties-cpp
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/ubuntu-app-launch-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/process-cpp
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/zmqpp
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/url-dispatcher-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/thumbnailer-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/qt5-pim-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/qt5-systems-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/humanity-icon-theme
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/ubuntu-ui-toolkit-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/gsettings-qt-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/content-hub-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/libqtdbusmock-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/qtmir-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/settings-components-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/history-service-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/dbus-cpp
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/trust-store-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/click-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/accountsservice-ubuntu
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/geonames-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/qmenumodel-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/system-settings-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/gmenuharness-bzr
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/qdjango-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/libusermetrics-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/gsettings-ubuntu-touch-schemas-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/biometryd
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/unity-notifications
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/libayatana-indicator-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/ayatana-indicator-display-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/ayatana-indicator-notifications-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/ayatana-indicator-messages-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/ayatana-indicator-sound-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/ayatana-indicator-power-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/indicator-network-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/ayatana-indicator-session-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/ayatana-indicator-datetime-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/lomiri-dev/unity8-git



buildinstall lcov
buildinstall wlcs
buildinstall mir
buildinstall cmake-extras-git
buildinstall libqtdbustest-git
buildinstall unity-api-git
buildinstall dbus-test-runner
buildinstall ubuntu-download-manager-git
buildinstall properties-cpp
buildinstall ubuntu-app-launch-git
buildinstall process-cpp
buildinstall zmqpp
buildinstall url-dispatcher-git
buildinstall thumbnailer-git
buildinstall qt5-pim-git
buildinstall qt5-systems-git
buildinstall humanity-icon-theme
buildinstall ubuntu-ui-toolkit-git
buildinstall gsettings-qt-git
buildinstall content-hub-git
buildinstall libqtdbusmock-git
buildinstall qtmir-git
buildinstall settings-components-git
buildinstall history-service-git
buildinstall dbus-cpp
buildinstall trust-store-git
buildinstall click-git
buildinstall accountsservice-ubuntu
buildinstall geonames-git
buildinstall qmenumodel-git
buildinstall system-settings-git
buildinstall gmenuharness-bzr
buildinstall qdjango-git
buildinstall libusermetrics-git
buildinstall gsettings-ubuntu-touch-schemas-git
buildinstall biometryd
buildinstall unity-notifications
buildinstall libayatana-indicator-git
buildinstall ayatana-indicator-display-git
buildinstall ayatana-indicator-notifications-git
buildinstall ayatana-indicator-messages-git
buildinstall ayatana-indicator-sound-git
buildinstall ayatana-indicator-power-git
buildinstall indicator-network-git
buildinstall ayatana-indicator-session-git
buildinstall ayatana-indicator-datetime-git
buildinstall unity8-git


echo "Removing all the build pkg & deps"
sudo pacman -Rnsc lcov wlcs mir cmake-extras-git libqtdbustest-git unity-api-git dbus-test-runner ubuntu-download-manager-git properties-cpp ubuntu-app-launch-git process-cpp zmqpp url-dispatcher-git thumbnailer-git qt5-pim-git qt5-systems-git humanity-icon-theme ubuntu-ui-toolkit-git gsettings-qt-git content-hub-git libqtdbusmock-git qtmir-git settings-components-git history-service-git dbus-cpp trust-store-git click-git accountsservice-ubuntu geonames-git qmenumodel-git system-settings-git gmenuharness-bzr qdjango-git libusermetrics-git gsettings-ubuntu-touch-schemas-git biometryd unity-notifications libayatana-indicator-git ayatana-indicator-display-git ayatana-indicator-notifications-git ayatana-indicator-messages-git ayatana-indicator-sound-git ayatana-indicator-power-git indicator-network-git ayatana-indicator-session-git ayatana-indicator-datetime-git unity8-git 
