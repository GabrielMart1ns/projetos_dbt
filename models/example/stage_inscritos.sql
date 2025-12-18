SELECT
    *,
    age > 25 majority
FROM
    {{ref("inscritos")}}