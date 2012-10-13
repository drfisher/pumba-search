# Объект для создания ссылки
console.log "Pumba Search: base.js added"

class window.PumbaButton

  href: "http://pumba.ozr.ru/index.php?job=search&Where=2&what=2&q="

  constructor: (@obj) ->
    # Подготовка объекта
    titleLen = @obj.title.length - 1
    if @obj.title.lastIndexOf(" ") is titleLen
      @obj.title = @obj.title.substring 0, titleLen
    @render()

  render: ->
    @button = document.createElement 'a'
    @button.className = "pumba-button #{@obj.className}"
    @button.title = "Найти «#{@obj.title}» на Пумбе"
    hrefValue = @obj.title.replace new RegExp(" ", "g"), "+"
    @button.setAttribute "href", @href + hrefValue
    @button.setAttribute "target", "_blank"
    @obj.target.appendChild @button
