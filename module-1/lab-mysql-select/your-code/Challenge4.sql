Select authors.au_id as AUTHOR_ID, 
authors.au_lname as LAST_NAME, 
authors.au_fname as FIRST_NAME,
COUNT(titles.title) AS TOTAL, 
COALESCE((SUM(sales.qty)),0)AS SUMA
from authors 
LEFT JOIN titleauthor
	ON titleauthor.au_id=authors.au_id
LEFT JOIN titles 
	ON titleauthor.title_id = titles.title_id
LEFT JOIN sales 
	ON titles.title_id = sales.title_id 
    GROUP BY AUTHOR_ID ORDER BY TOTAL LIMIT 23;
    