#!/bin/bash

clear
while true; do
echo "==========================================================
   Digite o número do componente/programa a ser instalado:
	1  - Atualização Update & Update & Autoclean & Autoremove
	2  - VS Code
	3  - Docker
	4  - Git
	5  - DBeaver
	6  - NVM
	7  - PHP & Composer & Laravel
	@  - Versão Instalada do Linux 
	00 - Saida com Reinicialização
	0  - Saida do Script

==========================================================="
echo -n "-> OPÇÃO:  "

read opcao

#verificar se foi digitada uma opcao
if [ -z $opcao ]; then
	echo "ERRO: digite uma opção"
	exit
fi

case $opcao in


	1) # Atualização Update & Update & Autoclean & Autoremove
		sudo apt-get upgrade -y
		sudo apt-get update -y
		sudo apt-get autoclean -y
		sudo apt-get autoremove -y;;

	2) # VS Code
		echo "Aqui vamos baixar o VS Code..."
		sudo apt install snapd -y
		snap install --classic code;;
	
	3) # Docker
		echo "Aqui vamos baixar o Docker..."		
		sudo apt-get install -y \
		     ca-certificates \
		     curl \
		     gnupg \
		     lsb-release
		sudo apt-get install docker.io
		sudo systemctl enable --now docker
		sudo systemctl disable --now docker
		sudo systemctl enable --now docker		
		sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
		sudo chmod +x /usr/local/bin/docker-compose
		sudo usermod -aG docker $USER;;
	
	4) # Git
		echo "Aqui vamos baixar o Git..."
		sudo apt-get install git;;
	
	5) # DBeaver
		echo "Aqui vamos baixar o DBeaver..."
		echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
		wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
		sudo apt-get update
		sudo apt-get install dbeaver-ce;;
	
	6) # NVM
		echo "Aqui vamos baixar o NVM..."
		wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | $SHELL;;
		
	7) # PHP & Composer & Laravel
		sudo apt-get update -y
		sudo apt-get upgrade -y
		sudo apt install php-cli unzip php-mbstring
		curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
		HASH=`curl -sS https://composer.github.io/installer.sig`
		php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
		sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
		composer
		echo "Aqui vamos baixar o NVM..."
		composer global require laravel/installer
		export PATH="$PATH:$HOME/.config/composer/vendor/bin"
		laravel;;
		
	@) # Versão Instalada do Linux
		lsb_release -a
		uname -a;;

	00) # Saída com Reinicialização
		echo "Saindo e reiniciando... "
		sudo reboot now;;

	0) 	# Saída do Script
		echo "Saindo... "
		exit;;

	*)
		echo
		echo "ERRO: opção inválida"
		echo ;;
esac
done