-- 코드를 입력하세요
SELECT    A.AUTHOR_ID
        , B.AUTHOR_NAME
        , A.CATEGORY
        , SUM(C.SALES * A.PRICE ) TOTAL_SALES
        /*, A.* */
FROM BOOK A
INNER JOIN AUTHOR B ON A.AUTHOR_ID = B.AUTHOR_ID
INNER JOIN BOOK_SALES C ON A.BOOK_ID = C.BOOK_ID
WHERE SALES_DATE >= '2022-01-01' AND SALES_DATE < '2022-02-01'
GROUP BY AUTHOR_ID, CATEGORY
ORDER BY AUTHOR_ID, CATEGORY DESC