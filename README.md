# test

Мінімальний статичний сайт — одна HTML-сторінка.

## Версія

- На сторінці: `version.js` + файл `VERSION`
- Patch-версія (`1.0.0` → `1.0.1`) піднімається **автоматично** GitHub Actions після merge PR у `dev`, якщо в тому PR змінювали `index.html`
- Після merge feature-PR з’явиться другий PR із bump версії — його теж треба змержити в `dev`

## Git-флоу

1. Відгалузитись від `dev`: `git checkout dev && git pull && git checkout -b feature1`
2. Змінити `index.html`, закомітити, запушити, відкрити PR **у `dev`**
3. Змержити PR у `dev` (workflow запускається на **PR closed**)
4. Actions перевірить `index.html` у змерженому PR → підніме patch → **створить новий PR** у `dev`
5. Змержити цей автоматичний PR у `dev`

## Перший запуск Actions

1. Запуш workflow на GitHub (гілка `dev` або `main`, де лежить `.github/workflows/`)
2. У репозиторії: **Settings → Actions → General**:
   - **Workflow permissions** → **Read and write permissions**
   - увімкни **Allow GitHub Actions to create and approve pull requests** (без цього PR не створиться)

## Як подивитись локально

Відкрий `index.html` у браузері (подвійний клік або перетягни файл у вікно браузера).
