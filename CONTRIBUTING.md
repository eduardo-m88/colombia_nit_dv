# Contributing Guide

¡Gracias por tu interés en contribuir a **colombia_nit_dv**!

Este proyecto es pequeño, pero cualquier mejora es bienvenida.  
Por favor sigue estas recomendaciones:

---

## 🛠 Requisitos

- Ruby >= 2.6
- Bundler instalado
- Git

---

## 📥 1. Haz un Fork del repositorio

En GitHub, presiona el botón **Fork** y crea tu propia copia del repo:

👉 https://github.com/eduardo-m88/colombia_nit_dv

---

## 🌿 2. Crea una rama nueva

```bash
git checkout -b mi-mejora
```

Usa nombres descriptivos:

- `fix/validacion-nit`
- `feature/agregar-validador-rails`
- `chore/actualizar-readme`

---

## 🧪 3. Corre las pruebas

Antes de enviar cambios:

```bash
bundle install
bundle exec rspec
```

Si agregas nuevas funciones, añade pruebas en `spec/`.

---

## ✍️ 4. Haz commits claros

```bash
git commit -m "Fix: manejo de espacios en NIT"
```

---

## 🔄 5. Sube los cambios y crea un Pull Request

```bash
git push origin mi-mejora
```

Luego crea el **Pull Request** describiendo:

- ¿Qué problema resuelve?
- ¿Cómo lo implementaste?
- ¿Agregaste pruebas?
- ¿Hay cambios breaking?

---

## ✔️ Revisión

- Revisaré tu PR lo más pronto posible 🚀  
- Si necesitas guía o quieres discutir una idea, abre un Issue.

---

## ❤️ Gracias

Cualquier aporte es valioso — desde documentación, ideas, tests, hasta mejoras de código.

¡Gracias por ayudar a mejorar `colombia_nit_dv`!
