Insert into USUARIO(LOGIN,NAME,PASSWORD) values ('bruno','Bruno Oliveira','$2a$06$FysHWiin3uWxgOehse34IO2YDBm9gJEA.54PRn7GjbiPp0S3YVuuS');
Insert into ROLE (NAME) values ('ROLE_ADMIN');
Insert into ROLE (NAME) values ('ROLE_USER');
Insert into USUARIO_ROLE (USUARIO_LOGIN,ROLES_NAME) values ('bruno','ROLE_ADMIN');