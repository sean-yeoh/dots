yay -S --needed --noconfirm asdf-vm openssl zlib xz tk python gcc make python-pip rust libffi libyaml

source ~/.zshrc

cat ~/.tool-versions | cut -d' ' -f1 | grep "^[^\#]" | xargs -i asdf plugin add  {}
asdf install
asdf reshim