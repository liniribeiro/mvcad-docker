# Imagem base que o docker file vai extender, ou seja, ele vai
# pegar uma imagem já existente do python e irá "complementar"
# ela com os nossos comandos
FROM python:3.8

# Fala qual o diretório do container que iremos trabalhar,
#não é uma boa pratica utilizar na pasta root.
WORKDIR /code

# Copia  os arquivos que iremos utilizar para iniciar nosso projeto
COPY requirements.txt .
COPY main.py .

# instala as dependencias
RUN pip install -r requirements.txt

# Coloca a porta 5000 exposta para que a aplicação possa ser acessada
EXPOSE 5000

# Comando que irá rodar quando o container iniciar
CMD [ "python", "main.py" ]