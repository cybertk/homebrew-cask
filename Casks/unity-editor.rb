# Manual installing of unity
# Followed http://docs.unity3d.com/Manual/InstallingUnity.html
cask 'unity-editor' do
  version '5.3.1f1'
  sha256 :no_check

  # Download url can be found at ~/Downloads/UnityPackages/install.ini after opening 'Unity Download Assistant.app'
  url 'http://netstorage.unity3d.com/unity/cc9cbbcc37b4/MacEditorInstaller/Unity.pkg'
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall :quit => 'com.unity3d.UnityEditor5.x',
            :pkgutil => 'com.unity3d.UnityEditor5.x'
end
