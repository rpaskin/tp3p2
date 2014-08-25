Tec Prog 3 Prova 2
==================

- [ ] Clone este repositório https://github.com/rpaskin/tp3p2 (0,5pt)
- [ ] Crie um branch com os nomes no grupo e trabalhem neste branch. (0,5pt)
- [ ] Crie um novo aplicativo rails chamado stats (0,5pt)
- [ ] Seu aplicativo terá um modelo de entradas para estatísticas, com a seguinte estrutura
 - [ ] id da entrada: id, int
 - [ ] nome da entrada: label, string
 - [ ] sequência de números: sequence, string (por exemplo "1,-4,10,20,23,22,50,-10")
 - [ ] nome do autor: author, string
- [ ] Crie um CRUD para entrada de dados do modelo acima (0,5pt)
- [ ] Crie testes usando rspec. Os testes devem testar:
- [ ] Criar um novo registro e verificar seus atributos (1pt)
- [ ] Apagar um registro e verificar se foi apagado (1pt)
- [ ] Adicionalmente, o modelo deve ter os seguintes campos a serem calculados automáticamente (0,5pt)
 - [ ] max, int
 - [ ] min, int
 - [ ] average, int
 - [ ] sum, int
 - [ ] lastName, string
- [ ] Na view de listagem dos registros, cada entrada deve mostrar os campos acima preenchidos corretamente com:
 - [ ] O valor máximo da sequência (0,5pt)
 - [ ] O valor mínimo da sequência (0,5pt)
 - [ ] O valor médio da sequência (0,5pt)
 - [ ] O sobrenome do autor em letras maiúsculas (0,5pt)
- [ ] Faça testes dos métodos que implementam cada aspecto acima (2pts)
- [ ] A cada ponto acima, fazer um commit no GIT com um comentário que inclua o número da questão (1pt)
* Cuidado! Um hacker pode te invadir! Faça commits, pushes e mantenha o repositório remoto atualizado com a maior frequência possível, você vai ter que lidar com quaisquer problemas que possam surgir! (0,5pt)

