![alt text](https://raw.githubusercontent.com/alejunio/ansible-wordpress/main/img/ansible-wordpress.png)

# 🚀  Stack Ansible - WordPress + LEMP + SSL

A stack deste ansible foi projetada para realizar a configuração de um servidor mínimo para hospedagem de sites em WordPress. Usamos ferramentas como: **Ansible e ShellScript** para automatizar todo o processo de configuração do servidor. 


## Objetivo da Stack

O objetivo dessa stack é configurar rapidamente um ambiente de hospedagem para sites em WordPress, sendo um ambiente de **Desenvolvimento**, embora possa ser utilizado em produção, mas por conta e risco do usuário.

O fato de não recomendarmos nesse momento o uso em produção se dá justamente por não termos focado em segurança, e sim, no **ambiente mínimo** para que um site WordPress funcione.

# Arquitetura da Stack

A Stack Ansible WordPress possui toda a pilha LEMP (Nginx, PHP, MySQL) Redis Cache e WordPress.

## Requisitos

A Stack está funcional seguindo os requisitos abaixo:
* Ubuntu 18.04 | Acesso root
* DNS configurado
* Cadastro Nginx Amplify
* 2GB RAM Mínimo / Recomendado 4GB RAM


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

#### 3) Gerando as senhas do MySQL e Usuario SFTP

```shell
chmod +x /home/projeto/ansible/pass.sh
bash /home/projeto/ansible/pass.sh
```

- A stack será armazenada no diretório **/home/projeto/ansible**.
- Os arquivos de configuração do servidor ficarão em:   **/home/projeto/ansible/**.
- As variáveis para personalizar a instalação ficarão em: **/home/projeto/ansible/vars/var.yml**.
- As credenciais e senhas do MySQL e Usuário SFTP estão em: **/home/credenciais**

## Ajustando sua Stack

Todas as credenciais do banco de dados e usuário SFTP foram gerados automáticamente, no entanto você ainda deve inserir o domínio, e-mail
e a API KEY do Amplify caso vá utilizar.

**/home/projeto/ansible/vars/var.yml**.

Edite as variáveis abaixo antes de executar a stack:
```shell
 dominio_site: 
 email:
 key_amplify: 
```
## Executando a Stack | Configuração Ambiente e Instalação Site WordPress

Uma vez que você já ajustou os parâmetros nas variáveis para configuração do site e já tem o DNS apontado para o IP do servidor, execute o comando abaixo para instalação do site.
```shell
cd /home/projeto/ansible && ansible-playbook playbook.yml 
```

Para instalar a ferramenta de monitoramento e ferramenta de segurança execute os comandos abaixo
```shell
cd /home/projeto/ansible && ansible-playbook monitoramento.yml 
cd /home/projeto/ansible && ansible-playbook seguranca.yml
```

## Monitoramento Nginx Amplify 

![alt text](https://raw.githubusercontent.com/alejunio/ansible-wordpress/main/img/amplify.PNG)

O Nginx Amplify é uma ferramenta gratuita onde você pode monitorar e coletar métricas a respeito do Nginx e PHP-FPM através do navegador. 

Link cadastro: https://amplify.nginx.com/login



## Atenção

Softwares e ferramentas da solução.

 - [x] Nginx 
 - [x] PHP 
 - [x] MySQL 
 - [x] SSL Certbot Let's Encrypt
 - [x] Adminer MySQL
 - [x] Composer
 - [x] Redis Cache
 - [ ] Seletor PHP
 - [x] Conta SFTP 
 - [ ] Fail2Ban
 - [x] UFW Firewall
 - [x] ClamAV
 - [x] WP CLI
 - [x] Monitoramento Nginx e PHP: Nginx Amplify
 - [ ] Backup Local


 ## Referências / Creditos 

https://docs.ansible.com/index.html </br>
https://github.com/geerlingguy/ansible-role-php </br>
https://galaxy.ansible.com/docs/using/installing.html

## Consultoria
* https://alexjunio.com.br
* https://alejunio.cloud