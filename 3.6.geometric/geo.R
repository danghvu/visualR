# point wise
ggplot(mpg) +                         
  geom_point(aes(x = displ, y = hwy, color = class))

# line wise with confident interval
ggplot(mpg) +                         
  geom_smooth(aes(x = displ, y = hwy))

# separate them into categories
ggplot(mpg) +                         
  geom_smooth(aes(x = displ, y = hwy, linetype = drv))
  
# maybe to be clearer, stack them with point
ggplot(mpg) +                         
  geom_smooth(aes(x = displ, y = hwy, linetype = drv)) + 
  geom_point(aes(x = displ, y = hwy, color = drv))

# just a shorter way to put it, declare aes globally
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, linetype = drv, color = drv) ) +                         
  geom_smooth() +
  geom_point()

# or just...
ggplot(mpg, aes(x = displ, y = hwy, linetype = drv, color = drv)) +                         
  geom_smooth() +
  geom_point()

# we can facet this ?
ggplot(mpg, aes(x = displ, y = hwy, linetype = drv, color = drv)) +                         
  geom_smooth() +
  geom_point() + facet_wrap(~class)
