# Instalação do OCS Inventory versão 2.12.0 no linux Debian 12

apt install -y git

git clone https://github.com/davigalucio/ocsinventoryserver.git

sh ocsinventoryserver/INSTALL.SH

# Após a instalação, acesse via broswer http://IP_DO_HOST/ocsreports para concluir a configuração:

Usuário Mysql: ocs_user
Senha Mysql: ocs_password
Nome da base de dados: ocs_db
Servidor Mysql: localhost
Porta MySQL : 3306
Habilitar SSL: Não

1. Clique em:

"enviar"

2. Logo em seguida, clique em:

"Clique aqui para entrar na interface do OCS-NG"

3. Depois:

"Realizar a atualização"

4. E clique fazer o primeiro login:

"Clique aqui para entrar na interface do OCS-NG"

5. Seleciona a linguagem de sua preferência:

usuário: admin
senha: admin

6. Depois retorne ao terminal e digite:

mv /usr/share/ocsinventory-reports/ocsreports/install.php /usr/share/ocsinventory-reports/ocsreports/install.php.bkp

7. Siga as alterações informados no ALERTA:

Troque a senha padrão do usuário "admin"



