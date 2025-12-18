with inscritos as (
    SELECT
        *
    FROM
        {{ref("stage_inscritos")}}
)

SELECT
    majority,
    count(majority) as total_majority
FROM
    inscritos
GROUP BY
    majority
ORDER BY
    count(majority) DESC