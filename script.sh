echo "Note:\n"
echo "This script requires \"livestreamer\" and \"vlc\". Therefore it will require root rights to install those packages!"
echo "================================================================================"

echo "================================================================================"
echo "Updating packages..."
echo "================================================================================"
sudo apt update

if sudo apt-get -qq install livestreamer; then
    echo "Successfully installed livestreamer"
else
    echo "Error installing livestreamer"
fi

if sudo apt-get -qq install vlc; then
    echo "Successfully installed vlc"
else
    echo "Error installing vlc"
fi

echo "================================================================================"
echo "Starting BIS..."
echo "================================================================================"
livestreamer http://www.ustream.tv/embed/17074538 best, --player "vlc --video-wallpaper"
