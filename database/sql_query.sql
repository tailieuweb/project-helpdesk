SELECT *, count(*)
FROM (
	SELECT 
	internship.`course_id`, 
	company_name, 
	company_instructor_phone,
	CONCAT_WS('\n', company_address, company_phone) as company_address
	FROM internship
	INNER JOIN `classes_users`
	ON `internship`.user_id = `classes_users`.user_id
	GROUP BY internship.user_id
	ORDER BY internship.course_id
) AS company_info
GROUP BY company_info.company_instructor_phone
ORDER BY course_id;

SELECT * FROM `internship` where company_instructor_phone = "0707799348";
