# начать с образа debian:12
# находимся в домашней директории пользователя (/root)
apt-get update && apt-get install wget net-tools openssh-server -y
mkdir -p ~/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKwOV7xGnQ5Ft8zKGEGjS4kijY5PhzfoShWjUs+Negtz textgen-ssh-root-key-20240505" >> ~/.ssh/authorized_keys
service ssh start
echo "SSH server has started"
sleep 86400
