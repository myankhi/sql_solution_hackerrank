SELECT
    CASE
        WHEN G.Grade >=8 then S.Name
        ELSE NULL
        END AS Name,
        G.Grade, 
        S.Marks 
FROM 
    STUDENTS S JOIN GRADES G 
    ON S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
    
ORDER BY G.Grade DESC, S.Name ASC, S.Marks ;