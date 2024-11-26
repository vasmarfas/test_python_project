# Базовый образ Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем файлы приложения в контейнер
COPY . /app

# Устанавливаем зависимости из файла requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Указываем порт, который будет открыт
EXPOSE 5000

# Команда для запуска приложения
CMD ["python", "app.py"]
