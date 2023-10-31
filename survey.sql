-- 설문에 참여한 참여자들의 이름 나열(중복 이름 삭제)
select DISTINCT `user`.`NAME`
from statistics
inner join `user`
on `user`.USER_ID = statistics.USER_ID;

-- 설문에 참여한 총 참여자 수 카운트
select count(DISTINCT USER_ID) as CNT
from statistics;

-- 문항당 답항별 총 수 
select question.QUESTION, answer.ANSWER, count(answer.ANSWER) as CNT
from statistics
inner join question
on question.QUESTION_ID = statistics.QUESTION_ID
inner join answer
on answer.ANSWER_ID=statistics.ANSWER_ID
group by statistics.QUESTION_ID, statistics.ANSWER_ID;

