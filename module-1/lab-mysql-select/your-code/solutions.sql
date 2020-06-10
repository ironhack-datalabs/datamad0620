/* Challegen 1 */

SELECT  aut.au_id AS AUTHORID,aut.au_lname AS "LAST NAME",aut.au_fname AS "FIRST NAME",ti.title AS TITLE,pu.pub_name AS PUBLISHER FROM authors AS aut
 LEFT JOIN titleauthor AS ta ON aut.au_id=ta.au_id
 LEFT JOIN titles AS ti ON ta.title_id=ti.title_id
 LEFT JOIN publishers AS pu ON ti.pub_id=pu.pub_id;

/* Challegen 2 */

SELECT  aut.au_id AS AUTHORID,aut.au_lname AS "LAST NAME",aut.au_fname AS "FIRST NAME",pu.pub_name AS PUBLISHER ,COUNT(ti.title) AS TITLECOUNT
 FROM authors AS aut
 LEFT JOIN titleauthor AS ta ON aut.au_id=ta.au_id
 LEFT JOIN titles AS ti ON ta.title_id=ti.title_id
 LEFT JOIN publishers AS pu ON ti.pub_id=pu.pub_id
 GROUP BY AUTHORID,PUBLISHER;
 
 
 /* Challegen 3 */
 
SELECT AUTHORID, LAST_NAME, FIRST_NAME , COUNT(AUTHORID) AS CUENTITA
 FROM(SELECT  aut.au_id AS AUTHORID,aut.au_lname AS "LAST_NAME",aut.au_fname AS "FIRST_NAME",pu.pub_name AS PUBLISHER ,COUNT(ti.title) AS TITLECOUNT
 FROM authors AS aut
 LEFT JOIN titleauthor AS ta ON aut.au_id=ta.au_id
 LEFT JOIN titles AS ti ON ta.title_id=ti.title_id
 LEFT JOIN publishers AS pu ON ti.pub_id=pu.pub_id
 GROUP BY AUTHORID,PUBLISHER) AS Q 
 GROUP BY AUTHORID 
 ORDER BY CUENTITA DESC LIMIT 3;
 
  /* Challegen 4 */
 
 SELECT AUTHORID, LAST_NAME, FIRST_NAME , COUNT(AUTHORID) AS CUENTITA
 FROM(SELECT  aut.au_id AS AUTHORID,aut.au_lname AS "LAST_NAME",aut.au_fname AS "FIRST_NAME",pu.pub_name AS PUBLISHER ,COUNT(ti.title) AS TITLECOUNT
 FROM authors AS aut
   LEFT  JOIN titleauthor AS ta ON aut.au_id=ta.au_id
  LEFT  JOIN titles AS ti ON ta.title_id=ti.title_id
  LEFT JOIN publishers AS pu ON ti.pub_id=pu.pub_id
 GROUP BY AUTHORID,PUBLISHER) AS Q 
 GROUP BY AUTHORID 
 ORDER BY CUENTITA DESC;
 
 
 /*BONUS Challegen  */
 
 SELECT AUTHORID , LAST_NAME, FIRST_NAME, SUM((ADELANTO+((N_VENTAS*(PORCENTAJEROYAL/100))/N_DEAUTORES))) AS PASTA FROM (
 SELECT  aut.au_id AS AUTHORID,aut.au_lname AS "LAST_NAME",aut.au_fname AS "FIRST_NAME", 
 ti.advance AS "ADELANTO" , ti.royalty AS PORCENTAJEROYAL,TI.ytd_sales AS N_VENTAS ,ta.au_ord AS N_DEAUTORES
 FROM authors AS aut
   LEFT  JOIN titleauthor AS ta ON aut.au_id=ta.au_id
  LEFT  JOIN titles AS ti ON ta.title_id=ti.title_id
  LEFT JOIN publishers AS pu ON ti.pub_id=pu.pub_id) AS R
  GROUP BY AUTHORID;