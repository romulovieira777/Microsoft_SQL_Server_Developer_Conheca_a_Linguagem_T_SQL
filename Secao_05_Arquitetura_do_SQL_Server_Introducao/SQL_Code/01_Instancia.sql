/*
Assunto : Instância

- Uma instalação do executável do mecanismo de
  banco de dados que é executado
  como serviço no sistema operacional.

- Um servidor pode ter uma instâncias
  ou várias instâncias.

- Cada inst�ncia trabalha de forma 
  isolada, com seus banco de dados. 

- Conexões são feitas na instÂncias - Logon

- Para conectar é preciso:
  IP, 
  Porta, 
  Login/Senha ou Autenticação Integrada.

- Gerenciamento é realizado pelo Configuration Manager

*/

SELECT @@servername, @@servicename
