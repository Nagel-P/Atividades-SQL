-- ###################################################################### --
-- ========= SE PREPARANDO PARA UMA PROVA P/ ANALISTA DE DADOS SQL =========
-- ###################################################################### --


-- Exercício 1. Você é Analista de Customer Experience (Experiência do Cliente) e precisa criar um relatório com os 100 primeiros clientes da história da empresa. Esses clientes receberão uma placa em reconhecimento á confiança dada.

-- Você precisa levantar essa lista de clientes dentro do banco de dados, em 10 minutos, pois o seu gestor solicitou essa informação para apresentar em uma reunião.

SELECT TOP 100 ID, Nome, Data_de_Cadastro
FROM Clientes
ORDER BY Data_de_Cadastro ASC;

-- Exercício 2. Você é Analista de Produtos e precisa levantar algumas informações sobre os produtos, como:
-- Quantidade de Produtos
-- Soma total de peso dos produtos
-- Preço Médio dos Produtos
-- Maior Preço
-- Menor Preço

-- Utilize seus conhecimentos em SQL para fazer essas análises dentro do Banco de Dados.

SELECT
    COUNT(ProductName) AS 'Qtde. '
    SUM(Weight) AS 'Peso total'
    AVG(UnitPrice) AS 'Media preço'
    MAX(UnitPrice) AS 'Maior preço'
    MIN(UnitPrice) AS 'Menor preço'

-- 3. Você agora é um Analista de RH da empresa e precisa saber a quantidade total de funcionários de cada departamento pois o Financeiro depende desse entendimento para dimensionar gastos para cada um dos departamentos, como bonificações, computadores, equipamentos de forma geral. Utilize seus conhecimentos para dar suporte à área financeira.

SELECT 
    Departamento
    COUNT(Departamento)
FROM Funcionarios
GROUP BY Departamento
ORDER BY COUNT(Departamento);