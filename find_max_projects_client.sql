SELECT client.ID, client.NAME, COUNT(project.ID) AS num_projects
FROM client
LEFT JOIN project ON client.ID = project.CLIENT_ID
GROUP BY client.ID, client.NAME
HAVING num_projects = (
    SELECT MAX(project_count)
    FROM (
        SELECT COUNT(ID) AS project_count
        FROM project
        GROUP BY CLIENT_ID
    ) AS project_counts
);
