const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
    './node_modules/flowbite/**/*.js'
  ],
  theme: {
    'fontFamily': {
      'open-sans': ['Open Sans', 'sans-serif'],
      'dosis': ['Dosis', 'sans-serif'],
      'pacifico': ['Pacifico', 'sans-serif']
    }
  },
  
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('flowbite/plugin')
  ]
}
