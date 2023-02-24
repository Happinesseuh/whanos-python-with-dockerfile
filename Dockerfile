FROM localhost:5000/whanos-python

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

CMD [ "python", "-m", "app" ]