# Добавление ссылки на сайте Кинопоиск
console.log "Pumba Search: kinopoisk.js added"

# Парсим название фильма и собираем initObj
targetElem = document.querySelectorAll(".moviename-big[itemprop='name']")[0]
initObj =
  target    : targetElem
  title     : targetElem.childNodes[0].nodeValue
  className : 'kinopoisk'

new window.PumbaButton initObj
