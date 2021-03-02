create database TIM;

create table empresas(
  nit_emp varchar(25) primary key,
  nom_emp varchar(40) not null,
  tel_emp varchar(15) not null,
  dir_emp varchar(20) not null
);

create table conductores(
  cod_cond varchar(15) primary key,
  nom_cond varchar(30) not null,
  tel_cond varchar(10),
  nit_emp varchar(25),
  CONSTRAINT fk_empresa FOREIGN KEY (nit_emp) REFERENCES empresas (nit_emp)
);

create table propietarios(
  cod_prop varchar(15) primary key,
  nom_prop varchar(30) not null,
  tel_prop varchar(10)
);

create table vehiculos(
  placa varchar(8) primary key,
  est_veh int(1) not null,
  nit_emp varchar(25),
  cod_prop varchar(15),
  CONSTRAINT fk_empresa_vehiculos FOREIGN KEY (nit_emp) REFERENCES empresas (nit_emp),
  CONSTRAINT fk_propietario_vehiculos FOREIGN KEY (cod_prop) REFERENCES propietarios (cod_prop)
);

INSERT INTO empresas (nit_emp,nom_emp,tel_emp,dir_emp) values
('0000001', 'gran caldas','8974512','cll 62 # 8-45'),
('0000002', 'socobuses','8977865','cll 63 # 9-46'),
('0000003', 'unitrans','8975263','cll 64 # 10-47'),
('0000004', 'sideral','8971234','cll 65 # 11-48'),
('0000005', 'arauca','8979874','cll 66 # 12-49');

INSERT INTO conductores (cod_cond,nom_cond,tel_cond,nit_emp) values
('00001','juan','5412871','0000001'),
('00002','julian','5412972','0000003'),
('00003','andres','5413073','0000004'),
('00004','camilo','9874561','0000002'),
('00005','manuel','8875521','0000003');

INSERT INTO propietarios (cod_prop,nom_prop,tel_prop) values
('001','manuel','5414251'),
('002','david','5413596'),
('003','tomas','5417412'),
('004','pablo','9879852'),
('005','marcela','8873594');

INSERT INTO vehiculos (placa,est_veh,nit_emp,cod_prop) values
('1','1','0000001','001'),
('2','0','0000001','002'),
('3','1','0000001','003'),
('4','1','0000002','004'),
('5','1','0000002','005');
