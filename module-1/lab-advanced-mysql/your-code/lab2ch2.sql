
CREATE temporary TABLE FirstTable
(Select authors.au_id,
titles.title_id, 
(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty 
from titles
LEFT JOIN titleauthor ON titleauthor.title_id = titles.title_id 
LEFT JOIN authors ON authors.au_id = titleauthor.au_id
LEFT JOIN sales ON sales.title_id = titles.title_id);

Create temporary table SecondTable(Select title_id Title_ID, au_id Author_ID, SUM(Sales_royalty) 
FROM FirstTable group by au_id, title_id);



Select Author_ID, titles.advance, titles.royalty 
FROM SecondTable
LEFT JOIN titles
 ON titles.title_id = SecondTable.title_id 
 group by Author_ID, advance, royalty;


