# Teste para vaga na Orbit Labs

Teste backend para a empresa Orbit Labs

## Setup

Deve-se colocar as credenciais adequadas no arquivo ``` database.yml ```, localizada dentro do diretório config do projeto

Criar o banco com ```rake db:create``` e as tabelas com ```rake db:migrate```.

Popular o banco com o comando ```rake db:seed```,  gerando dois usuários e três eventos.

Para iniciar o servidor basta utilizar o comando ```rails server```

## Rotas

| Rota | Descrição |
|------|-----------|
| /events| Retorna lista dos eventos presentes no banco de dados.|
| /comments | Lista todos comentários presentes no banco de dados.|
| /comments/new | Possibilita a criação de um novo comentário. Obrigatória presença de todos parâmetros, incluindo IDs de usuários e eventos existentes|
| /reports | Lista todos os reports cadastrados no sistema.|
| /reports/new | Possibilita a criação de um novo report. Obrigatória presença de todos parâmetros, incluindo ID do usuário existente no banco que está registrando a denúncia e do comentário existente no banco que está sendo denunciado|
