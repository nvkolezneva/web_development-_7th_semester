# Django-app
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Создать директорию app
WORKDIR /app
COPY requirements.txt /app/

# Установить зависимости приложения
RUN pip install -r requirements.txt

# Скопировать исходники приложения
COPY . /app/

#nginx
FROM node:10-alpine as build-deps

# Создать директорию app
WORKDIR /app/

# Используется символ подстановки для копирования как package.json, так и package-lock.json
COPY frontend/package*.json  /app/

# Установить зависимости приложения
RUN npm install

COPY frontend /app/
COPY .env /app/.env

# Установить зависимости приложения
RUN npm run build

# Stage 2 - nginx & frontend dist
FROM nginx:1.21-alpine

CMD ["nginx", "-g", "daemon off;"]