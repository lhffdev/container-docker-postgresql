## Manual de configuração do projeto

#### Obs: As instruções abaixo foram validadas em sistemas baseados em Unix.

### Passos para configuração do ambiente

#### 1) Instalação do Docker.

-  [Click aqui](https://docs.docker.com/engine/install/) para ser direcionado ao site oficial do Docker, e seguir as instruções de instalação.

#### 2) Instalação do docker-compose.

-  [Click aqui](https://docs.docker.com/compose/install/) para ser direcionado ao site oficial do Docker, e seguir as instruções de instalação.

#### 3) Configuração do seu usuário para executar comandos docker sem o uso do sudo.

-  [Click aqui](https://docs.docker.com/engine/install/linux-postinstall/) para ser direcionado ao site oficial do Docker, e seguir as instruções de configuração.

#### 4) Configuração do servidor de banco de dados.

Para clonar o projeto da imagem Docker do postgreSQL, escolha o local que deseja armazenar e execute o seguinte comando em seu terminal:

```
git clone git@github.com:lhffdev/container-docker-postgresql.git
```

Navegue até a raiz do projeto, crie uma cópia do arquivo  `.env.sample`  para o mesmo diretório com o nome `.env` para configurarmos as variáveis de ambiente do container.
Nesse arquivo você pode customizar as seguintes variáveis conforme seu gosto:
```
PGDATA_PATH=./files2docker/databases
BACKUP_PATH=./files2docker/backup
POSTGRES_PORT=5432
POSTGRES_PASSWORD=postgresql
POSTGRES_USER=postgresql
POSTGRES_DB=postgresql
```

Para manipular o servidor do postgreSQL, como iniciar ou finalizar o mesmo, existe uma pasta chamada ``scripts`` na raiz do projeto com comandos prontos que fazem esse trabalho, desse modo para iniciar o servidor execute o seguinte comando em seu terminal:

  

```
./scripts/up.sh
```