#Function to plot penguin graphs

plot_scatterplot_exploratory <- function(data, x_column, y_column, x_label, y_label, colour_mapping) {
  ggplot(data = data, 
         aes(x = {{ x_column }}, 
             y = {{ y_column }}, 
             color = {{ x_column }})) + 
    geom_point(width = 0.4) +
    geom_jitter(alpha = 0.25, size = 1, position = position_jitter(width = 0.4, seed = 0)) +
    scale_color_manual(values = colour_mapping) +  # Use color_mapping input here
    labs(x = x_label, y = y_label) +  # Use provided x and y labels
    theme_bw()}