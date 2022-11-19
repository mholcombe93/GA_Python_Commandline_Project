#PeeWee install
from peewee import *
from playhouse.shortcuts import model_to_dict, dict_to_model

db = PostgresqlDatabase('contacts', user='', password='', host='localhost', port=5432)

class BaseModel(Model):
  class Meta:
    database = db

#Schema model
class contact_name(BaseModel):
  person_name = CharField()
  nationality = CharField()
  birth_year = IntegerField()

class contact_location(BaseModel):
  email = CharField()
  phone_number = IntegerField()
  state_abreviation = CharField()
  contact_name_id = IntegerField()

db.connect()

def contact_list_start():
  print("Hello, welcome to your contact list :)")
  answer = input("What would you like to do today? View Contacts(v), Add Contact(a), Update Contact(u), Delete Contact(d) ")

  if answer == "v":
    contacts = contact_name.select()
    print([contact.person_name for contact in contacts])


contact_list_start()