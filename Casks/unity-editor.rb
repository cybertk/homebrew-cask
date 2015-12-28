# Manual installing of unity
# Followed http://docs.unity3d.com/Manual/InstallingUnity.html
cask 'unity-editor' do
  version '5.2.3f1'
  sha256 :no_check

  url 'http://download.unity3d.com/download_unity/f3d16a1fa2dd/MacEditorInstaller/Unity-5.2.3f1.pkg'
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  pkg 'Unity.pkg'

  uninstall :quit => 'com.unity3d.UnityEditor5.x',
            :pkgutil => 'com.unity3d.UnityEditor5.x'
end
