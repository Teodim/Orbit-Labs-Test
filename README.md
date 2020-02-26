# Teste para vaga na Orbit Labs

Teste backend para a empresa Orbit Labs

## Configuração inicial

Deve-se colocar as credenciais adequadas no arquivo ``` database.yml ```, localizada dentro do diretório config do projeto.

Criar o banco de dados localmente com o comando ```rake db:create```  e as tabelas com ```rake db:migrate```.

Popular o banco de dados com dois usuários e três eventos com o comando ```rake db:seed``` .

Para iniciar o servidor basta utilizar o comando ```rails server```. Todos comandos devem ser feitos no console dentro da pasta do projeto.

## Métodos e Rotas

| Method |  Route  | Parameters | Description |
|---|---|---|---|
|  POST  |/comments| user_id, event_id, text | Cria um novo comentário no banco de dados. Todos parâmetros são obrigatórios e tanto user_id quanto event_id devem referenciar ids de usuários e eventos presentes no banco de dados. |
|   GET  |/comments| user_id, comment_id, reports | Lista todos os comentários presentes no banco caso nenhum parâmetro seja enviado. A lista exibida pode ser filtrada por user_id e comment_id e caso o parâmetro reports esteja presente com qualquer valor, não exibira os comentários denunciados.|
|  POST  |/reports | user_id, comment_id | Registra uma denúncia de um usuário indicado por user_id em um comentário indicado por comment_id. Todos parâmetros são obrigatórios e devem referenciar ids de usuários e comentários presentes no banco de dados. |
|  GET   |/events  | --- | Retorna lista dos eventos presentes no banco de dados.|
