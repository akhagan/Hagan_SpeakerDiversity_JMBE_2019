source("../code/demo_comp.R")
source("../code/gender_comp.R")
source("../code/lectureship_div.R")

blank <- ggplot()

legend <- get_legend(gender_plot_leg)

top_row <- plot_grid(gender_plot, blank, legend,
                     rel_widths = c(2, 1, 1), nrow = 1)

bottom_row <- plot_grid(lectureship_demo_plot, lectureship_gend_plot,
                        labels = c("C", "D"), label_size = 18)

plot_grid(top_row, demo_plot, bottom_row, labels = c("A", "B", ""),
          label_size = 18, nrow = 3, rel_widths = c(1, 3, 1))

ggsave("Figure_1.jpg", device = 'jpg', 
       path = '../submission', width = 12, height = 12)
