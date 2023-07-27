SELECT
    project.ID AS PROJECT_ID,
    project.START_DATE,
    project.FINISH_DATE,
    SUM(worker.SALARY * (PERIOD_DIFF(DATE_FORMAT(project.FINISH_DATE, '%Y%m'), DATE_FORMAT(project.START_DATE, '%Y%m')) + 1)) AS PROJECT_COST
FROM
    project
JOIN
    project_worker ON project.ID = project_worker.PROJECT_ID
JOIN
    worker ON project_worker.WORKER_ID = worker.ID
GROUP BY
    project.ID, project.START_DATE, project.FINISH_DATE
ORDER BY
    PROJECT_COST DESC;
