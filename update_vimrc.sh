# Check if the updated .vimrc file exists in the current directory
if [ -f "./.vimrc" ]; then
    # Backup the existing .vimrc in the home directory
    if [ -f "$HOME/.vimrc" ]; then
        echo "Backing up existing .vimrc to .vimrc.backup"
        cp "$HOME/.vimrc" "$HOME/.vimrc.backup"
    fi

    # Copy the updated .vimrc to the home directory instead of moving
    echo "Updating .vimrc in the home directory"
    cp "./.vimrc" "$HOME/.vimrc"

    echo ".vimrc has been updated successfully."
else
    echo "Updated .vimrc file not found in the current directory."
fi
