
## Manual de configuração do projeto

#### Obs: As instruções abaixo foram validadas em sistemas baseados em Unix.  

### Passos para configuração do ambiente

#### 1) Instalação do Docker.

-  [Click aqui](https://docs.docker.com/engine/install/) para ser direcionado ao site oficial do Docker, e seguir as instruções de instalação.

#### 2) Instalação do docker-compose.

-  [Click aqui](https://docs.docker.com/compose/install/) para ser direcionado ao site oficial do Docker, e seguir as instruções de instalação.

#### 3) Configuração do servidor de banco de dados.

Para clonar o projeto da imagem Docker do postgreSQL, escolha o local que deseja armazenar e execute o seguinte comando em seu terminal:

```
git clone git@github.com:lhffdev/container-docker-postgresql.git
```

Navegue até a raiz do projeto, crie um arquivo com o nome `.env` para configurarmos as variáveis de ambiente do container.

Acesse o arquivo criado com o seu editor de preferência e inclua o seguinte conteúdo:

```
POSTGRES_USER=postgres
POSTGRES_DB=postgres
POSTGRES_PASSWORD=postgres
```

Para manipular o servidor do postgreSQL, como iniciar ou finalizar o mesmo, existe uma pasta chamada ``scripts`` na raiz do projeto com comandos prontos que fazem esse trabalho, desse modo para iniciar o servidor execute o seguinte comando em seu terminal:

```
./scripts/up.sh
```