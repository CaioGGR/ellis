FROM python:3.13.4-alpine3.22

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
#instala sem cache, ou seja, instalara do zero sempre

COPY . .
#copia todos os arquivos do projeto, menos os que estao no dockerignore

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]