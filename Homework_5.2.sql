
DROP DATABASE IF EXISTS Lesson_5_hw5;
CREATE DATABASE IF NOT EXISTS Lesson_5_hw5;
USE Lesson_5_hw5;

CREATE TABLE trains(
	train_id INT NOT NUll,
    station VARCHAR(20) NOT NUll,
    station_time TIME NOT NUll
);

INSERT INTO trains
VALUES
(110, "San Francisco", '10:00:00'),
(110, "Redwood City", '10:54:00'),
(110, "Palo Alto", '11:02:00'),
(110, "San Jose", '12:35:00'),
(120, "San Francisco", '11:00:00'),
(120, "Palo Alto", '12:49:00'),
(120, "San Jose", '13:30:00');

SELECT 
	trains.*,
	TIMEDIFF (LEAD(station_time) OVER (PARTITION BY train_id), station_time) AS 'время до следующей станции'
FROM trains;