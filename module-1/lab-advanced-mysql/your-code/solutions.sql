 /*
   SELECT authors.au_id AUTHORID,  titles.title, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS ROYALTY
 
	FROM titles
	INNER JOIN titleauthor 
    on titles.title_id = titleauthor.title_id 
    INNER JOIN authors 
    on titleauthor.au_id = authors.au_id
    INNER JOIN sales 
    on sales.title_id = titles.title_id
    INNER JOIN roysched
    on titles.title_id = roysched.title_id
    order by ROYALTY desc 
*/
 
 /*
   SELECT authors.au_id AUTHORID,  titles.title, sum(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS ROYALTY
 
	FROM titles
	INNER JOIN titleauthor 
    on titles.title_id = titleauthor.title_id 
    INNER JOIN authors 
    on titleauthor.au_id = authors.au_id
    INNER JOIN sales 
    on sales.title_id = titles.title_id
    INNER JOIN roysched
    on titles.title_id = roysched.title_id
    group by authors.au_id,titles.title_id
    order by ROYALTY desc 
*/
 
 /*
 SELECT authors.au_id AUTHORID, (titles.advance + sum(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100)) AS TOTAL_PROFITS
 
	FROM titles
	INNER JOIN titleauthor 
    on titles.title_id = titleauthor.title_id 
    INNER JOIN authors 
    on titleauthor.au_id = authors.au_id
    INNER JOIN sales 
    on sales.title_id = titles.title_id
    INNER JOIN roysched
    on titles.title_id = roysched.title_id
    group by authors.au_id,titles.title_id
    order by TOTAL_PROFITS desc 
	LIMIT 3
*/

/*
DROP TABLE C1;
CREATE TEMPORARY TABLE C1(
	AUTHORID VARCHAR(30),  TITLES VARCHAR(90),  ROYALTY FLOAT(30)
 );
INSERT INTO C1
   SELECT authors.au_id AUTHORID,  titles.title, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS ROYALTY
 
	FROM titles
	INNER JOIN titleauthor 
    on titles.title_id = titleauthor.title_id 
    INNER JOIN authors 
    on titleauthor.au_id = authors.au_id
    INNER JOIN sales 
    on sales.title_id = titles.title_id
    INNER JOIN roysched
    on titles.title_id = roysched.title_id
    order by ROYALTY desc 
    
    
DROP TABLE C2;
CREATE TEMPORARY TABLE C2(
	AUTHORID VARCHAR(30),  TITLES VARCHAR(90),  ROYALTY FLOAT(30)
 );
INSERT INTO C2
   SELECT authors.au_id AUTHORID,  titles.title, sum(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) AS ROYALTY
 
	FROM titles
	INNER JOIN titleauthor 
    on titles.title_id = titleauthor.title_id 
    INNER JOIN authors 
    on titleauthor.au_id = authors.au_id
    INNER JOIN sales 
    on sales.title_id = titles.title_id
    INNER JOIN roysched
    on titles.title_id = roysched.title_id
    group by authors.au_id,titles.title_id
    order by ROYALTY desc 
*/    
/* 
DROP TABLE C3;
CREATE TEMPORARY TABLE C3(
	AUTHORID VARCHAR(30), TOTAL_PROFITS FLOAT(30)
 );
INSERT INTO C3
	SELECT authors.au_id AUTHORID, (titles.advance + sum(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100)) AS TOTAL_PROFITS
 
	FROM titles
	INNER JOIN titleauthor 
    on titles.title_id = titleauthor.title_id 
    INNER JOIN authors 
    on titleauthor.au_id = authors.au_id
    INNER JOIN sales 
    on sales.title_id = titles.title_id
    INNER JOIN roysched
    on titles.title_id = roysched.title_id
    group by authors.au_id,titles.title_id
    order by TOTAL_PROFITS desc 
	LIMIT 3;
    

DROP TABLE CFINAL;
CREATE TABLE CFINAL(AUTHORID VARCHAR(30), TOTALPROFITS FLOAT(30)
);
INSERT INTO CFINAL
	SELECT * FROM C3;
  */  

