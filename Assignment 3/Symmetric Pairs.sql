select 
a.x as x1, a.y as y1
from functions a, functions b
where a.x = b.y
and b.x = a.y
group by a.x, a.y
having count(a.x) > 1 or a.x < a.y
order by a.x;
