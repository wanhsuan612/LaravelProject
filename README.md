# Postgres

> [docker hub](https://hub.docker.com/_/postgres)

Default **username, password, db_name** is setting in the `docker-compose.yml.db.evniroment` section:

```yml
db:
    ...
    environment:
        POSTGRES_PASSWORD: example
        POSTGRES_USER: user
        POSTGRES_DB: name
```

Get configuration example from db container.

```bash
$ # get the default config
$ docker run -i --rm postgres cat /usr/share/postgresql/postgresql.conf.sample > postgres.conf
...
$ # customize the config
```

`volumes` section sync local configuration to container configuration,.

```yml
volumes: 
    - ./env_config/postgres.conf:/etc/postgresql.conf
```

`command` section let postgres run with configuration file.

```yml
command: postgres -c config_file=/etc/postgresql.conf
```

Login db by `localhost:8080` which setting by `adminer`.

- server: container_name
- username: POSTGRES_USER
- password: POSTGRES_PASSWORD
- db name: POSTGRES_DB

```yml
adminer:
    image: adminer
    restart: always
    ports:
      - 8080:8080
```
---