Select students.name
FROM students  
JOIN friends ON students.id = friends.id
JOIN packages p1 ON students.id = p1.id
JOIN packages p2 ON friends.friend_id = p2.id
WHERE p2.salary > p1.salary
ORDER BY p2.salary;