#!/bin/sh

# based on guide from Microsoft https://docs.microsoft.com/en-us/visualstudio/mac/uninstall

# Uninstall Visual Studio for Mac
echo "Uninstalling Visual Studio for Mac ..."

sudo rm -rf "/Applications/Visual Studio.app"
rm -rf ~/Library/Caches/VisualStudio
rm -rf ~/Library/Preferences/VisualStudio
rm -rf "~/Library/Preferences/Visual Studio"
rm -rf ~/Library/Logs/VisualStudio
rm -rf ~/Library/VisualLodStudio
rm -rf ~/Library/VisualStudio
rm -rf ~/Library/Preferences/Xamarin/


# Uninstall Mono SDK (MDK)
echo "Uninstalling Mono SDK (MDK)..."

sudo rm -rf /Library/Frameworks/Mono.framework
sudo pkgutil --forget com.xamarin.mono-MDK.pkg
sudo rm -rf /etc/paths.d/mono-commands


# Uninstall Xamarin.Android
echo "Uninstalling Xamarin.Android ..."

sudo rm -rf /Developer/MonoDroid
rm -rf ~/Library/MonoAndroid
sudo pkgutil --forget com.xamarin.android.pkg
sudo rm -rf /Library/Frameworks/Xamarin.Android.framework


# Uninstall Xamarin.iOS
echo "Uninstalling Xamarin.iOS ..."

rm -rf ~/Library/MonoTouch
sudo rm -rf /Library/Frameworks/Xamarin.iOS.framework
sudo rm -rf /Developer/MonoTouch
sudo pkgutil --forget com.xamarin.monotouch.pkg
sudo pkgutil --forget com.xamarin.xamarin-ios-build-host.pkg


# Uninstall Xamarin.Mac
echo "Uninstalling Xamarin.Mac ..."

sudo rm -rf /Library/Frameworks/Xamarin.Mac.framework
rm -rf ~/Library/Xamarin.Mac


# Uninstall Workbooks and Inspector
echo "Uninstalling Workbooks and Inspector ..."

sudo /Library/Frameworks/Xamarin.Interactive.framework/Versions/Current/uninstall


# Uninstall the Visual Studio Installer
echo "Uninstalling the Visual Studio Installer ..."

rm -rf ~/Library/Caches/XamarinInstaller/
rm -rf ~/Library/Caches/VisualStudioInstaller/
rm -rf ~/Library/Logs/XamarinInstaller/
rm -rf ~/Library/Logs/VisualStudioInstaller/
rm -rf ~/Library/Preferences/Xamarin/
rm -rf "~/Library/Preferences/Visual Studio/"

echo "Finished all Uninstallation process."
