# Добавление ссылки на сайте IMDB.COM
console.log "Pumba Search: imdb.js added"

# Парсим название фильма и собираем initObj
targetElem = document.querySelectorAll("#overview-top h1[itemprop='name'] span.nobr")[0]
initObj =
  target    : targetElem
  title     : targetElem.previousSibling.nodeValue.match( /[^\n]+/ )[0]
  className : 'imdb'

new window.PumbaButton initObj
