/*Joined the attachments table to the courses table based on a common column */
/*(context_id in the attachments table, which may correspond to id in the courses table)*/
/* JOIN query links the two tables*/
/*The JOIN clause links the two tables on the condition that attachments.context_id matches courses.id.*/
SELECT 
    a.content_type AS "type",
    a.id AS "attachment_id",
    a.context_id AS "context_id",
    a.folder_id AS "folder_id",
    c.id AS "course_id",
    c.course_code AS "course_code",
    c.name AS "course_name"
FROM 
    public.attachments a
JOIN 
    public.courses c ON a.context_id = c.id  -- Join on the context_id in attachments matching the course id
WHERE
    a.content_type LIKE '%/mp4';  -- Filter for mp4 file types
