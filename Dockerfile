FROM mcr.microsoft.com/playwright:v1.34.3-jammy

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# EXPOSE 80

CMD [ "npx", "playwright", "test" ]