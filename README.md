# 🚀  Stack Ansible - WordPress + LEMP + SSL

A stack deste projeto foi projetada para realizar a configuração de um servidor mínimo para hospedagem de sites em WordPress. Usamos ferramentas como: **Ansible e ShellScript** para automatizar todo o processo de configuração do servidor. 


## Objetivo da Stack

O objetivo dessa stack é configurar rapidamente um ambiente de hospedagem para sites em WordPress, sendo um ambiente de **Desenvolvimento**, embora possa ser utilizado em produção, mas por conta e risco do usuário.

O fato de não recomendarmos nesse momento o uso em produção se dá justamente por não termos focado em segurança, e sim, no **ambiente mínimo** para que um site WordPress funcione.

# Arquitetura da Stack

A stack está totalmente dentro do escopo do Ansible, portanto todas as configurações do ambiente são gerenciadas pelo Ansible.
* **Ansible**
* - php
* - nginx
* - mysql 
* - ssl 
* - wordpress



## Requisitos

Você deve utilizar a Stack seguindo os requisitos abaixo:
* Ubuntu 18.04
* Domínio apontado para o IP do Servidor
* Acesso Root



## Preparando o Ambiente

Uma vez que você já está logado no servidor como root, e já fez os devidos apontamentos de DNS para o IP do servidor. Execute os passos abaixo:
#### 1) Instalação do Ansible e pacotes básicos
```shell
curl -fsSL alejunio.github.io/ansible-wordpress/pre-req.sh | sh
```

#### 2) Download da Stack
```shell
cd /home && git clone https://github.com/alejunio/ansible-wordpress.git projeto && cd projeto/ansible 
```
A stack será armazenada no diretório **/home/projeto**.
Os arquivos de configuração do servidor ficarão em:   **/home/projeto/ansible**.
As variáveis para personalizar a instalação ficarão em: **/home/projeto/ansible/vars/var.yml**.

## Ajustando sua Stack

Você deve editar as variáveis padrão para que consiga configurar corretamente seu site.
Usando um editor como o nano ou vim, abra o arquivo de variáveis:
**/home/projeto/ansible/vars/var.yml**.

Edite as variáveis abaixo antes de executar a stack:
-- db_user
-- db_user_password
-- db_name
-- dominio_site 
-- email

## Executando a Stack | Configuração Ambiente e Instalação Site WordPress

Uma vez que você já ajustou os parâmetros nas variáveis para configuração do site e já tem o DNS apontado para o IP do servidor, execute o comando abaixo para instalação do site.
```shell
cd /home/projeto/ansible && ansible-playbook playbook.yml 
```


