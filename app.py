#PeeWee install
from peewee import *
from playhouse.shortcuts import model_to_dict, dict_to_model

db = PostgresqlDatabase('workouts', user='matthewholcombe', password='1234', host='localhost', port=5432)

class BaseModel(Model):
  class Meta:
    database = db

#Schema model
class Workouts(BaseModel):
  workout_name = CharField()
  body_parts = CharField()
  sets_per_rep = IntegerField()
  reps = IntegerField()


db.connect()

def workout_start():

  print("Hello, welcome to your Workout List :)")
  answer = input("What would you like to do today? View Workouts(v), Add workouts(a), Exit Workout List (e) ")

  if answer == "v":
    list_of_workouts = Workouts.select()
    for i in list_of_workouts:
     print(f'{i.workout_name}:, it works out your: {i.body_parts}.\n You will be doing {i.sets_per_rep} sets, with {i.reps} reps in 1 set.')

  elif answer == "a":
    workout_name = input("What is the workouted called? ")
    body_parts = input("List all parts of the body it works out. ")
    sets_per_rep = int(input("How many sets are you doing? "))
    reps = int(input("How many reps are in 1 set? "))
    workouts = Workouts(workout_name=workout_name, body_parts=body_parts, sets_per_rep=sets_per_rep, reps=reps)
    workouts.save()
    print(f'New workout {workout_name} added to your list!')

  elif answer == "e":
    return print('Goodbye!')

workout_start()
