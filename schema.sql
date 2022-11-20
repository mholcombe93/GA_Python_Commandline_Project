DROP TABLE IF EXISTS workouts; --deletes if already exists


CREATE TABLE workouts (
  id SERIAL PRIMARY KEY,
  workout_name VARCHAR(36) NOT NULL,
  body_parts VARCHAR(256),
  sets_per_rep INT,
  reps INT
);

