## Projeto base para o evento Bootcamp Imersão AWS com Docker que irei realizar.

### Período do evento: 15 a 21 de Maio/2023 (Online e ao vivo às 20h)

[>> Página de Inscrição do evento](https://org.imersaoaws.com.br/github/readme)

#### Para rodar as migrations no container ####
```
docker-compose exec server bash -c 'npx sequelize db:migrate'
```
