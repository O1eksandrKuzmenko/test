# test

Мінімальний статичний сайт — одна HTML-сторінка.

## Версія

- На сторінці: `version.js` + файл `VERSION`
- Patch-версія (`1.0.0` → `1.0.1`) піднімається **автоматично** GitHub Actions після merge PR у `dev`, якщо в тому PR змінювали `index.html`
- Після merge feature-PR з’явиться другий PR із bump версії — його теж треба змержити в `dev`

## Git-флоу

1. Відгалузитись від `dev`: `git checkout dev && git pull && git checkout -b feature1`
2. Змінити `index.html`, закомітити, запушити, відкрити PR **у `dev`**
3. Змержити PR у `dev`
4. Actions перевірить, чи був `index.html` у PR → підніме patch → створить PR `chore: bump version to …`
5. Змержити цей автоматичний PR у `dev`

## Перший запуск Actions

1. Запуш workflow на GitHub (гілка `dev` або `main`, де лежить `.github/workflows/`)
2. У репозиторії: **Settings → Actions → General → Workflow permissions** → увімкни **Read and write permissions**

## Як подивитись локально

Відкрий `index.html` у браузері (подвійний клік або перетягни файл у вікно браузера).
