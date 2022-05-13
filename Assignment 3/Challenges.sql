select C.Hacker_id, H.Name, count(challenge_id)
from Hackers H Inner Join Challenges C
ON H.Hacker_Id = C.Hacker_Id
group by C.Hacker_Id, H.Name
having count(challenge_id) not in (select x.ChallengeCount from (  
    select C.Hacker_id, H.Name, count(challenge_id) as ChallengeCount
    from Hackers H Inner Join Challenges C
    ON H.Hacker_Id = C.Hacker_Id
    group by C.Hacker_Id, H.Name
 ) as x
where x.ChallengeCount <> (select top 1 count(challenge_id) from Challenges group by hacker_Id order by 1 desc) 
group by x.ChallengeCount
having count(x.challengecount) > 1)
order by 3 desc, 1