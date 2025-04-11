if exists('g:colors_name')
    highlight clear
endif

set background=dark
let g:colors_name='lucka'

lua require('dmdz.plugins.colors.lucka').setup()