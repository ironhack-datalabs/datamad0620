
CREATE TABLE most_profiting_authors select Author_ID, (titles.advance/100 * title.royalty/100) 
as profits FROM (Select Author_ID, titles.advance, titles.royalty FROM(
Select title_id Title_ID, au_id Author_ID, SUM(Sales_royalty) FROM
(Select authors.au_id,
titles.title_id, 
(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS sales_royalty 
from titles
LEFT JOIN titleauthor ON titleauthor.title_id = titles.title_id 
LEFT JOIN authors ON authors.au_id = titleauthor.au_id
LEFT JOIN sales ON sales.title_id = titles.title_id) as FirstTable 
group by au_id, title_id) as SecondTable
LEFT JOIN titles ON titles.title_id = SecondTable.title_id group by Author_ID, advance, royalty)as ThirdTable;

