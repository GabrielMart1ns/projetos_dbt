SELECT
    id_funcionario,
    idade,
    genero,
    estado_civil,
    departamento,
    funcao,
    viagem,
    valor_diaria,
    indice_envolvimento_trabalho,
    CASE
        WHEN indice_envolvimento_trabalho = 1 THEN 'Ruim'
        WHEN indice_envolvimento_trabalho = 2 THEN 'Baixo'
        WHEN indice_envolvimento_trabalho = 3 THEN 'Médio'
        WHEN indice_envolvimento_trabalho = 4 THEN 'Alto'
        ELSE NULL
    END AS aval_envolvimento_trabalho,
    nivel_satisfacao_trabalho,
    CASE
        WHEN nivel_satisfacao_trabalho = 1 THEN 'Ruim'
        WHEN nivel_satisfacao_trabalho = 2 THEN 'Baixo'
        WHEN nivel_satisfacao_trabalho = 3 THEN 'Médio'
        WHEN nivel_satisfacao_trabalho = 4 THEN 'Alto'
        ELSE NULL
    END AS aval_satisfacao_trabalho,
    salario_mensal,
    numero_empresas_anteriores,
    disponivel_hora_extra,
    CASE
        WHEN disponivel_hora_extra = 'S' THEN 'Sim'
        WHEN disponivel_hora_extra = 'N' THEN 'Não'
        ELSE NULL
    END AS aval_hora_extra,
    percentual_ultimo_aumento_salario,
    aval_performance,
    CASE
        WHEN aval_performance = 1 THEN 'Ruim'
        WHEN aval_performance = 2 THEN 'Baixo'
        WHEN aval_performance = 3 THEN 'Médio'
        WHEN aval_performance = 4 THEN 'Alto'
        ELSE NULL
    END AS classificacao_performance,
    anos_experiencia,
    numero_treinamentos_ano_anterior,
    anos_na_empresa,
    anos_funcao_atual,
    anos_desde_ultima_promocao,
    IF(anos_desde_ultima_promocao >= 5, "Legítimo à promoção", "Não legítimo à promoção") AS aval_promocao,
    anos_com_gerente_atual
FROM
    {{ref("stg_tabelaRH")}}
