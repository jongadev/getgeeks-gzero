from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def factory_user():
    return {
        'name': fake.first_name(),
        'lastname': fake.last_name(),
        'email':fake.free_email(),
        'password':'pwd123'

    }

   # return user não precisa criar a variavel user, basta retornar a massa de dados

def factory_wrong_email():

    first_name = fake.first_name()

    return {
        'name': first_name,
        'lastname': fake.last_name(),
        'email': first_name.lower() + '&gmail.com',
        'password':'pwd123'
    }
## return user não precisa criar a variavel user, basta retornar a massa de dados

def factory_user_login():
    return {
        'name':'Joao',
        'lastname':'de Lima',
        'email':'jolgabriel@hotmail.com',
        'password':'pwd123'

    }

