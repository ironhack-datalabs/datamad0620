/*
SELECT authors.au_id AUTHORID, authors.au_lname FIRSTNAME, authors.au_fname LASTNAME,titles.title TITLESCOUNT, publishers.pub_name PUBLISHER
	FROM titles
	INNER JOIN titleauthor 
    on titles.title_id = titleauthor.title_id 
    INNER JOIN authors 
    on titleauthor.au_id = authors.au_id
    INNER JOIN publishers 
    on titles.pub_id = publishers.pub_id
    order by authors.au_id;
*/
/*
SELECT authors.au_id AUTHORID, authors.au_lname FIRSTNAME, authors.au_fname LASTNAME, count(titles.title) TITLESCOUNT, publishers.pub_name PUBLISHER
	FROM titles
	INNER JOIN titleauthor 
    on titles.title_id = titleauthor.title_id 
    INNER JOIN authors 
    on titleauthor.au_id = authors.au_id
    INNER JOIN publishers 
    on titles.pub_id = publishers.pub_id
    group by titleauthor.au_id,publishers.pub_id
    order by authors.au_id desc
 */
 /*
	SELECT authors.au_id AUTHORID, authors.au_lname FIRSTNAME, authors.au_fname LASTNAME, sum(sales.qty) QTY
 
	FROM titles
	LEFT JOIN titleauthor 
    on titles.title_id = titleauthor.title_id 
    LEFT JOIN authors 
    on titleauthor.au_id = authors.au_id
    LEFT JOIN publishers 
    on titles.pub_id = publishers.pub_id
    LEFT JOIN sales
    on titles.title_id = sales.title_id
    
    group by authors.au_id 
    order by sum(sales.qty) desc
    LIMIT 3 
    */
    /*
	SELECT authors.au_id AUTHORID, authors.au_lname FIRSTNAME, authors.au_fname LASTNAME, IFNULL(sum(sales.qty),0) QTY
 
	FROM titles
	LEFT JOIN titleauthor 
    on titles.title_id = titleauthor.title_id 
    LEFT JOIN authors 
    on titleauthor.au_id = authors.au_id
    LEFT JOIN publishers 
    on titles.pub_id = publishers.pub_id
    LEFT JOIN sales
    on titles.title_id = sales.title_id
    
    group by titles.title,sales.qty
    order by sum(sales.qty) desc
    
*/

 
    


    