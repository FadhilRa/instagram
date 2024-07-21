# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "filepond", to: "https://ga.jspm.io/npm:filepond@4.30.4/dist/filepond.js"
pin_all_from "app/javascript/custom", under: "custom"
pin "filepond-plugin-image-preview" # @4.6.12
pin "filepond-plugin-file-validate-type" # @1.2.9
