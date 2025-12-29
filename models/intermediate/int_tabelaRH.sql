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
    aval_envolvimento_trabalho,
    aval_satisfacao_trabalho,
    aval_hora_extra,
    classificacao_performance,
    anos_desde_ultima_promocao,
    aval_promocao,
    anos_experiencia,
    numero_empresas_anteriores,
    anos_na_empresa,
    anos_funcao_atual,
    anos_com_gerente_atual
FROM
    {{ref("int_tabelaRH_calculos")}}
ORDER BY
    id_funcionario