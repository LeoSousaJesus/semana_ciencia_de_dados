# print(Alô Mundo)
from flask import Flask, render_template
from matematica import Matematica


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

app.run()