/* Get all videos */
SELECT 
    content_type AS "type",
	id AS "attachment_id",
	folder_id AS "folder_id",
    *  -- This will select all other columns as well
FROM 
    public.attachments
WHERE
	content_type LIKE '%/mp4';	
