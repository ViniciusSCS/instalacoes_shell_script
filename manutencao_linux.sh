#!/bin/bash

clear
while true; do
echo "==========================================================
       	Digite o número do componente/programa a ser instalado:
		1  - Todos Abaixo
		2  - Ambiente para Usuários
		3  - Ambiente para Desenvolvedores
		4  - Atualização Update & Update & Autoclean & Autoremove
		5  - Gnome Tweak Tool - Personalizações, botões de janelas, temas e atalhos configuráveis).
		6  - VLC player - Reprodutor de vídeos
		7  - Codecs Ubuntu Restricted Extras - Reconhecimento e reprodução de áudio e vídeo
		8  - Google Chrome - Browser
		9  - Skype - Mensageiro e Videochamadas
		10 - GIMP - Editor de Imagens
		11 - qBittorrent - Gerenciador de Torrent
		12 - Java JRE - Java para Usuários
		13 - Flash Plugin - Para Usuários
		14 - Wine - Para execução de softwares Windows
		15 - Inkscape - Edição de imagens
		16 - Filezilla - Cliente FTP
		17 - MySQL - Sistema Gerenciador de Banco de Dados
		18 - Notepadqq - Bloco de notas similar ao Notepad++
		19 - Java JDK 8 - Java para Desenvolvimento
		20 - Kazan - Gravação de vídeos
		21 - IntelliJ - Para Desenvolvimento
		22 - Eclipse - Para Desenvolvimento
		23 - VM Ware - Máquinas virtuais - 5A02H-AU243-TZJ49-GTC7K-3C61N
		24 - Atom IDE - Para Desenvolvimento
		25 - PHP 7
		26 - Postgresql e PgAdmin3 - Sistema Gerenciador de Banco de Dados
		27 - Git - Versionamento
		28 - CodeBlocks - Editor de códigos
		29 - Virtual-Box - Máquinas virtuais
		30 - MariaDB - Sistema Gerenciador de Banco de Dados
		31 - Netbeans 8.2 IDE - Para Desenvolvimento
		32 - OpenSSH Server - Conexão SSH (lado Server)
		33 - OpenSSH Client - Conexão SSH (lado Client)
    34 - Atom Editor - Para Desenvolvimento
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
	1) # Todos
		#4 - Atualização Update & Update & Autoclean & Autoremove
		sudo apt-get upgrade -y
		sudo apt-get update -y
		sudo apt-get autoclean -y
		sudo apt-get autoremove -y
		#5 - Gnome Tweak Tool - Personalizações, botões de janelas, temas e atalhos configuráveis).
		sudo apt-get update -y
		sudo apt-get install gnome-tweak-tool -y
		#6 - VLC player - Reprodutor de vídeos
		sudo add-apt-repository ppa:videolan/stable-da1
		sudo apt-get update
		sudo apt-get install vlc -y
		#7 - Codecs Ubuntu Restricted Extras - Reconhecimento e reprodução de áudio e vídeo
		sudo apt-get update -y
		sudo apt-get install ubuntu-restricted-extras -y
		#8 - Google Chrome - Browser
		sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
		wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install google-chrome-stable -y
		#9 - Skype - Mensageiro e Videochamadas
		sudo apt-get update -y
		sudo apt-get install libqt4-dbus libqt4-network libqt4-xml libasound2 -y
		# Para Skype 32bits>>> wget http://www.skype.com/go/getskype-linux-beta-ubuntu-32
		wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
		sudo dpkg -i getskype-*
		sudo apt-get -f install -y
		#10 - GIMP - Editor de Imagens
		sudo apt-get upgrade -y
		sudo apt-get upgrade -y
		sudo apt-get install gimp -y
		#11 - qBittorrent - Gerenciador de Torrent
		sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
		sudo apt-get update -y
		sudo apt-get install qbittorrent -y
		#12 - Java JRE - Java para Usuários
		sudo apt-get update -y
		sudo apt-get install default-jdk -y
		#13 - Flash Plugin - Para Usuários
		sudo apt-get update -y;
		sudo apt-get install flashplugin-installer -y
		#14 - Wine - Para execução de softwares Windows
		sudo apt-get upgrade
		sudo apt-get install wine -y
		#15 - Inkscape - Edição de imagens
		sudo add-apt-repository ppa:inkscape.dev/stable -y
		sudo apt-get update
		sudo apt-get install inkscape -y
		#16 - Filezilla - Cliente FTP
		sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -cs)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
		wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install filezilla -y
		#17 - MySQL - Sistema Gerenciador de Banco de Dados
		sudo apt-get update -y
		sudo apt-get install mysql-server -y
		#18 - Notepadqq - Bloco de notas similar ao Notepad++
		sudo add-apt-repository ppa:notepadqq-team/notepadqq -y
		sudo apt-get update -y
		sudo apt-get install notepadqq -y
		sudo apt-get install notepadqq-gtk -y
		#19 - Java JDK 8 - Java para Desenvolvimento
		sudo apt-get remove openjdk-8-jdk -y
		sudo add-apt-repository ppa:openjdk-r/ppa -r -y
		sudo apt-get update -y
		sudo apt-get autoremove -y
		sudo apt-get purge openjdk* -y
		sudo add-apt-repository ppa:webupd8team/java -y
		sudo apt-get update -y
		sudo apt-get install oracle-java8-installer -y
		sudo apt-get install oracle-java8-set-default -y
		#20 - Kazan - Gravação de vídeos
		sudo add-apt-repository ppa:and471/kazam-daily-builds -y
		sudo apt-get update -y
		sudo apt-get install kazam -y
		#21 - IntelliJ - Para Desenvolvimento
		sudo apt-get update -y
		sudo apt-get instal openjdk-8jdk -y
		sudo add-apt-repository ppa:mmk2410/intellij-idea-community -y
		sudo apt-get update -y
		sudo apt-get install intellij-idea-community -y
		#22 - Eclipse - Para Desenvolvimento
		sudo apt-get update
		sudo apt-get install eclipse -y
		#23 - VM Ware - Máquinas virtuais - 5A02H-AU243-TZJ49-GTC7K-3C61N
		wget http://www.vmware.com/go/tryworkstation-linux-64
		sudo chmod 777 * -R
		sudo ./tryworkstation-linux-64
		#24 - Atom IDE - Para Desenvolvimento
		sudo add-apt-repository ppa:webupd8team/atom -y
		sudo apt-get update
		sudo apt-get install atom -y
		#25 - PHP 7
		sudo apt-get install python-software-properties -y
		sudo add-apt-repository ppa:ondrej/php -y
		sudo apt-get update -y
		sudo apt-get install php7.0 php7.0-fpm -y
		sudo apt-get install libapache2-mod-php7.0 -y
		sudo apt-get install php7.0-mysql -y
		sudo apt-get --purge autoremove -y
		#26 - Postgresql e PgAdmin3 - Sistema Gerenciador de Banco de Dados
		sudo apt-get update
		sudo apt-get install postgresql -y
		sudo apt-get install pgadmin3 -y
		#27 - Git - Versionamento
		sudo apt-get update
		sudo apt-get install git -y
		sudo apt-get install git-gui -y
		#28 - CodeBlocks - Editor de códigos
		sudo add-apt-repository ppa:pasgui/ppa
		sudo apt-get update
		sudo apt-get install wx-common build-essential checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl check avahi-daemon codeblocks -y
		#29 - Virtual-Box - Máquinas virtuais
		sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list'
		wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install virtualbox -y
		#30 - MariaDB - Sistema Gerenciador de Banco de Dados
		sudo apt-get install software-properties-common -y
		sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
		sudo add-apt-repository "deb http://mirrors.coreix.net/mariadb/repo/10.0/ubuntu vivid main"
		sudo apt-get update -y
		sudo apt-get install mariadb-server -y
		#31 - Netbeans 8.2 IDE - Para Desenvolvimento
		wget http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-linux.sh -O netbeans-linux.sh
		sudo chmod +x netbeans-linux.sh
		sudo ./netbeans-linux.sh -y;;

	2) # Ambiente de uso comuns: 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14
		#4 - Atualização Update & Update & Autoclean & Autoremove
		sudo apt-get upgrade -y
		sudo apt-get update -y
		sudo apt-get autoclean -y
		sudo apt-get autoremove -y
		#5 - Gnome Tweak Tool - Personalizações, botões de janelas, temas e atalhos configuráveis).
		sudo apt-get update -y
		sudo apt-get install gnome-tweak-tool -y
		#6 - VLC player - Reprodutor de vídeos
		sudo add-apt-repository ppa:videolan/stable-da1
		sudo apt-get update
		sudo apt-get install vlc
		#7 - Codecs Ubuntu Restricted Extras - Reconhecimento e reprodução de áudio e vídeo
		sudo apt-get update -y
		sudo apt-get install ubuntu-restricted-extras -y
		#8 - Google Chrome - Browser
		sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
		wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install google-chrome-stable -y
		#9 - Skype - Mensageiro e Videochamadas
		sudo apt-get update -y
		sudo apt-get install libqt4-dbus libqt4-network libqt4-xml libasound2 -y
		# Para Skype 32bits>>> wget http://www.skype.com/go/getskype-linux-beta-ubuntu-32
		wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
		sudo dpkg -i getskype-*
		sudo apt-get -f install -y
		#10 - GIMP - Editor de Imagens
		sudo apt-get upgrade -y
		sudo apt-get upgrade -y
		sudo apt-get install gimp -y
		#11 - qBittorrent - Gerenciador de Torrent
		sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
		sudo apt-get update -y
		sudo apt-get install qbittorrent -y
		#12 - Java JRE - Java para Usuários
		sudo apt-get update -y
		sudo apt-get install default-jdk -y
		#13 - Flash Plugin - Para Usuários
		sudo apt-get update -y;
		sudo apt-get install flashplugin-installer -y
		#14 - Wine - Para execução de softwares Windows
		sudo apt-get upgrade
		sudo apt-get install wine -y;;

	3) # Ambiente de desenvolvimento: 4, 5, 6, 7, 8, 9, 10, 11 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26
		#4 - Atualização Update & Update & Autoclean & Autoremove
		sudo apt-get upgrade -y
		sudo apt-get update -y
		sudo apt-get autoclean -y
		sudo apt-get autoremove -y
		#5 - Gnome Tweak Tool - Personalizações, botões de janelas, temas e atalhos configuráveis).
		sudo apt-get update -y
		sudo apt-get install gnome-tweak-tool -y
		#6 - VLC player - Reprodutor de vídeos
		sudo add-apt-repository ppa:videolan/stable-da1
		sudo apt-get update
		sudo apt-get install vlc -y
		#7 - Codecs Ubuntu Restricted Extras - Reconhecimento e reprodução de áudio e vídeo
		sudo apt-get update -y
		sudo apt-get install ubuntu-restricted-extras -y
		#8 - Google Chrome - Browser
		sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
		wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install google-chrome-stable -y
		#9 - Skype - Mensageiro e Videochamadas
		sudo apt-get update -y
		sudo apt-get install libqt4-dbus libqt4-network libqt4-xml libasound2 -y
		# Para Skype 32bits>>> wget http://www.skype.com/go/getskype-linux-beta-ubuntu-32
		wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
		sudo dpkg -i getskype-*
		sudo apt-get -f install -y
		#10 - GIMP - Editor de Imagens
		sudo apt-get upgrade -y
		sudo apt-get upgrade -y
		sudo apt-get install gimp -y
		#11 - qBittorrent - Gerenciador de Torrent
		sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
		sudo apt-get update -y
		sudo apt-get install qbittorrent -y
		#12 - Java JRE - Java para Usuários
		sudo apt-get update -y
		sudo apt-get install default-jdk -y
		#13 - Flash Plugin - Para Usuários
		sudo apt-get update -y;
		sudo apt-get install flashplugin-installer -y
		#14 - Wine - Para execução de softwares Windows
		sudo apt-get upgrade
		sudo apt-get install wine -y
		#15 - Inkscape - Edição de imagens
		sudo add-apt-repository ppa:inkscape.dev/stable -y
		sudo apt-get update
		sudo apt-get install inkscape -y
		#16 - Filezilla - Cliente FTP
		sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -cs)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
		wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install filezilla -y
		#17 - MySQL - Sistema Gerenciador de Banco de Dados
		sudo apt-get update -y
		sudo apt-get install mysql-server -y
		#18 - Notepadqq - Bloco de notas similar ao Notepad++
		sudo add-apt-repository ppa:notepadqq-team/notepadqq -y
		sudo apt-get update -y
		sudo apt-get install notepadqq -y
		sudo apt-get install notepadqq-gtk -y
		#19 - Java JDK 8 - Java para Desenvolvimento
		sudo apt-get remove openjdk-8-jdk -y
		sudo add-apt-repository ppa:openjdk-r/ppa -r -y
		sudo apt-get update -y
		sudo apt-get autoremove -y
		sudo apt-get purge openjdk* -y
		sudo add-apt-repository ppa:webupd8team/java -y
		sudo apt-get update -y
		sudo apt-get install oracle-java8-installer -y
		sudo apt-get install oracle-java8-set-default -y
		#20 - Kazan - Gravação de vídeos
		sudo add-apt-repository ppa:and471/kazam-daily-builds
		sudo apt-get update -y
		sudo apt-get install kazam -y
		#21 - IntelliJ - Para Desenvolvimento
		sudo apt-get update -y
		sudo apt-get instal openjdk-8jdk -y
		sudo add-apt-repository ppa:mmk2410/intellij-idea-community -y
		sudo apt-get update -y
		sudo apt-get install intellij-idea-community -y
		#22 - Eclipse - Para Desenvolvimento
		sudo apt-get update
		sudo apt-get install eclipse -y
		#23 - VM Ware - Máquinas virtuais - 5A02H-AU243-TZJ49-GTC7K-3C61N
		wget http://www.vmware.com/go/tryworkstation-linux-64
		sudo chmod 777 * -R
		sudo ./tryworkstation-linux-64
		#24 - Atom IDE - Para Desenvolvimento
		sudo add-apt-repository ppa:webupd8team/atom -y
		sudo apt-get update
		sudo apt-get install atom -y
		#25 - PHP 7
		sudo apt-get install python-software-properties -y
		sudo add-apt-repository ppa:ondrej/php -y
		sudo apt-get update -y
		sudo apt-get install php7.0 php7.0-fpm -y
		sudo apt-get install libapache2-mod-php7.0 -y
		sudo apt-get install php7.0-mysql -y
		sudo apt-get --purge autoremove -y
		#26 - Postgresql e PgAdmin3 - Sistema Gerenciador de Banco de Dados
		sudo apt-get update;
		sudo apt-get install postgresql -y
		sudo apt-get install pgadmin3 -y
		# 27 - Git - Versionamento
		sudo apt-get update
		sudo apt-get install git -y
		sudo apt-get install git-gui -y
		#32 - Open SSH-Server
		sudo apt-get update
		sudo apt-get install openssh-server -y
		#33 - Open SSH-Client
		sudo apt-get update
		sudo apt-get install openssh-client;;


	4) 	# Atualização Update & Update & Autoclean & Autoremove
		sudo apt-get upgrade -y
		sudo apt-get update -y
		sudo apt-get autoclean -y
		sudo apt-get autoremove -y;;

	5)  # Gnome Tweak Tool - Personalizações, botões de janelas, temas e atalhos configuráveis).
		sudo apt-get update -y
		sudo apt-get install gnome-tweak-tool -y;;

	6)	# VLC player - Reprodutor de vídeos
		sudo add-apt-repository ppa:videolan/stable-da1
		sudo apt-get update
		sudo apt-get install vlc -y;;

	7)	# Codecs Ubuntu Restricted Extras - Reconhecimento e reprodução de áudio e vídeo
		sudo apt-get update -y
		sudo apt-get install ubuntu-restricted-extras -y;;

	8)	# Google Chrome - Browser
		sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
		wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install google-chrome-stable -y;;

	9)	# Skype - Mensageiro e Videochamadas
		sudo apt-get update -y
		sudo apt-get install libqt4-dbus libqt4-network libqt4-xml libasound2 -y
		# Para Skype 32bits>>> wget http://www.skype.com/go/getskype-linux-beta-ubuntu-32
		wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
		sudo dpkg -i getskype-*
		sudo apt-get -f install -y;;

	10)	# GIMP - Editor de Imagens
		sudo apt-get upgrade -y
		sudo apt-get upgrade -y
		sudo apt-get install gimp -y;;

	11)	# qBittorrent - Gerenciador de Torrent
		sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
		sudo apt-get update -y
		sudo apt-get install qbittorrent -y;;

	12)	# Java JRE - Java para Usuários
		sudo apt-get update -y
		sudo apt-get install default-jdk -y;;

	13) # Flash Plugin - Para Usuários
		sudo apt-get update -y;
		sudo apt-get install flashplugin-installer -y;;

	14) # Wine - Para execução de softwares Windows
		sudo apt-get upgrade
		sudo apt-get install wine -y;;

	15) # Inkscape - Edição de imagens
		sudo add-apt-repository ppa:inkscape.dev/stable -y
		sudo apt-get update
		sudo apt-get install inkscape -y;;

	16)	# Filezilla - Cliente FTP
		sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -cs)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
		wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install filezilla -y;;

	17)	# MySQL - Sistema Gerenciador de Banco de Dados
		sudo apt-get update -y
		sudo apt-get install mysql-server -y;;

	18)	# Notepadqq - Bloco de notas similar ao Notepad++
		sudo add-apt-repository ppa:notepadqq-team/notepadqq -y
		sudo apt-get update -y
		sudo apt-get install notepadqq -y
		sudo apt-get install notepadqq-gtk -y;;

	19)	# Java JDK 8 - Java para Desenvolvimento
		sudo apt-get remove openjdk-8-jdk -y
		sudo add-apt-repository ppa:openjdk-r/ppa -r -y
		sudo apt-get update -y
		sudo apt-get autoremove -y
		sudo apt-get purge openjdk* -y

		sudo add-apt-repository ppa:webupd8team/java -y
		sudo apt-get update -y
		sudo apt-get install oracle-java8-installer -y
		sudo apt-get install oracle-java8-set-default -y;;

	20)	# Kazan - Gravação de vídeos
		sudo add-apt-repository ppa:and471/kazam-daily-builds
		sudo apt-get update -y
		sudo apt-get install kazam -y;;

	21) # IntelliJ - Para Desenvolvimento
		sudo apt-get update -y
		sudo apt-get instal openjdk-8jdk -y
		sudo add-apt-repository ppa:mmk2410/intellij-idea-community -y
		sudo apt-get update -y
		sudo apt-get install intellij-idea-community -y;;

	22) # Eclipse - Para Desenvolvimento
		sudo apt-get update
		sudo apt-get install eclipse -y;;

	23) # VM Ware - Máquinas virtuais - 5A02H-AU243-TZJ49-GTC7K-3C61N
		wget http://www.vmware.com/go/tryworkstation-linux-64
		sudo chmod 777 * -R
		sudo ./tryworkstation-linux-64;;

	24) # Atom IDE - Para Desenvolvimento
		sudo add-apt-repository ppa:webupd8team/atom -y
		sudo apt-get update
		sudo apt-get install atom -y;;

	25) # PHP 7
		sudo apt-get install python-software-properties -y
		sudo add-apt-repository ppa:ondrej/php -y
		sudo apt-get update -y
		sudo apt-get install php7.0 php7.0-fpm -y
		sudo apt-get install libapache2-mod-php7.0 -y
		sudo apt-get install php7.0-mysql -y
		sudo apt-get --purge autoremove -y;;

	26) # Postgresql e PgAdmin3 - Sistema Gerenciador de Banco de Dados
		sudo apt-get update;
		sudo apt-get install postgresql -y
		sudo apt-get install pgadmin3 -y;;

	27)	#Git - Versionamento
		sudo apt-get update
		sudo apt-get install git -y
		sudo apt-get install git-gui -y;;

	28)	#CodeBlocks - Editor de códigos
		sudo add-apt-repository ppa:pasgui/ppa
		sudo apt-get update
		sudo apt-get install wx-common build-essential checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl check avahi-daemon codeblocks -y;;

	29)	# Virtual-Box - Máquinas virtuais
		sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list'
		wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
		sudo apt-get update -y
		sudo apt-get install virtualbox -y;;

	30)	# MariaDB - Sistema Gerenciador de Banco de Dados
		sudo apt-get install software-properties-common -y
		sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
		sudo add-apt-repository "deb http://mirrors.coreix.net/mariadb/repo/10.0/ubuntu vivid main"
		sudo apt-get update -y
		sudo apt-get install mariadb-server -y;;

	31)	# Netbeans 8.2 IDE - Para Desenvolvimento
		sudo wget http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-linux.sh -O netbeans-linux.sh
		sudo chmod +x netbeans-linux.sh
		sudo ./netbeans-linux.sh -y;;

	32) #Open SSH-Server
		sudo apt-get update
		sudo apt-get install openssh-server -y;;

	33) #Open SSH-Client
		sudo apt-get update
		sudo apt-get install openssh-client;;

	34) #Astah Professional
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

  34) # Atom - Editor
    sudo add-apt-repository ppa:webupd8team/atom
    sudo apt-get update
    sudo apt-get install atom


	00) # Saída com Reinicialização
		echo "Saindo e reiniciando... "
		sudo reboot now;;

	0) # Saída do Script
		echo "Saindo... "
		exit;;

	*)
		echo
		echo "ERRO: opção inválida"
		echo ;;
esac
done
