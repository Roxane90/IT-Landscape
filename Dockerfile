# Gebruik een officiële Node.js image
FROM node:18

# Maak een app-directory
WORKDIR /app

# Kopieer package.json en installeer dependencies
COPY package.json .
RUN npm install

# Kopieer de rest van de code
COPY . .

# De poort die we gebruiken
EXPOSE 3000

# Start de app
CMD ["npm", "start"]
