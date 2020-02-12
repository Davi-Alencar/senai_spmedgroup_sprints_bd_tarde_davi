USE SPMedGroup

INSERT INTO Clinicas (NomeFantasia, Endereco, HorarioInicio, HorarioFim, CNPJ, RazaoSocial) VALUES ('SPMedicalGroup',
'Alameda Barão de Limeira, 538', '6:00', '21:00', '01.123.234/1234-12', 'Grupo Medico Social')

INSERT INTO TipoUsuarios (NomeTipoUsuario) VALUES ('Paciente'), ('Médico'), ('Admin')

INSERT INTO Usuarios (Email, Senha, IdTipoUsuario) VALUES ('helena@email.com', '123helena', 2), ('roberto@email.com', '123roberto', 2), 
('ricardo@email.com', '123ricardo', 2), ('mariana@email.com', '123mariana', 1), ('alexandre@email.com', '123alexandre', 1), 
('fernando@email.com', '123fernando', 1), ('henrique@email.com', '123henrique', 1), ('ademir@email.com', '123ademir', 3) 

INSERT INTO Especialidades (NomeEspecialidade) VALUES ('Oftalmo'), ('Otorrino'), ('Psiquiatra'), ('Pediatra')

INSERT INTO Medicos (CRM, NomeMedico, DataNascimento, RG, CPF, IdClinica, IdUsuario, IdEspecialidade) VALUES ('11111-1/BR', 'Helena Strada',
'11/01/1910', '11.111.111-1', '111.111.111-11', 1, 2, 1),  ('22222-2/BR', 'Roberto Possarle','22/02/1920', '22.222.222-2', '222.222.222-22', 1, 2, 2),
('33333-3/BR', 'Ricardo Lemos','30/03/1930', '33.333.333-3', '333.333.333-33', 1, 2, 4)

INSERT INTO Consultas (DataConsulta, Situação, IdMedico) VALUES ('20/01/2020  15:00:00', 'Realizada', 1), ('06/01/2020  10:00:00', 'Cancelada', 2),
('07/02/2020  11:00:00', 'Realizada', 1), ('06/02/2018  10:00:00', 'Realizada', 1), ('07/02/2019  11:00:45', 'Cancelada', 2), 
('08/03/2020  15:00:00', 'Agendada', 3), ('09/03/2020  11:00:45', 'Agendada', 3)

INSERT INTO Prontuarios (NomePaciente, DataNascimento, RG, CPF, IdClinica, IdUsuario, IdConsulta) VALUES ('Mariana', '10/01/2000',
'12.123.123.1', '123.123.123-12', 1, 4, 1),  ('Alexandre', '11/02/2001', '23.234.234.2', '234.234.234-23', 1, 5, 3), ('Fernando',
'12/03/2002', '34.345.345.3', '344.345.345-34', 1, 6, 4), ('Henrique', '13/04/2003', '45.456.456.4', '456.456.456-45', 1, 7, 6)

INSERT INTO Enderecos (Estado, Cidade, Municipio, Bairro, NomeRua, Telefone, IdUsuario, IdClinica) VALUES ('SP', 'SP',
'SP', 'Santa Cecília', 'Alameda Barão de Limeira 538', '0800123456', NULL, 1)

INSERT INTO Enderecos (Telefone, IdUsuario) VALUES ('0800123', '1'), ('0800234', '2'), ('0800345', '3'), ('0800456', '4'), ('0800567', '5'), ('0800678', '6'),
('0800789', '7')



