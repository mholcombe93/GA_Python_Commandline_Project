TRUNCATE TABLE workouts; -- deletes rows and sets from a tables, doesnt scan the table


-- ALTER SEQUENCE id RESTART WITH 1; -- how to change something

INSERT INTO workouts(workout_name, body_parts, sets_per_rep, reps) 
VALUES('Pec Flys','Chest, Shoulders, Triceps', 4, 8);
INSERT INTO workouts(workout_name, body_parts, sets_per_rep, reps) VALUES('Deadlift', 'Back, Legs', 3, 4);
INSERT INTO workouts(workout_name, body_parts, sets_per_rep, reps) VALUES('Shoulder Press','Shoulders, Biceps, Triceps', 3, 12);
INSERT INTO workouts(workout_name, body_parts, sets_per_rep, reps) VALUES('Squat','Legs', 4, 3);


