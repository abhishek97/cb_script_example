update runs r
    set "maxScore" = dataset.sum
from (
    select r.id as "id", sum(c."maxScore") as "sum" from runs r
        inner join sections s on s."runId" = r.id
        inner join section_contents sc on sc."sectionId" = s.id
        inner join contents c on c.id = sc."contentId"
    group by r.id
) dataset where dataset.id = r.id;