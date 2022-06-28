from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def users_to_insert_db():
    return [
        factory_user('login'),
        factory_user('be_geek'),
        factory_user('attempt_be_geek'),
        factory_user('search_alien'),
        factory_user('search_common'),
        factory_user('searcher')
    ]    


def factory_user(target):

    data = {
        'faker': {
             'name': fake.first_name(),
             'lastname': fake.last_name(),
             'email':fake.free_email(),
             'password':'pwd123'
        },
        'wrong_email': {
            'name':'Pedro',
            'lastname':'De Lara',
            'email':'pedro_ld*hotmail.com',
            'password':'abc123'
        },
        'login': {
            'name':'Joao',
            'lastname':'de Lima',
            'email':'jolgabriel@hotmail.com',
            'password':'pwd123'
        },
        'be_geek': {
            'name':'Kim',
            'lastname':'Dotcom',
            'email':'kim@dotcom.com',
            'password':'pwd123',
            'geek_profile': {
                'whats':'11999999999',
                'desc':'Seu pc esta lento ? reiniciando do nada? não se preocupe dou um jeito nele.O baidu esta te incomodando não tem problema também damos um jeito nele.',
                'printer_repair':'Sim',
                'work':'Remoto',
                'cost':'100'
            }
        
        },
        'short_desc': {
             'name':'Peter',
            'lastname':'Jordam',
            'email':'peter@einerd.com',
            'password':'pwd123',
            'geek_profile': {
                'whats':'21999999999',
                'desc':'Seu pc esta lento?',
                'printer_repair':'Não',
                'work':'Ambos',
                'cost':'200'
            }

        },
         'attempt_be_geek': {
            'name':'Dio',
            'lastname':'Linux',
            'email':'dio@linux.com',
            'password':'pwd123',
            'geek_profile': {
                'whats':'11999999999',
                'desc':'Seu pc esta lento ? reiniciando do nada ? não se preocupe dou um jeito nele.O baidu esta te incomodando não tem problema também damos um jeito nele.Formatou e esqueceu de fazer backup? pode ficar tranquilo recuperamos para você, excluímos qualquer tipo de virus',
                'printer_repair':'Não',
                'work':'Remoto',
                'cost':'150'
            }
        },
        'searcher': {
            'name': 'Johnny',
            'lastname':'Lawrence',
            'email': 'johnny@cobrakai.com',
            'password': 'pwd123'

        },
        'search_alien': {
            'name': 'Dok',
            'lastname':'Ock',
            'email': 'dok@oscorp.com',
            'password': 'pwd123',
            'geek_profile': {
                'whatsapp': '21999999888',
                'desc': 'Faço conserto se qualquer impressora.Matricial a fita, Matricial a fita colorida, a laser, a jato de tinta e também impressora 3D',
                'printer_repair': 'Sim',
                'work': 'Presencial',
                'cost': '300'
            }
        },
        'search_common': {
            'name': 'Peter',
            'lastname':'Parker',
            'email': 'parker@oscorp.com',
            'password': 'pwd123',
            'geek_profile': {
                'whatsapp': '21999999877',
                'desc': 'Faço instalação de distribuição Linux em seu computador PC X86 ou X64 com processadores intel ou AMD.',
                'printer_repair': 'Não',
                'work': 'Remoto',
                'cost': '200'
            }

        }
        
    }
    

    return data[target]
    















