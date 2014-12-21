echo "### osx bootstrap ###"
echo "bootstrapping..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible
brew install git
echo "bootstrapping complete"

echo "provisining..."
git clone https://github.com/dghubble/playbooks ~/sources/playbooks
cd ~/sources

ansible-playbook playbooks/osx-dev.yml -i "localhost," -c local --ask-sudo-pass
echo "provisioning complete"