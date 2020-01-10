#!/bin/bash

chsh -s /bin/bash

# pyenv install
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
git clone git://github.com/yyuu/pyenv-update.git ~/.pyenv/plugins/pyenv-update

cat << 'EOF' >> ~/.bash_profile
PYENV_ROOT=~/.pyenv
export PATH=$PATH:$PYENV_ROOT/bin
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOF

source ~/.bash_profile

pyenv install 3.6.5
pyenv install 2.7.15
pyenv global 3.6.5

pyenv rehash

pip install --upgrade pip
