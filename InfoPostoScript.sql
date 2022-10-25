CREATE DATABASE InfoPosto 
GO
USE InfoPosto
GO 
CREATE TABLE tbFaleConosco(Nome VARCHAR(50), Email VARCHAR(100), Mensagem VARCHAR(1000))
GO
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('Ed Carlos Alves Feitoza','edcfeitoza@gmail.com','Bom dia gostei muito da aplicação nota 10!!')
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('Alan Dias','alan.dias@gmail.com','Boa Tarde gostei muito da aplicação nota 10!!')
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('Ana Fonseca','anafonseca@ig.com.br','Boa noite gostei muito da aplicação nota 10!!')
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('Diego Ferreira','diego.ferreira@globo.com','Gostei muito da aplicação nota 10!!')
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('Emilio Santos','emilio.santos@hotmail.com','Boa noite gostei muito da aplicação nota 10!!')
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('Fernando Martins','fernandomartins@outlook.com.br','Aplicação nota 10!!')
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('Isac Oliveira','isacoliveira@ig.com.br','Bom dia gostei muito da aplicação nota 10!!')
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('José Olegario','josé.olegario@globo.com','Boa noite gostei muito da aplicação nota 10!!')
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('Lucas Pupo Nascimento','lucaspuponascimento@uol.com.br','Gostei muito da aplicação nota 10!!')
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('Luiza Feitoza','luizafeitoza@hotmail.com','Boa noite gostei muito da aplicação nota 10!!')
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('Marcos Xavier','marcosxavier@outlook.com.br','Aplicação nota 10!!')
INSERT INTO tbFaleConosco(Nome,Email,Mensagem) VALUES ('Maria Silva','maria.silva@gmail.com','Gostei muito da aplicação nota 10!!')
GO


CREATE TABLE tbCliente(Nome VARCHAR(50), Cpf VARCHAR(11),Sexo CHAR(2), Telefone VARCHAR(9), Endereco VARCHAR(100), Numero VARCHAR(5), Cidade VARCHAR (40), Bairro VARCHAR(50), Cep VARCHAR(08), Email VARCHAR(50))
GO
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Alan Dias', '26843515032', 'M','915944598', 'Rua Olga', '15', 'Barueri', 'Centro', '06436390', 'alan.dias@gmail.com')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Ana Fonseca', '15843576903', 'F','974198516','Rua Luiz de Camoes','45','Osasco','Jardim Tupan','06435190', 'anafonseca@ig.com.br')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Diego Ferreira', '48593548134', 'M','941655678', 'Av Itu','90','Carapicuiba','Jardim Paulista','06447020','diego.ferreira@globo.com')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Emilio Santos', '38468537354', 'M','945451695',' Avenida Zelia','120O','Osasco','Parque dos Camargos','06436000','emilio.santos@hotmail.com')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Fernando Martins', '41968536208', 'M','942016512',' Rua Ricardo Reis','136','Itapevi','Centro','06435240','fernandomartins@outlook.com.br')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Guilherme Santos', '45468535063', 'M','915934598', ' Rua Campos Sales','363','Barueri','Centro','06401000','guilhermesantos@gmail.com')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Isac Oliveira', '48968533917', 'M','915945598', ' Rua Duque de Caxias','458','Carapicuiba','Centro','06401010','isacoliveira@ig.com.br')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('José Olegario', '52468532772', 'M','915944898', 'Estrada Velha de Itapevi','5780','Osasco','Parque dos Camargos','06444000','josé.olegario@globo.com')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Lucas Pupo Nascimento', '15968531626', 'M','915946598', 'Rua Dora','17','Jandira','Centro','06436210','lucaspuponascimento@uol.com.br')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Luiza Feitoza', '39468530480', 'F','915904598', 'Rua Gastao de Vidigal','21','Osasco','Centro','06415210','luizafeitoza@hotmail.com')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Marcos Xavier', '12968529335', 'M','915948598', 'Alameda Caiapos','29','Jandira','Tambore','06460110','marcosxavier@outlook.com.br')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Maria Silva', '22468528189', 'F','915940098', 'Alameda Tocantis','39','Itapevi','Centro','06455020','maria.silva@gmail.com' )
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Nilton Fernandes', '49968527044', 'M','915943598', 'Rua da Prata','47','Barueri','Vila Porto','06410000','niltonfernandes@ig.com.br')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Olga Sousa', '33468525898', 'O','915946598', 'Rua Vinte e Seis de Março','10','Barueri','Centro','06341180','olga.sousa@globo.com' )
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Oscar Cunha', '46968524752', 'M','915944798', 'Avenida Brigadeiro Jordão','10','Osasco','Jardim Silveira','06433010','oscarcunha@uol.com.br')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Pablo Vitar', '10468523607', 'O','915944998', 'Rua Maisa','184','Itapevi','Parque dos Camargos','06720148','pablovitar@hotmail.com')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Tereza Souza', '23968522461', 'M','915944597', 'Avenida Municipal','87','Jandira','Centro','08747070','tereza.souza@outlook.com.br')
INSERT INTO tbCliente(Nome,Cpf, Sexo,Telefone,Endereco, Numero,Cidade,Bairro,Cep,Email) VALUES ('Ed Carlos Alves', '27593520703', 'M','915944590','Rua Vera Cruz','14','Carapicuiba','Jardim Paulista','06423010','edcarlosalves@uol.com.br')


CREATE TABLE [dbo].[tbLogin](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NULL,
	[Senha] [varchar](20) NULL,
	[Ativo] [char](1) NULL,
	[Nome] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


GO
CREATE TABLE tbPosto(
NomeDono VARCHAR(50),
NomePosto VARCHAR(40),
Endereco VARCHAR(100),
Bairro VARCHAR(20),
Numero varchar(10),
Email VARCHAR(30),
ValorCombustivel decimal,
SenhaUsuario VARCHAR(20) )
-- tbPosto (nomedono, nomeposto, endereco , bairro , email, numero, cnpj, valordocombustivel, senhausuario)


SELECt*FROM tbPosto