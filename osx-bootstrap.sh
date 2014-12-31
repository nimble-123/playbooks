echo "### OSX bootstrap ###"
echo "Installing Homebrew."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Installing Ansible."
brew install ansible
echo "Installing git."
brew install git

if [ ! -d ~/sources/playbooks ]; then
  echo "Cloning playbooks."
  git clone https://github.com/dghubble/playbooks ~/sources/playbooks
else
  echo "Pulling the latest playbook changes."
  cd ~/sources/playbooks
  git pull --ff-only
fi
