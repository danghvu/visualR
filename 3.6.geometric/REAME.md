```R
# point wise
ggplot(mpg) +                         
  geom_point(aes(x = displ, y = hwy, color = class))
```

![code-1](geo1.png)

```R
# line wise with confident interval
ggplot(mpg) +                         
  geom_smooth(aes(x = displ, y = hwy))
```

![code-2](geo2.png)

```R
# separate them into categories
ggplot(mpg) +                         
  geom_smooth(aes(x = displ, y = hwy, linetype = drv))
```

![code-3](geo3.png)

```R
# maybe to be clearer, stack them with point
ggplot(mpg) +                         
  geom_smooth(aes(x = displ, y = hwy, linetype = drv)) + 
  geom_point(aes(x = displ, y = hwy, color = drv))
```

![code-3](geo4.png)

```R
# just a shorter way to put it, declare aes globally
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, linetype = drv, color = drv) ) +                         
  geom_smooth() +
  geom_point()
```

![code-1](geo5.png)

```R
# or just...
ggplot(mpg, aes(x = displ, y = hwy, linetype = drv, color = drv)) +                         
  geom_smooth() +
  geom_point()
```

![code-1](geo6.png)

```R
# we can facet this ?
ggplot(mpg, aes(x = displ, y = hwy, linetype = drv, color = drv)) +                         
  geom_smooth() +
  geom_point() + facet_wrap(~class)
```

![code-5](geo7.png)
