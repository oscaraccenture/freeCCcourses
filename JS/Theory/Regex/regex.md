Below is a **complete, practical “know‑how” guide to Regular Expressions (RegExp) in JavaScript**, with **syntax, parameters, flags, behavior, and real examples**, grounded in the official MDN documentation and modern JavaScript references. [\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions), [\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions/Cheatsheet), [\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp), [\[w3schools.com\]](https://www.w3schools.com/js/js_regexp_flags.asp)

---

## 1. What is a Regular Expression in JavaScript?

A **regular expression (regex)** is a pattern used to match, search, extract, validate, or replace text.  
In JavaScript, regexes are **first‑class objects** represented by the `RegExp` type and are tightly integrated with `String` methods such as `match`, `replace`, `search`, and `split`. [\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions)

Typical use cases:

- Input validation (emails, IDs, formats)
- Parsing logs or structured text
- Search & replace
- Data extraction

---

## 2. Creating a Regular Expression

### 2.1 Regex Literal (static)

```js
const re = /ab+c/i
```

- Compiled when the script loads
- Faster for fixed patterns [\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions)

### 2.2 RegExp Constructor (dynamic)

```js
const re = new RegExp('ab+c', 'i')
```

- Useful when patterns are built dynamically
- Requires escaping (`\\d` instead of `\d`) [\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp)

---

## 3. Regex Structure

```text
/pattern/flags
```

- **pattern** → What you want to match
- **flags** → How the pattern behaves

---

## 4. RegExp Parameters (Constructor)

```js
new RegExp(pattern, flags)
```

| Parameter | Description                                                   |
| --------- | ------------------------------------------------------------- |
| `pattern` | String or regex defining the search rule                      |
| `flags`   | Optional string that modifies behavior (`"gi"`, `"ms"`, etc.) |

Example:

```js
new RegExp('\\d+', 'g')
```

[\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp)

---

## 5. RegExp Flags (Modifiers)

Flags control **how** matching is performed.

| Flag | Name         | Description                               |
| ---- | ------------ | ----------------------------------------- |
| `g`  | Global       | Finds **all** matches, not just the first |
| `i`  | Ignore case  | Case‑insensitive matching                 |
| `m`  | Multiline    | `^` and `$` work per line                 |
| `s`  | DotAll       | `.` matches newlines                      |
| `u`  | Unicode      | Full Unicode support (emojis, scripts)    |
| `y`  | Sticky       | Match must start at `lastIndex`           |
| `d`  | Indices      | Returns start/end indices of matches      |
| `v`  | Unicode sets | Enhanced Unicode sets (newer standard)    |

[\[w3schools.com\]](https://www.w3schools.com/js/js_regexp_flags.asp), [\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp)

Example:

```js
const re = /hello/gi
```

---

## 6. Character Classes

### 6.1 Basic Classes

| Pattern    | Meaning                     |
| ---------- | --------------------------- |
| `[abc]`    | a or b or c                 |
| `[^abc]`   | anything except a, b, c     |
| `[a-z]`    | lowercase letters           |
| `[A-Z0-9]` | uppercase letters or digits |

[\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions/Cheatsheet)

---

### 6.2 Predefined Classes

| Token | Meaning                              |
| ----- | ------------------------------------ |
| `\d`  | Digit (0–9)                          |
| `\D`  | Non‑digit                            |
| `\w`  | Word character `[A-Za-z0-9_]`        |
| `\W`  | Non‑word                             |
| `\s`  | Whitespace                           |
| `\S`  | Non‑whitespace                       |
| `.`   | Any char except newline (unless `s`) |

[\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions/Cheatsheet)

---

## 7. Anchors & Boundaries

| Symbol | Meaning              |
| ------ | -------------------- |
| `^`    | Start of string/line |
| `$`    | End of string/line   |
| `\b`   | Word boundary        |
| `\B`   | Non‑word boundary    |

Example:

```js
;/^\d+$/ // only digits
```

[\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions/Cheatsheet)

---

## 8. Quantifiers (How Many?)

| Quantifier | Meaning         |
| ---------- | --------------- |
| `*`        | 0 or more       |
| `+`        | 1 or more       |
| `?`        | 0 or 1          |
| `{n}`      | Exactly n       |
| `{n,}`     | n or more       |
| `{n,m}`    | between n and m |

Lazy (non‑greedy) versions:

```js
*?  +?  ??  {n,m}?
```

[\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions/Cheatsheet)

---

## 9. Groups & Capturing

### 9.1 Capturing Group

```js
;/(ab)+/
```

### 9.2 Non‑Capturing Group

```js
;/(?:ab)+/
```

### 9.3 Named Groups

```js
;/(?<year>\d{4})/
```

Access:

```js
match.groups.year
```

[\[javascript.info\]](https://javascript.info/regular-expressions)

---

## 10. Alternation (OR)

```js
;/red|green|blue/
```

Matches any alternative [\[w3schools.com\]](https://www.w3schools.com/js/js_regexp.asp)

---

## 11. Lookarounds (Advanced)

| Type                | Syntax   | Description       |
| ------------------- | -------- | ----------------- |
| Lookahead           | `(?=X)`  | Followed by X     |
| Negative lookahead  | `(?!X)`  | Not followed by X |
| Lookbehind          | `(?<=X)` | Preceded by X     |
| Negative lookbehind | `(?<!X)` | Not preceded by X |

Example:

```js
;/\d+(?=€)/ // digits followed by €
```

[\[javascript.info\]](https://javascript.info/regular-expressions)

---

## 12. Unicode & International Text

With `u` flag:

```js
;/\p{L}+/u // any letter in any language
```

Handles emojis and non‑Latin scripts correctly [\[w3schools.com\]](https://www.w3schools.com/js/js_regexp_flags.asp)

---

## 13. RegExp Methods

### 13.1 `test()`

```js
;/\d/.test('abc123') // true
```

### 13.2 `exec()`

```js
;/\d/.exec('abc123')
```

Returns match object or `null` [\[bing.com\]](https://bing.com/search?q=JavaScript+regular+expressions+guide+MDN)

---

## 14. String Methods Using Regex

| Method         | Description             |
| -------------- | ----------------------- |
| `match()`      | Returns matches         |
| `matchAll()`   | Iterator of all matches |
| `replace()`    | Replace matches         |
| `replaceAll()` | Replace all             |
| `search()`     | Index of first match    |
| `split()`      | Split by pattern        |

Example:

```js
'abc123'.replace(/\d+/g, '#')
```

[\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions)

---

## 15. Common Pitfalls & Best Practices

✅ Use `u` for Unicode text  
✅ Prefer literals for static regex  
✅ Avoid catastrophic backtracking  
✅ Comment complex regex patterns  
✅ Test with tools like regex101

[\[javascript.info\]](https://javascript.info/regular-expressions), [\[regex101.com\]](https://regex101.com/)

---

## 16. Practical Example (Validation)

```js
const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+   $/
emailRegex.test('user@test.com')
```

---

## 17. Official References (Recommended)

- MDN RegExp Guide: <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions> [\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions)
- MDN Regex Cheat Sheet: <https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions/Cheatsheet> [\[developer....ozilla.org\]](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions/Cheatsheet)
- javascript.info Regex Tutorial [\[javascript.info\]](https://javascript.info/regular-expressions)

---

If you want, I can:

- Turn this into a **cheat sheet PDF**
- Create **regex exercises** with solutions
- Provide **enterprise‑grade validation patterns** (IDs, logs, test automation)
- Add **performance & QA‑focused regex tips** (useful for Quality Engineering)

What would you like next?
