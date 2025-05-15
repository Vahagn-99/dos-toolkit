# 🚀 DOS — Утилита для управления Laravel-контейнерами

`dos` — это лёгкий скрипт, который позволяет управлять Laravel-проектами в Docker, аналогично `sail`.

## 📦 Возможности

- Автоматически использует `.env` для определения сервиса
- Упрощённые команды: `dos artisan migrate`, `dos shell`, `dos up`
- Поддержка автодополнения (bash/zsh)

## 📄 Установка

1. Клонируй репозиторий или распакуй архив.
2. Скопируй файл `dos` в `/usr/local/bin` или `~/bin`:

```bash
chmod +x dos
sudo cp dos /usr/local/bin/
```

3. Подключи автодополнение:

Для Bash (`~/.bashrc`):

```bash
source /путь/к/dos-completion.bash
```

Для Zsh (`~/.zshrc`):

```bash
source /путь/к/dos-completion.bash
compdef _dos_autocomplete dos
```

## 🧠 Использование

```bash
dos up
dos down
dos artisan migrate
dos composer install
dos shell
```

## ⚙️ Переменные из `.env`

Добавь в `.env` проекта строку:

```
DOS_SERVICE=app
```

`dos` подхватит эту переменную и будет использовать нужный сервис из `docker-compose.yml`.

---
Создано с ❤️ для Laravel + Docker.
# dos-toolkit
