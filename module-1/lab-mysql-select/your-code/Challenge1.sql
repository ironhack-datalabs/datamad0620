
Select authors.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, 
authors.au_fname as FIRST_NAME,
titles.title as TITLE,
publishers.pub_name as PUBLISHER 
from authors 
LEFT JOIN titleauthor
	ON titleauthor.au_id=authors.au_id
LEFT JOIN titles 
	ON titleauthor.title_id = titles.title_id
LEFT JOIN publishers 
	ON titles.pub_id = publishers.pub_id;





