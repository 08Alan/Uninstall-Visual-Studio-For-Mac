# Uninstall-Visual-Studio-For-Mac

[reflink_MSDN](https://social.msdn.microsoft.com/Forums/en-US/c4e2953c-2e4e-440f-b3f8-3964eb64ae13/how-to-uninstall-visual-studio-for-mac-preview-version?forum=visualstudiogeneral)

[reflink_docsMS](https://docs.microsoft.com/en-us/visualstudio/mac/uninstall)

## 建議使用時機
- Visual Studio For Mac Version：7.0.1(Build 24)

```
#!/bin/sh
# Uninstall Visual Studio for Mac
sudo rm -rf "/Applications/Visual Studio.app"
rm -rf ~/Library/Caches/VisualStudio
rm -rf ~/Library/Preferences/VisualStudio
rm -rf "~/Library/Preferences/Visual Studio"
rm -rf ~/Library/Logs/VisualStudio
rm -rf ~/Library/VisualLodStudio
rm -rf ~/Library/VisualStudio
rm -rf ~/Library/Preferences/Xamarin/

# Uninstall Mono SDK (MDK)
sudo rm -rf /Library/Frameworks/Mono.framework
sudo pkgutil --forget com.xamarin.mono-MDK.pkg
sudo rm -rf /etc/paths.d/mono-commands

# Uninstall Xamarin.Android
sudo rm -rf /Developer/MonoDroid
rm -rf ~/Library/MonoAndroid
sudo pkgutil --forget com.xamarin.android.pkg
sudo rm -rf /Library/Frameworks/Xamarin.Android.framework

# Uninstall Xamarin.iOS
rm -rf ~/Library/MonoTouch
sudo rm -rf /Library/Frameworks/Xamarin.iOS.framework
sudo rm -rf /Developer/MonoTouch
sudo pkgutil --forget com.xamarin.monotouch.pkg
sudo pkgutil --forget com.xamarin.xamarin-ios-build-host.pkg

# Uninstall Xamarin.Mac
sudo rm -rf /Library/Frameworks/Xamarin.Mac.framework
rm -rf ~/Library/Xamarin.Mac

# Uninstall Workbooks and Inspector
sudo /Library/Frameworks/Xamarin.Interactive.framework/Versions/Current/uninstall

# Uninstall the Visual Studio Installer
rm -rf ~/Library/Caches/XamarinInstaller/
rm -rf ~/Library/Caches/VisualStudioInstaller/
rm -rf ~/Library/Logs/XamarinInstaller/
rm -rf ~/Library/Logs/VisualStudioInstaller/
rm -rf ~/Library/Preferences/Xamarin/
rm -rf "~/Library/Preferences/Visual Studio/"
```
