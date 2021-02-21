# 🚀 Stack Ansible - WordPress + LEMP + SSL

<p align="center">A stack foi projetada para criar um <b>ambiente de desenvolvimento</b> simples para aplicações em WordPress usando a pilha LEMP (Linux, Nginx, MySQL e PHP ) e SSL com Let's Encrypt.</p>



<h2> Manual Utilização </h2>

Execute os passos abaixos após estar logado no servidor com usuário root ou com usuários que possam usar o sudo

1. Acesse o servidor via SSH

2. Script para instalacao do Ansible e pacotes adicionais
<code> teste comando </code>

3. Baixe o repositório do projeto 

4. Configure seu domínio e credenciais
<code> nano /home/projeto/ansible/vars/vars.yml </code> </br>
Valores default: </br>
db_user: user </br>
db_user_password: 654321 </br>
db_name: db-default </br>
dominio_site: site.com.br </br>
email: exemplo@email.com </br>