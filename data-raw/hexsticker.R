library(hexSticker)
library(here)
sticker(here("data-raw", "coronavirus.png"), package="covid19srilanka",
        p_size=5, s_x=1, s_y=.75, s_width=.43,
        h_fill = "#4d042d",
        filename="man/figures/hex.png")

