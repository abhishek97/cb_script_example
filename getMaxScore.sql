select q.id, sum(qs."positiveScore") from quizzes q 
    inner join "quizQuestions" qq on qq."quizId" = q.id
    inner join questions qs on qs.id = qq."questionId"
where qq."deletedAt" is NULL and qs."deletedAt" is NULL
group by q.id;