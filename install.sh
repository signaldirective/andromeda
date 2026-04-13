#!/bin/bash

# Function to ask y/n questions
ask_yes_no() {
    while true; do
        read -p "$1 (y/n): " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer y or n.";;
        esac
    done
}

# Function to open URL in browser
open_browser() {
    omarchy-launch-browser "$1"
}

echo "=== Andromeda Theme Installer ==="

# Ask about opening gnome-look URL
if ask_yes_no "Would you like to open the Vivid-Glassy-Dark-Icons theme page on GNOME-Look?"; then
    echo "Opening GNOME-Look page..."
    open_browser "https://www.gnome-look.org/p/2119129"  # Replace with actual URL
fi

# Ask about opening VSCode URL
if ask_yes_no "Would you like to open the Andromeda VScode theme page on GitHub?"; then
    echo "Opening GitHub page..."
    open_browser "https://github.com/EliverLara/Andromeda"  # Replace with actual URL
fi

# Ask about opening GTK URL
if ask_yes_no "Would you like to open the Andromeda-GTK theme page on GitHub?"; then
    echo "Opening GitHub page..."
    open_browser "https://github.com/EliverLara/Andromeda-gtk"  # Replace with actual URL
fi

# Ask about opening KDE URL
if ask_yes_no "Would you like to open the Andromeda-KDE theme page on GitHub?"; then
    echo "Opening GitHub page..."
    open_browser "https://github.com/EliverLara/Andromeda-KDE"  # Replace with actual URL
fi
# Ask about installing Ghostty theme
if ask_yes_no "Would you like to install the Ghostty theme?"; then
    echo "Installing Ghostty theme..."
    # Add Ghostty theme installation commands here
    echo "Ghostty theme installation completed."
fi

# Ask about Wayflipper
if ask_yes_no "Do you have Wayflipper installed?"; then
    echo "Running wayflipper Andromeda..."
    if command -v wayflipper &> /dev/null; then
        wayflipper Andromeda
        echo "Wayflipper Andromeda command executed."
    else
        echo "Wayflipper not found in PATH. Please ensure it's installed and accessible."
    fi
else
    if ask_yes_no "Would you like to open the Wayflipper installation page?"; then
        echo "Opening Wayflipper installation page..."
        open_browser "https://github.com/OldJobobo/wayflipper"  # Replace with actual URL
    fi
    
    echo "Please re-run ./install.sh after installing Wayflipper."
    exit 0
fi

echo "=== Installation Complete ==="
echo "Andromeda extras installation script complete."
