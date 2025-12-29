-- Reordenação de colunas
SELECT
    id_funcionario,
    genero,
    idade,
    estado_civil,
    departamento,
    funcao,
    salario_mensal,
    frequencia_de_viagem,
    valor_diaria,
    nv_envolvimento_trabalho,
    nv_satisfacao_trabalho,
    disponibilidade_de_horaExtra,
    classificacao_de_performance,
    anos_desde_ultima_promocao,
    avaliacao_promocao,
    anos_experiencia,
    numero_empresas_anteriores,
    anos_na_empresa,
    anos_funcao_atual,
    anos_com_gerente_atual
FROM
    {{ref("int_tabelaRH_calculos")}}
ORDER BY
    id_funcionario