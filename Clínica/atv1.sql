-- 1) buscar o nome e cpf dos medicos com menos de 40 anos ou com especialidade diferente da traumatologia --
select nome, cpf from medicos where idade < 40 or especialidade != "traumatologia";

-- 2) buscar todas os dados das consultas marcadas no período da tarde após o dia 19/06/2006 --
select * from consultas where data > 19/06/2006 and hora >= '12:00:00' and hora <= '18:00:00';

-- 3) buscar nome e idade dos pacientes que não residem em Florianópolis --
select nome, idade from pacientes where cidade != 'Florianópolis';

-- 4) buscar todas as consultas marcadas antes do dia 16/06/2024 e depois do dia 20/12/2024 --
select * from consultas where data < 16/06/2024 and data > 20/12/2024;

-- 5) buscar nome e idade (em meses) dos pacientes --
select nome, idade*12 as meses from pacientes;

-- 6) buscar em quais cidades residem os funcionarios --
select codf, nome, cidade from funcionarios; 

-- 7) buscar o menor e maior salario dos funcionários de Florianópolis --
select min(salario) as minimo, max(salario) as maximo from funcionarios where cidade = 'Florianópolis';

-- 8) buscar qual o horário da última consulta marcada para o dia 13/06/2024 --
select max(hora) as ultima from consultas where data = 2024-06-13;

-- 9) buscar a média de idade dos medicos e o total de ambulatórios atendidos por eles --
select avg(idade), sum(nroa) as MediaIdades from medicos;

-- 10) buscar o codigo, nome e salário líquido dos funcionários. salário líquido é obtido pela diferença entre o salário cadastrado menos 20% --
select codf, nome, salario*0.8 as salarioLiquido from funcionarios;

-- 11) buscar nomes de funcionarios que terminem com 'a' --
select nome from funcionarios where nome like '%a';

-- 12) buscar CPF dos funcionários que não possuam a sequencia '00000' em seus CPFs --
select CPF from funcionarios where CPF not like '00000'; 

-- 13) buscar nome e especialidade dos medicos cuja segunda e ultima letra de seus nomes seja 'o' --
select nome, especialidade from medicos where nome like '_o%o'; 

-- 14) buscar codigos e nomes dos pacientes com mais de 25 anos que estão com tendinite, fratura, gripe e sarampo --
select codp, nome, idade, doenca from pacientes where idade > 25 and doenca in ('tendinite', 'fratura', 'gripe', 'sarampo');
