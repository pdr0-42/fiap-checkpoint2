# checkpoint2
Checkpoint 2

*Comando docker para executar a aplicação a partir do docker hub com o profile "dev" (desenvolvimento) - H2

- Para acessar colocar as seguintes informções:
  
- Username: sa
- Password: password
- Url: jdbc:h2:mem:testdb

```
docker run -d -p 8080:8080 -e PROFILE=dev souza11/fiap-checkpoint2
```

*Comando docker para executar a aplicação a partir do docker hub com o profile "prd" (produção) - Oracle SQL developer

- Para acessar colocar as seguintes informções:
  
- Username: pf1524
- Password: password
- Url: jdbc:oracle:thin:@oracle.fiap.com.br:1521:orcl

```
docker run -d -p 8080:8080 -e PROFILE=prd souza11/fiap-checkpoint2 
```

*Comando docker para executar a aplicação a partir do docker hub com o profile "stg"(stagging - homologação) - MySQL

- Para acessar colocar as seguintes informções:
  
- Username: root
- Password: root_pwd
- Url: jdbc:mysql://localhost:3306/rh?createDatabaseIfNotExist=true

```
docker run -d -p 8080:8080 -e PROFILE=stg souza11/fiap-checkpoint2 
