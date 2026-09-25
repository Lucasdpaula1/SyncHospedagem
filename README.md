# StaySync API

API desenvolvida com **NestJS**, utilizando as seguintes tecnologias principais:

* **NestJS** — Framework principal da aplicação
* **Class Validator** — Validação e transformação de dados
* **Redis / ioredis** — Gerenciamento de cache e filas
* **BullMQ** — Processamento de jobs
* **PostgreSQL (pg)** — Banco de dados
* **Drizzle ORM** — ORM e gerenciamento de migrations

## Configuração do Ambiente

### 1. Subir o ambiente

```bash
docker compose up -d
```

### 2. Gerar as migrations

```bash
npm run generate
```

### 3. Executar as migrations

```bash
npm run migrate
```

### 4. Popular o banco de dados

```bash
npm run seed
```

### 5. Acessar o PostgreSQL via CLI

```bash
npm run db
```

O comando permite acessar o banco diretamente pelo terminal para verificar se as tabelas e estruturas foram criadas corretamente.

## Comandos disponíveis

| Comando            | Descrição                     |
| ------------------ | ----------------------------- |
| `npm run generate` | Gera as migrations            |
| `npm run migrate`  | Executa as migrations         |
| `npm run seed`     | Popula o banco de dados       |
| `npm run db`       | Acessa o PostgreSQL via CLI   |
| `npm run drop`     | Remove as estruturas do banco |

## Acesso manual ao banco

Caso seja necessário acessar o PostgreSQL diretamente pelo Docker:

```bash
docker exec -it staysync_postgres psql -U staysync_user -d staysync_db
```

## Instalação das dependências

### Produção

```bash
npm install --legacy-peer-deps drizzle-orm pg dotenv @nestjs/bullmq bullmq ioredis class-validator class-transformer
```

### Desenvolvimento

```bash
npm install -D --legacy-peer-deps drizzle-kit @types/pg tsx
```

### Configuração

```bash
npm i --save @nestjs/config
```

## Fluxo inicial

```text
docker compose up -d
        ↓
npm run generate
        ↓
npm run migrate
        ↓
npm run seed
        ↓
npm run db
```
