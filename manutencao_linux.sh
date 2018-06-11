#!/bin/bash

clear
while true; do
echo "==========================================================
       	Digite o número do componente/programa a ser instalado:
		1  - Atualização Update & Update & Autoclean & Autoremove
		2  - Gnome Tweak Tool - Personalizações, botões de janelas, temas e atalhos configuráveis).
		3  - VLC player - Reprodutor de vídeos
		4  - Codecs Ubuntu Restricted Extras - Reconhecimento e reprodução de áudio e vídeo
		5  - Google Chrome - Browser
		6  - Skype - Mensageiro e Videochamadas
		7 - GIMP - Editor de Imagens
		8 - qBittorrent - Gerenciador de Torrent
		9 - Java JRE - Java para Usuários
		10 - Flash Plugin - Para Usuários
		11 - Wine - Para execução de softwares Windows
		12 - Inkscape - Edição de imagens
		13 - Filezilla - Cliente FTP
		14 - MySQL - Sistema Gerenciador de Banco de Dados
		15 - Notepadqq - Bloco de notas similar ao Notepad++
		16 - Java JDK 8 - Java para Desenvolvimento
		17 - Kazan - Gravação de vídeos
		18 - IntelliJ - Para Desenvolvimento
		19 - Eclipse - Para Desenvolvimento
		20 - VM Ware - Máquinas virtuais - 5A02H-AU243-TZJ49-GTC7K-3C61N
		21 - Atom IDE - Para Desenvolvimento
		22 - PHP 7
		23 - Postgresql e PgAdmin3 - Sistema Gerenciador de Banco de Dados
		24 - Git - Versionamento
		25 - CodeBlocks - Editor de códigos
		26 - Virtual-Box - Máquinas virtuais
		27 - MariaDB - Sistema Gerenciador de Banco de Dados
		28 - Netbeans 8.2 IDE - Para Desenvolvimento
		29 - OpenSSH Server - Conexão SSH (lado Server)
		30 - OpenSSH Client - Conexão SSH (lado Client)
    	31 - Astah Professional
    	32 - Atom Editor - Para Desenvolvimento
		33 - PHPStorm
		34 - VSCode
		35 - Node
		36 - Composer
		37 - Angular
		38 - Ruby e Ruby on Rails
		39 - Laravel
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


	1) 	# Atualização Update & Update & Autoclean & Autoremove
		sudo apt-get upgrade -y
		sudo apt-get update -y
		sudo apt-get autoclean -y
		sudo apt-get autoremove -y;;

	2)  # Gnome Tweak Tool - Personalizações, botões de janelas, temas e atalhos configuráveis).
		sudo apt-get update -y
		sudo apt-get install gnome-tweak-tool -y;;

	3)	# VLC player - Reprodutor de vídeos
		sudo add-apt-repository ppa:videolan/stable-da1
		sudo apt-get update
		sudo apt-get install vlc -y;;

	4)	# Codecs Ubuntu Restricted Extras - Reconhecimento e reprodução de áudio e vídeo
		sudo apt-get update -y
		sudo apt-get install ubuntu-restricted-extras -y;;

	5)	# Google Chrome - Browser
		sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
		wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install google-chrome-stable -y;;

	6)	# Skype - Mensageiro e Videochamadas
		sudo apt-get update -y
		sudo apt-get install libqt4-dbus libqt4-network libqt4-xml libasound2 -y
		# Para Skype 32bits>>> wget http://www.skype.com/go/getskype-linux-beta-ubuntu-32
		wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
		sudo dpkg -i getskype-*
		sudo apt-get -f install -y;;

	7)	# GIMP - Editor de Imagens
		sudo apt-get upgrade -y
		sudo apt-get upgrade -y
		sudo apt-get install gimp -y;;

	8)	# qBittorrent - Gerenciador de Torrent
		sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
		sudo apt-get update -y
		sudo apt-get install qbittorrent -y;;

	9)	# Java JRE - Java para Usuários
		sudo apt-get update -y
		sudo apt-get install default-jdk -y;;

	10)	# Flash Plugin - Para Usuários
		sudo apt-get update -y;
		sudo apt-get install flashplugin-installer -y;;

	11) # Wine - Para execução de softwares Windows
		sudo apt-get upgrade
		sudo apt-get install wine -y;;

	12) # Inkscape - Edição de imagens
		sudo add-apt-repository ppa:inkscape.dev/stable -y
		sudo apt-get update
		sudo apt-get install inkscape -y;;

	13)	# Filezilla - Cliente FTP
		sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -cs)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
		wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install filezilla -y;;

	14)	# MySQL - Sistema Gerenciador de Banco de Dados
		sudo apt-get update -y
		sudo apt-get install mysql-server -y;;

	15)	# Notepadqq - Bloco de notas similar ao Notepad++
		sudo add-apt-repository ppa:notepadqq-team/notepadqq -y
		sudo apt-get update -y
		sudo apt-get install notepadqq -y
		sudo apt-get install notepadqq-gtk -y;;

	16)	# Java JDK 8 - Java para Desenvolvimento
		sudo apt-get remove openjdk-8-jdk -y
		sudo add-apt-repository ppa:openjdk-r/ppa -r -y
		sudo apt-get update -y
		sudo apt-get autoremove -y
		sudo apt-get purge openjdk* -y

		sudo add-apt-repository ppa:webupd8team/java -y
		sudo apt-get update -y
		sudo apt-get install oracle-java8-installer -y
		sudo apt-get install oracle-java8-set-default -y;;

	17)	# Kazan - Gravação de vídeos
		sudo add-apt-repository ppa:and471/kazam-daily-builds
		sudo apt-get update -y
		sudo apt-get install kazam -y;;

	18) # IntelliJ - Para Desenvolvimento
		sudo apt-get update -y
		sudo apt-get instal openjdk-8jdk -y
		sudo add-apt-repository ppa:mmk2410/intellij-idea-community -y
		sudo apt-get update -y
		sudo apt-get install intellij-idea-community -y;;

	19) # Eclipse - Para Desenvolvimento
		sudo apt-get update
		sudo apt-get install eclipse -y;;

	20) # VM Ware - Máquinas virtuais - 5A02H-AU243-TZJ49-GTC7K-3C61N
		wget http://www.vmware.com/go/tryworkstation-linux-64
		sudo chmod 777 * -R
		sudo ./tryworkstation-linux-64;;

	21)	# Atom IDE - Para Desenvolvimento
		sudo add-apt-repository ppa:webupd8team/atom -y
		sudo apt-get update
		sudo apt-get install atom -y;;

	22) # PHP 7
		sudo apt-get install python-software-properties -y
		sudo add-apt-repository ppa:ondrej/php -y
		sudo apt-get update -y
		sudo apt-get install php7.0 php7.0-fpm -y
		sudo apt-get install libapache2-mod-php7.0 -y
		sudo apt-get install php7.0-mysql -y
		sudo apt-get install php-xml
		sudo apt-get install php-mbstring
		sudo apt-get --purge autoremove -y;;

	23)	# Postgresql e PgAdmin3 - Sistema Gerenciador de Banco de Dados
		sudo apt-get update;
		sudo apt-get install postgresql -y
		sudo apt-get install pgadmin3 -y;;

	24)	#Git - Versionamento
		sudo apt-get update
		sudo apt-get install git -y
		sudo apt-get install git-gui -y;;

	25)	#CodeBlocks - Editor de códigos
		sudo add-apt-repository ppa:pasgui/ppa
		sudo apt-get update
		sudo apt-get install wx-common build-essential checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl check avahi-daemon codeblocks -y;;

	26)	# Virtual-Box - Máquinas virtuais
		sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list'
		wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install virtualbox -y;;

	27)	# MariaDB - Sistema Gerenciador de Banco de Dados
		sudo apt-get install software-properties-common -y
		sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
		sudo add-apt-repository "deb http://mirrors.coreix.net/mariadb/repo/10.0/ubuntu vivid main"
		sudo apt-get update -y
		sudo apt-get install mariadb-server -y;;

	28)	# Netbeans 8.2 IDE - Para Desenvolvimento
		sudo wget http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-linux.sh -O netbeans-linux.sh
		sudo chmod +x netbeans-linux.sh
		sudo ./netbeans-linux.sh -y;;

	29) #Open SSH-Server
		sudo apt-get update
		sudo apt-get install openssh-server -y;;

	30) #Open SSH-Client
		sudo apt-get update
		sudo apt-get install openssh-client;;

	31) #Astah Professional
		cd /tmp/
		wget http://cdn.astah.net/downloads/astah-professional-7_1_0-f2c212.zip
		sudo chmod 777 * -R
		sudo unzip -o astah-professional-7_1_0-f2c212.zip -d /opt/
		cd /usr/bin/
		sudo echo "" > astah
		sudo echo "!#/bin/bash" > astah
		sudo echo "java -jar /opt/astah_professional/astah-pro.jar" >> astah
		sudo chmod 555 /usr/bin/astah
		sudo convert /opt/astah_professional/astah.ico /opt/astah_professional/astah.png
		cd
		cd Downloads/
		sudo chmod 777 * -R
		sudo echo "" > Astah.desktop
		sudo echo "[Desktop Entry]" >>Astah
		sudo echo "Type=Application" >>Astah
		sudo echo "Comment=Create powerfull diagrams" >>Astah
		sudo echo "Icon[pt_BR]=/opt/astah_professional/astah-5.png" >>Astah
		sudo echo "Exec=astah">>Astah
		sudo echo "Name[pt_BR]=Astah Professional">>Astah
		sudo echo "Name=Astah">>Astah
		sudo echo "Icon=/opt/astah_professional/astah-5.png">>Astah
		sudo chmod 555 /Astah.desktop;;

  	32)	# Atom - Editor
    		sudo add-apt-repository ppa:webupd8team/atom
    		sudo apt-get update
    		sudo apt-get install atom;;
	
	33) #PHPStorm
		echo "Não possui instalação";;
	
	34)	#VS Code
		echo "Não possui instalação";;
	
	35) #Nodejs
		sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
		export NVM_DIR="$HOME/.nvm" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";;

	36) #Composer
		curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer;;

	37) #Angular
		sudo npm install -g @angular/cli;;
	
	38) #Ruby e Ruby on Rails
		sudo apt-get install ruby-full
		gem install rails;;
	
	39) #Laravel
		composer global require "laravel/installer"
		sudo apt-get install php-xml
		sudo apt-get install php-mbstring;;


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
