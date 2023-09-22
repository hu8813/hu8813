#!/bin/bash
bash -c "$(curl -fsSL https://raw.github.com/xicodomingues/francinette/master/bin/install.sh)"
cd ~/francinette
pip install -r requirements.txt
echo 'alias francinette="bash ~/francinette/tester.sh"' >> ~/.bashrc
echo 'alias francinette="bash ~/francinette/tester.sh"' >> ~/.zshrc
sed -i 's/python /python3 /' ~/francinette/tester.sh
source ~/.bashrc
source ~/.zshrc
echo "Installation complete."
echo "You can now use 'francinette' by typing 'francinette' in a new terminal and folder where your project is."
