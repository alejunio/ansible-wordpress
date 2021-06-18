#/bin/bash

## Criacao de variaveis e geracao de senhas
db_user_password=$(head -c 500 /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 25 | head -n 1)
mysql_root_password=$(head -c 500 /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 25 | head -n 1)
user_password=$(head -c 500 /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 25 | head -n 1)

## Criando arquivo de senhas
cat > /home/credentials<<EOF
# Passwords MySQL 
DB WordPress PASS: ${db_user_password}
MySQL ROOT PASS: ${mysql_root_password}

# Password Access SFTP
User: ${{user_site}}
Password: ${user_password}
Port: 22
EOF

# Inserindo as informacoes no arquivo de variavel ansible
sed -i "s/dbpass.*/${db_user_password}/" /home/projeto/ansible/vars/vars.yml
sed -i "s/passdbroot.*/${mysql_root_password}/" /home/projeto/ansible/vars/vars.yml
sed -i "s/passuser.*/${user_password}/" /home/projeto/ansible/vars/vars.yml


