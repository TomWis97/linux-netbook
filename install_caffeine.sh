#!/usr/bin/env bash
# Set variables so we can easily change them if necessary.
extension_uuid="caffeine@patapon.info"
extension_downloadurl="/download-extension/caffeine@patapon.info.shell-extension.zip?version_tag=5712"
install_path="$HOME/.local/share/gnome-shell/extensions"
extensions_site="https://extensions.gnome.org"

# Download zip to /tmp.
wget -O /tmp/caffeine-extension.zip "$extensions_site$extension_downloadurl"
# Create directory.
mkdir -p "$install_path/$extension_uuid"
# Extract zip to install location.
unzip -o /tmp/caffeine-extension.zip -d "$install_path/$extension_uuid"
# Delete temporary zip.
rm /tmp/caffeine-extension.zip

# Assume that the extension isn't enabled yet.
ext_cur_enabled=$(dconf read /org/gnome/shell/enabled-extensions | sed 's/^.\(.*\).$/\1/')
if [ "$ext_cur_enabled" = "" ]
    then
    echo "No extensions enabled yet."
    dconf write /org/gnome/shell/enabled-extensions "['${extension_uuid}']"
else
    echo "Already enabled extensions: ${ext_cur_enabled}"
    dconf write /org/gnome/shell/enabled-extensions "[${ext_cur_enabled}, '${ext_uuid}']"
fi
