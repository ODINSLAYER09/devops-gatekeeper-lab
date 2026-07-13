FROM python:3.6
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install --omit=dev
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 3000
