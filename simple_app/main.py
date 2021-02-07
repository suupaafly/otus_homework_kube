import fastapi

app = fastapi.FastAPI()


@app.get('/health')
def health():
    return {'status': 'OK'}


@app.get('/ping')
def ping():
    return 'pong'
