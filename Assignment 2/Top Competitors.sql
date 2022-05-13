SELECT hackers.hacker_id, hackers.name
FROM hackers
JOIN submissions
ON hackers.hacker_id = submissions.hacker_id
JOIN challenges
ON submissions.challenge_id = challenges.challenge_id
JOIN difficulty
ON CHALLENGES.DIFFICULTY_LEVEL = DIFFICULTY.DIFFICULTY_LEVEL
WHERE submissions.score = difficulty.score 
AND 
challenges.difficulty_level = difficulty.difficulty_level
GROUP BY hackers.hacker_id, hackers.name, submissions.hacker_id 
HAVING COUNT(submissions.hacker_id) > 1
ORDER BY COUNT(submissions.hacker_id) DESC,submissions.hacker_id ASC