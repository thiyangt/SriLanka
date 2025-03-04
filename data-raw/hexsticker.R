library(SriLanka)
library(ggplot2)
data("lka_adm0")
pp <- ggplot(lka_adm0) + 
  geom_sf(colur="#75CE9F", fill="#75CE9F") +
  theme(
    # Remove panel background
    panel.background = element_blank(),  
    # Remove overall plot background
    plot.background = element_blank(),
    # Remove grid lines
    panel.grid = element_blank(),
    # Remove axis lines, ticks, and text
    axis.line = element_blank(),
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    # Optional: Remove legend background and text
    legend.background = element_blank(),
    legend.text = element_blank(),
    # Remove plot margins
    plot.margin = margin(0, 0, 0, 0)
  )

# To view the plot
print(pp)
# Save the plot with a transparent background
ggsave(here("data-raw","map.png"), pp, bg = "transparent")

sticker(here("data-raw", "map.png"), package="SriLanka",
        p_color="#2ba6e3",
        p_size=20, s_x=1, s_y=0.8, s_width=.5,
        h_fill = "#000080",
        h_color="#2ba6e3",
        filename=here("data-raw","hex.png"))

