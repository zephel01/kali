#!/bin/bash

# delete us-east1.ec2.
sudo sed -i 's/us-east-1\.ec2\.//g' /etc/apt/sources.list

sed -i -e "6,9s:^:#:" ~/.bashrc

# 開発環境インストール
sudo apt-get update
sudo apt upgrade
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev
sudo apt-get install libffi-dev

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

pyenv install 3.6.5
pyenv global 3.6.5

pip install --upgrade pip

## pip install
pip install -r ./requirements.txt

exec bash
