# Manual installing of unity
# Followed http://docs.unity3d.com/Manual/InstallingUnity.html
cask 'unity-ios-build-support' do
  version '5.3.1f1'
  sha256 :no_check

  depends_on :cask => 'unity-editor'

  # Download url can be found at ~/Downloads/UnityPackages/install.ini after opening 'Unity Download Assistant.app'
  url 'http://netstorage.unity3d.com/unity/cc9cbbcc37b4/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-5.3.1f1.pkg'
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  pkg "UnitySetup-iOS-Support-for-Editor-#{version}.pkg"

  uninstall :pkgutil => 'com.unity3d.iOSSupport'
end
