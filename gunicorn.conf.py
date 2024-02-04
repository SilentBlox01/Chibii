bind = "0.0.0.0:8000"
workers = 3
timeout = 60
loglevel = "info"
accesslog = "-"
errorlog = "-"
from flask import Flask, render_template, request, jsonify
from flask_cors import CORS
import requests
import json