# начать с образа debian:12
# находимся в домашней директории пользователя (/root)
apt-get update && apt-get install wget net-tools openssh-server -y

# Настроить доступ по SSH по публичному ключу
mkdir -p ~/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKwOV7xGnQ5Ft8zKGEGjS4kijY5PhzfoShWjUs+Negtz textgen-ssh-root-key-20240505" >> ~/.ssh/authorized_keys
service ssh start
echo "SSH server has started"

# Загрузить koboldcpp
wget -O koboldcpp https://github.com/LostRuins/koboldcpp/releases/download/v1.64.1/koboldcpp-linux-x64-cuda1150 && chmod +x koboldcpp

# Спать
sleep 172800
