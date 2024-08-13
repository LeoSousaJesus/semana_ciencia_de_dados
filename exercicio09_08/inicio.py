# print(Alô Mundo)
from flask import Flask, render_template
from matematica import Matematica
from timefut import TimeFut

app = Flask(__name__)

@app.route('/inicio')
def ola():
    return "Olá Mundo!"

@app.route('/olamundo')
def mostrar():
    return render_template('pagina.html')

@app.route('/calculosoma')
def calcular():
    mat = Matematica(5,7)
    resposta = mat.somar()
    return render_template('calculo.html', resultado=resposta)


@app.route('/listatimes')
def listar_times():
    t1 = TimeFut('Palmeiras',20)
    t2 = TimeFut('Botafogo',18)
    t3 = TimeFut('Flamengo',21)
    t4 = TimeFut('São Paulo', 12)
    t5 = TimeFut('Grêmio', 13)
    t6 = TimeFut('Atlético-MG', 8)
    t7 = TimeFut('Fluminense', 12)
    t8 = TimeFut('Internacional', 10)
    t9 = TimeFut('Corinthians', 14)
    t10 = TimeFut('Vitória', 4)
    t11 = TimeFut('Athletico-PR', 11)
    t12 = TimeFut('Vasco', 8)
    t13 = TimeFut('Cruzeiro', 9)
    t14 = TimeFut('Fortaleza', 12)
    t15 = TimeFut('Bahia', 2)
    t16 = TimeFut('Cuiabá', 3)
    t17 = TimeFut('Cricíuma', 4)
    t18 = TimeFut('Juventude', 8)
    t19 = TimeFut('Bragantino', 5)
    t20 = TimeFut('Atlético-GO', 6)
    lista = [t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20]
    return render_template('listatimes.html',times=lista)

app.run()



