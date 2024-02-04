#!/bin/bash

# Activa el entorno virtual
source venv/bin/activate

# Configura la región de AWS
export AWS_DEFAULT_REGION=us-east-1

# Inicia Gunicorn con un worker adicional
gunicorn -c gunicorn.conf.py -w 4 main:app

# Inicia tu bot de Discord con un prefijo de comando diferente
python bot.py --prefix="m/"
