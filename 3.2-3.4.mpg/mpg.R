# mpg is a data frame (ggplot2::mpg), a collection of 38 models of cars with some data
mpg

# this will answer what it is.
?mpg

# Now we try to plot it.
ggplot(mpg) +                         # short-cut for ggplot(data = mpg)
  geom_point(aes(x = displ, y = hwy)) # short-cut for geom_point(mapping = aes())

# What is aes ?
?aes

# Try to add color to it, this also automatically add appropriate labels.
ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy, color = class))

# Same for shape.
ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy, alpha = class))

# If we do not add to the aes(), the color applies to all.
ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy), color = 'blue')
