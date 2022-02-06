import Rails from "@rails/ujs"
Rails.start()

import '../styles/application.scss'
const images = require.context('../images', true)
const imagePath = (name) => images(name, true)

import 'bootstrap/dist/js/bootstrap'