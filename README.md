# Colombia NIT DV

[![Gem Version](https://badge.fury.io/rb/colombia_nit_dv.svg)](https://badge.fury.io/rb/colombia_nit_dv)

Gema ligera para calcular el **dígito de verificación (DV)** del **NIT en Colombia**, usando el algoritmo oficial utilizado por la DIAN / RUES.

No tiene dependencias externas y funciona en Ruby **>= 2.6**.

---

## ✨ Características

- Calcula el dígito de verificación del NIT colombiano.
- Admite NIT con espacios, puntos, guiones o comas.
- Valida que el NIT contenga solo números.
- Compatible con Ruby 2.6+, 2.7 y 3.x.
- Sin dependencias: rápida y segura.

---

## 📦 Instalación

Agrega esta línea a tu `Gemfile`:

```ruby
gem "colombia_nit_dv"
```

Y ejecuta:

```bash
bundle install
```

O instálala manualmente:

```bash
gem install colombia_nit_dv
```

---

## 🧪 Uso

```ruby
require "colombia_nit_dv"

dv = ColombiaNitDv.verification_digit("900373923")
puts dv
# => 8
```

También funciona si el NIT viene con caracteres adicionales:

```ruby
ColombiaNitDv.verification_digit(" 900.373.923- ")
# => 8
```

---

## 📘 API

### `ColombiaNitDv.verification_digit(nit)`

**Parámetros:**

| Parámetro | Tipo   | Descripción                                      |
|----------|--------|--------------------------------------------------|
| `nit`    | String | Número de NIT con o sin formato (., -, espacios) |

**Retorna:**

- `Integer` → el dígito de verificación (0–9)
- Lanza `ArgumentError` si el NIT no es numérico

---

## 🧰 Ejemplo práctico en Rails

Validador personalizado:

```ruby
validate :nit_with_dv

def nit_with_dv
  expected_dv = ColombiaNitDv.verification_digit(nit)
  errors.add(:dv, "no coincide") if dv.to_i != expected_dv
end
```

---

## 🧪 Pruebas

Para ejecutar los tests:

```bash
bundle exec rspec
```

---

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas!

1. Haz un fork del proyecto
2. Crea una rama: `git checkout -b mi-mejora`
3. Envía un PR

---

## 📄 Licencia

Este proyecto está disponible bajo la licencia **MIT**.

---

## 📬 Autor

**Eduardo Mendoza**  
GitHub: https://github.com/eduardo-m88  
Email: eduardoalfonsom88@gmail.com