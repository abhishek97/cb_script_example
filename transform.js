const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    terminal: false
})


rl.on('line', function (line) {
   const [full_text, q_id, maxScore] = /(\d+)\|(\d+)/.exec(line)
   console.log( `update contents set "maxScore" = ${maxScore} where 
   id IN (select "contentId" from qnas q where q.q_id = ${q_id} and "deletedAt" is NULL);`)
})