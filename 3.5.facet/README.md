```R
# one way is to use label...
ggplot(mpg) +                         
  geom_point(aes(x = displ, y = hwy, color = class))
```

![code-1](facet1.png)

```R
# another way is to use facet!
ggplot(mpg) +                         
  geom_point(aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2) # ~ create a "formula" which facet_wrap requires
```

![code-2](facet2.png)

```R
# this facet gets complicated really quick, arrange it to grid for more than 1 class.
ggplot(mpg) +                         
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(class ~ cyl)
```

![code-3](facet3.png)