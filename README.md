# my-interview.tech

Библиотека знаний по веб-разработке для подготовки к собеседованиям

## 📚 О проекте

Это статический сайт с документацией по Frontend и Backend разработке, построенный на [Quartz](https://quartz.jzhao.xyz/). Проект содержит вопросы для подготовки к техническим собеседованиям, практические задачи, курсы и заметки.

🌐 **Сайт:** [https://my-interview.tech/](https://my-interview.tech/)

## 📁 Структура проекта

Основная папка с документацией — **`docs/`**

```
docs/
├── 001 Frontend/          # Frontend технологии
│   ├── 001 HTML/
│   ├── 002 CSS/
│   ├── 003 JSCore/
│   ├── 004 ReactCore/
│   ├── 005 TypeScript/
│   └── ...
├── 002 Backend/           # Backend технологии
├── 100 Git/               # Инструменты разработчика
├── 200 Браузерное окружение/
├── 300 Паттерны/
└── 0000 Навигация/        # Навигационные страницы
```

## 🚀 Быстрый старт

### Требования

- Node.js >= 18.14
- npm >= 9.3.1

### Установка

```bash
npm install
```

### Разработка

Запуск локального сервера с автоперезагрузкой:

```bash
npm run docs
```

Сайт будет доступен по адресу `http://localhost:8080`

## 📝 Работа с документацией

### Frontmatter

Все markdown файлы должны содержать валидный `frontmatter`. Структура:

```yaml
---
uid: <уникальный идентификатор>
title: <заголовок>
technology: <технология>
specialty: <специальность>
tools: []
order: <число>
access: free
created_at: <ISO дата>
updated_at: <ISO дата>
---
```

### Команды для работы с frontmatter

**Проверка валидности:**
```bash
npm run frontmatter -- check
```

**Автоматическое обновление полей:**
```bash
npm run frontmatter -- update
```

**Генерация uid и дат для новых файлов:**
```bash
npm run frontmatter -- generate
```

**Генерация для всех файлов:**
```bash
npm run frontmatter -- generate --all
```

### Создание нового документа

1. Создайте `.md` файл в соответствующей папке `docs/`
2. Добавьте frontmatter (можно использовать шаблон выше)
3. Запустите `npm run frontmatter -- update` для автозаполнения полей
4. Запустите `npm run frontmatter -- generate` для генерации uid и дат

## 🔄 Production sync to 2shark read model

Production read model хранится в PostgreSQL на VPS. База поднимается через `docker compose` в сервисе `postgres`, данные лежат в named volume `postgres_data`, порт `5432` наружу не публикуется.

Автосинхронизация запускается workflow из этого репозитория:

- файл workflow: `.github/workflows/production-sync.yml`;
- события запуска: `push` в `main` и ручной `workflow_dispatch`;
- обязательный secret: `SSH_PRIVATE_KEY`;
- обязательные variables: `SSH_HOST`, `SSH_USER`, `SSH_DEPLOY_PATH`;
- опциональная variable: `SSH_DEPLOY_BRANCH` (по умолчанию `main`).

На VPS рядом с `docker-compose.yml` должен быть `.env`:

```env
HTTP_PORT=8080
POSTGRES_DB=shark
POSTGRES_USER=shark
POSTGRES_PASSWORD=<strong-password>
```

Первичная инициализация схемы на VPS:

```bash
cd /root/my-interview.tech
docker compose up -d postgres
docker compose --profile tools run --rm sync npx 2shark@3.0.1 init-db
```

Канонический import, который выполняет workflow на VPS:

```bash
docker compose --profile tools run --rm sync npx 2shark@3.0.1 import \
  --path ./docs \
  --config ./scripts/frontmatter/config \
  --repo-path . \
  --branch main \
  --commit-sha "${GITHUB_SHA}" \
  --production-sync
```

Ожидаемое поведение при ошибках:

- если `SSH_*` secret/variables не заданы, workflow падает с fail-fast ошибкой;
- если `POSTGRES_PASSWORD` не задан в `.env`, `docker compose config` падает до импорта;
- если import завершился ошибкой, job завершается с non-zero exit code.

Smoke-checklist после интеграции:

- push в `main` запускает `production-sync`;
- успешный run по SSH запускает `2shark import` на VPS;
- `articles` содержит активные записи, а `import_jobs` получает status `success`;
- повторный запуск для одного и того же `github.sha` остаётся идемпотентным на стороне `2shark/import_jobs`.

Backup PostgreSQL:

```bash
cd /root/my-interview.tech
chmod +x deploy/vps/backup-postgres.sh
deploy/vps/backup-postgres.sh
```

Пример cron лежит в `deploy/vps/cron.example`. На проде нельзя запускать `docker compose down -v` и удалять volume `postgres_data`: это удалит данные БД.

## 🛠️ Другие команды

**Проверка типов TypeScript:**
```bash
npm run check
```

**Форматирование кода:**
```bash
npm run format
```

**Запуск тестов:**
```bash
npm test
```

## 📖 Конфигурация

- **`quartz.config.ts`** — конфигурация Quartz
- **`scripts/frontmatter/config/category-mapping.yaml`** — маппинг технологий на специальности
- **`scripts/frontmatter/config/specialties.yaml`** — список специальностей

## 📄 Лицензия

MIT

## 👤 Автор

**vakalushko** — [vakalushko@yandex.ru](mailto:vadim.kalushko@yandex.ru)

---

⭐ Если проект был полезен, поставьте звезду на GitHub!
