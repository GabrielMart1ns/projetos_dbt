
SELECT
    id_funcionario,
    idade,
    genero,
    `estado civil` as estado_civil,
    departamento,
    funcao,
    viagem as frequencia_de_viagem,
    `valor diaria` as valor_diaria,
    indice_envolvimento_trabalho,
    nivel_satisfacao_trabalho,
    salario_mensal,
    numero_empresas_anteriores,
    disponivel_hora_extra,
    ROUND(percentual_ultimo_aumento_salario, 2) as percentual_ultimo_aumento_salario,
    aval_performance,
    anos_experiencia,
    numero_treinamentos_ano_anterior,
    anos_na_empresa,
    anos_funcao_atual,
    anos_desde_ultima_promocao,
    anos_com_gerente_atual
FROM 
    {{ref("tabela_rh")}}