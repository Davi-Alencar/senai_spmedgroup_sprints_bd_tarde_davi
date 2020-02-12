USE SPMedGroup

SELECT Consultas.IdConsulta,
		Consultas.DataConsulta,
		Consultas.Situação,
		Prontuarios.IdProntuario,
		Clinicas.NomeFantasia
FROM Prontuarios
INNER JOIN Consultas ON Prontuarios.IdConsulta = Consultas.IdConsulta
INNER JOIN Usuarios ON Prontuarios.IdUsuario = Usuarios.IdUsuario
INNER JOIN Clinicas ON Prontuarios.IdClinica = Clinicas.IdClinica

SELECT Consultas.IdConsulta,
		Consultas.DataConsulta,
		Consultas.Situação,
		Prontuarios.IdProntuario,
		Medicos.IdMedico,
		Clinicas.NomeFantasia
FROM Prontuarios
INNER JOIN Consultas ON Prontuarios.IdConsulta = Consultas.IdConsulta
INNER JOIN Usuarios ON Prontuarios.IdUsuario = Usuarios.IdUsuario
INNER JOIN Medicos ON Consultas.IdMedico = Medicos.IdMedico
INNER JOIN Clinicas ON Prontuarios.IdClinica = Clinicas.IdClinica

CREATE PROCEDURE MedicoEspecialidade
@CampoBusca INT
AS
SELECT Medicos.IdMedico, Especialidades.NomeEspecialidade
FROM Medicos
INNER JOIN Especialidades ON Medicos.IdEspecialidade = Especialidades.IdEspecialidade
WHERE Medicos.IdEspecialidade = @CampoBusca;

EXECUTE MedicoEspecialidade 2;