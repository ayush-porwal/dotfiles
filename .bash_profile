# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/.local/share/amazon-q/shell/bash_profile.pre.bash" ]] && builtin source "${HOME}/.local/share/amazon-q/shell/bash_profile.pre.bash"
# Source the user's .profile if it exists
if [ -f "$HOME/.profile" ]; then
    source "$HOME/.profile"
fi

export DVM_DIR="/home/ayush-porwal/.dvm"
export PATH="$DVM_DIR/bin:$PATH"

source "/home/ayush-porwal/.rover/env"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/.local/share/amazon-q/shell/bash_profile.post.bash" ]] && builtin source "${HOME}/.local/share/amazon-q/shell/bash_profile.post.bash"
