
#STEP 1

 SELECT  ti.title_id as "Title_ID"  ,  aut.au_id AS AUTHORID ,ti.price ,sa.qty ,ti.royalty,ta.royaltyper / 100, 
( ((ti.price * sa.qty * ti.royalty) / 100 )* (ta.royaltyper / 100)) AS sales_royalty
 FROM authors AS aut
   LEFT  JOIN titleauthor AS ta ON aut.au_id=ta.au_id
  LEFT  JOIN titles AS ti ON ta.title_id=ti.title_id
  LEFT JOIN publishers AS pu ON ti.pub_id=pu.pub_id
  LEFT JOIN sales AS sa ON ta.title_id=sa.title_id;
  
  #STEP 2
   
   SELECT AUTHORID , SUM(sales_royalty) FROM (
   SELECT  ti.title_id as "Title_ID"  ,  aut.au_id AS AUTHORID ,
( ((ti.price * sa.qty * ti.royalty) / 100 )* (ta.royaltyper / 100)) AS sales_royalty
 FROM authors AS aut
   LEFT  JOIN titleauthor AS ta ON aut.au_id=ta.au_id
  LEFT  JOIN titles AS ti ON ta.title_id=ti.title_id
  LEFT JOIN publishers AS pu ON ti.pub_id=pu.pub_id
  LEFT JOIN sales AS sa ON ta.title_id=sa.title_id)AS totaliti
  GROUP BY AUTHORID;

	  #STEP 3
SELECT AUTHORID, SUM(TOTAL) AS re FROM (   
 SELECT AUTHORID, (sales_royalty +adv) AS TOTAL FROM (
 SELECT  ti.title_id as "Title_ID"  ,  aut.au_id AS AUTHORID ,
( ((ti.price * sa.qty * ti.royalty) / 100 )* (ta.royaltyper / 100)) AS sales_royalty ,ti.advance AS adv
 FROM authors AS aut
   LEFT  JOIN titleauthor AS ta ON aut.au_id=ta.au_id
  LEFT  JOIN titles AS ti ON ta.title_id=ti.title_id
  LEFT JOIN publishers AS pu ON ti.pub_id=pu.pub_id
  LEFT JOIN sales AS sa ON ta.title_id=sa.title_id) AS totaliti) AS TSDFS
  GROUP BY AUTHORID ORDER BY re DESC LIMIT 3;
  
  	  #CHALLENGE 2

CREATE TEMPORARY TABLE step1(
 SELECT  ti.title_id as "Title_ID"  ,  aut.au_id AS AUTHORID , 
( ((ti.price * sa.qty * ti.royalty) / 100 )* (ta.royaltyper / 100)) AS sales_royalty
 FROM authors AS aut
   LEFT  JOIN titleauthor AS ta ON aut.au_id=ta.au_id
  LEFT  JOIN titles AS ti ON ta.title_id=ti.title_id
  LEFT JOIN publishers AS pu ON ti.pub_id=pu.pub_id
  LEFT JOIN sales AS sa ON ta.title_id=sa.title_id);
  
  
 CREATE TEMPORARY TABLE step3 ( SELECT AUTHORID , SUM(sales_royalty) as sales_royalty FROM (step1)GROUP BY AUTHORID);
 
 
  
	#CHALLENGE 3
    
   CREATE  TABLE FIN ( (SELECT AUTHORID, SUM(TOTAL) AS TOTAL FROM (   
 SELECT AUTHORID, (sales_royalty +adv) AS TOTAL FROM stepultimo AS totaliti) AS TSDFS
  GROUP BY AUTHORID ORDER BY TOTAL DESC LIMIT 3)) ;
    
  SELECT * FROM FIN;
  
  
