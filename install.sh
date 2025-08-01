#!/usr/bin/env zsh

# HOW TO RUN THIS SCRIPT:
# chmod +x install.sh
# ./install.sh

# Set variables
DOTFILES_DIR=~/dotfiles
BACKUP_DIR=~/dotfiles_backup_$(date +%Y%m%d%H%M%S)

# List of dotfiles to link (add more as needed)
files=(
  .zshrc
)

echo "🔄 Starting dotfiles installation..."
echo "📁 Backing up existing dotfiles to: $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

for file in "${files[@]}"; do
  TARGET=~/$file
  SOURCE=$DOTFILES_DIR/$file

  if [[ -e "$TARGET" && ! -L "$TARGET" ]]; then
    echo "📦 Backing up existing $file"
    mv "$TARGET" "$BACKUP_DIR/"
  fi

  echo "🔗 Linking $SOURCE -> $TARGET"
  # Symlink this repo's .zshrc to ~/.zshrc. Using a symlink ensures that when the repo is
  # updated, the terminal will pick up the new version on reload without having to run
  # install again. This will overwrite any existing .zshrc.
  ln -vsfn "$SOURCE" "$TARGET"
done

echo "✅ Done. Reload your shell or run: source ~/.zshrc"
