#A function to plot exploratory scatterplots in R

plot_scatterplot_exploratory <- function(plot_scatterplot){
ggplot(data=clean_data, 
       aes(x=xvar, 
           y=yvar)) + 
  geom_point(aes(color=categorical_var, shape= categorical_var)) + 
  geom_jitter(aes(color = categorical_var), alpha = 0.25, position = position_jitter(width = 0.4, seed=0)) +
  scale_colour_manual(values = pre-defined_colours) + 
  scale_shape_manual(values = c(16, 17)) +
  xlab("xvar") + 
  ylab("yvar") +
  theme_bw()}