/*
SELECT au.au_id AUTHOR_ID, au.au_lname LAST_NAME, au.au_fname FIRST_NAME, t.title TITLE, pub.pub_name PUBLISHER
	FROM titles AS t 
    INNER JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
	INNER JOIN publishers as pub
    ON t.pub_id = pub.pub_id
    order by au.au_id;
 */
/*
SELECT au.au_id AUTHOR_ID, au.au_lname LAST_NAME, au.au_fname FIRST_NAME, pub.pub_name PUBLISHER, count(t.title) TITLE_COUNT
	FROM titleauthor AS tta
    INNER JOIN titles AS t
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
	INNER JOIN publishers as pub
    ON t.pub_id = pub.pub_id
    group by tta.au_id, pub.pub_id
    order by au.au_id desc;
*/
/*
SELECT au.au_id AUTHOR_ID, au.au_lname LAST_NAME, au.au_fname FIRST_NAME, sum(s.qty) QTY
	FROM titleauthor AS tta
    INNER JOIN titles AS t
    ON  t.title_id = tta.title_id
    INNER JOIN authors AS au
    ON tta.au_id = au.au_id
	INNER JOIN sales as s
    ON t.title_id = s.title_id
    group by tta.au_id
    order by sum(s.qty) desc
    LIMIT 3;
*/
/*
SELECT IFNULL(au.au_id,0) AUTHOR_ID, au.au_lname LAST_NAME, au.au_fname FIRST_NAME, IFNULL(sum(s.qty),0) QTY
	FROM titles AS t
    LEFT JOIN titleauthor AS tta
    ON  t.title_id = tta.title_id
    LEFT JOIN authors AS au
    ON tta.au_id = au.au_id
	LEFT JOIN sales as s
    ON t.title_id = s.title_id
    group by t.title_id, s.qty
    order by sum(s.qty) desc
*/


