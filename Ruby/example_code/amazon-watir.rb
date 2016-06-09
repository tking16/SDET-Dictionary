require 'watir'

browse = Watir::Browser.new :firefox

browse.goto "http://amazon.co.uk"

tf = browse.text_field

tf.set "Eloquent Ruby"

browse.button.click

browse.a(text: "Eloquent Ruby (Addison-Wesley Professional Ruby)").click

price = browse.link(id: "a-autoid-3-announce").span(class: "a-color-price").text

puts price

img = browse.img(id: 'imgBlkFront')

puts img.src