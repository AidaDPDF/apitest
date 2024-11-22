# Usa uma imagem base do Python
FROM python:3.9-slim

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia todos os arquivos da raiz do projeto para o diretório de trabalho do contêiner
COPY . /app

# Instala as dependências do Python listadas no requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta padrão do Flask (5000)
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "api.py"]
