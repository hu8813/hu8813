#!/bin/bash
bash -c "$(curl -fsSL https://raw.github.com/xicodomingues/francinette/master/bin/install.sh)"
cd ~/francinette
pip install -r requirements.txt
echo 'alias francinette="bash ~/francinette/tester.sh"' >> ~/.bashrc
echo 'alias francinette="bash ~/francinette/tester.sh"' >> ~/.zshrc
sed -i 's/python /python3 /' ~/francinette/tester.sh
source ~/.bashrc
source ~/.zshrc
