#!/bin/bash

# pyenv install

/usr/bin/git clone https://github.com/yyuu/pyenv.git ~/.pyenv

cd ~/.pyenv
mkdir shims
mkdir versions

cat << 'EOF' >> ~/.bashrc
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
EOF

source $HOME/.bashrc

pyenv install 3.6.8
pyenv global 3.6.8

pip install --upgrade pip

## pip install
pip install -r ~/kali/requirements.txt

exec bash
