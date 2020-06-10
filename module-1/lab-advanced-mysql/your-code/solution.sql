/*
SELECT au.au_id AUTHOR_ID, t.title TITLE, (t.price * s.qty * t.royalty / 100 * tta.royaltyper / 100) as ROYALTY
	FROM titles AS t 
    INNER JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
    INNER JOIN sales AS s
	ON s.title_id = t.title_id
    INNER JOIN roysched as r
    ON r.title_id = t.title_id
    order by royalty desc
*/
/*
SELECT au.au_id AUTHOR_ID, t.title TITLE, sum(t.price * s.qty * t.royalty / 100 * tta.royaltyper / 100) as ROYALTY
	FROM titles AS t 
    INNER JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
    INNER JOIN sales AS s
	ON s.title_id = t.title_id
    INNER JOIN roysched as r
    ON r.title_id = t.title_id
    group by au.au_id, t.title_id
    order by royalty desc
*/
/*
SELECT au.au_id AUTHOR_ID, (t.advance + sum(t.price * s.qty * t.royalty / 100 * tta.royaltyper / 100)) as PROFITS
	FROM titles AS t 
    INNER JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
    INNER JOIN sales AS s
	ON s.title_id = t.title_id
    INNER JOIN roysched as r
    ON r.title_id = t.title_id
    group by au.au_id, t.title_id
    order by PROFITS desc
    LIMIT 3
*/
/*
DROP TABLE EXERCISE;
CREATE TEMPORARY TABLE EXERCISE (AUTHOR_ID varchar(11), PROFITS float(30));
INSERT INTO EXERCISE
	SELECT au.au_id AUTHOR_ID, (t.advance + sum(t.price * s.qty * t.royalty / 100 * tta.royaltyper / 100)) as PROFITS
	FROM titles AS t 
    INNER JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
    INNER JOIN sales AS s
	ON s.title_id = t.title_id
    INNER JOIN roysched as r
    ON r.title_id = t.title_id
    group by au.au_id, t.title_id
    order by PROFITS desc
    LIMIT 3;
    */
/*
DROP TABLE MPA;
CREATE TABLE MPA (AUTHOR_ID varchar(11), PROFITS float(30)
);
INSERT INTO MPA 
	SELECT * FROM EXERCISE;
*/