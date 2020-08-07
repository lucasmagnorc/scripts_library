/***********************************************************************************************
* TÍTULO: Alterar senha de um usuário do banco
************************************************************************************************
* DATA: 13/04/2019
  AUTOR: Lucas Magno
************************************************************************************************
* DESCRIÇÃO: Este código atualiza a politica de segurança de senha e altera a senha de um 
  usuário
************************************************************************************************
* TRECHO 1: Seta a politica de segurança de senha para baixa
************************************************************************************************/
SET GLOBAL validate_password.policy = 0;

/************************************************************************************************
* TRECHO 2: Altera a senha do usuário, onde "root" é o nome do usuário e "senhanova" é a nova 
  senha do usuário
************************************************************************************************/
alter user 'root'@'locallhost' IDENTIFIED BY 'senhanova';
