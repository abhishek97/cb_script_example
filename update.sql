update contents set "maxScore" = $2 where 
    id = (select "contentId" from qnas q where q.q_id = $1);