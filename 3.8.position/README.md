```R
# to fill the bar-chart with color, you have to use fill instead of color
# can fill according to certain category
ggplot(diamonds, aes(x = cut, fill = clarity)) + 
  geom_bar()
```

![code-1](pos1.png)

```R
# can use alpha for better looking .. really ?
ggplot(diamonds, aes(x = cut, fill = clarity)) + 
  geom_bar(alpha = 0.5)
```

![code-2](pos2.png)

```R
# ***super useful*** stack-bar with percentage can be done in a weird way.
ggplot(diamonds, aes(x = cut, fill = clarity)) +
  geom_bar(position = "fill")
```

![code-3](pos3.png)

```R
# somewhat less useful, but still used quite frequently, bar next to each other.
ggplot(diamonds, aes(x = cut, fill = clarity)) +
  geom_bar(position = "dodge")
```

![code-4](pos4.png)

```R
# do not just stack or put them next to each other, move them around..
ggplot(diamonds, aes(x = cut, fill = clarity)) +
  geom_bar(position = "jitter")
```

![code-5](pos5.png)

```R
# probably useful for other chart like scatter, point in the same position is distingiable.
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(position = "jitter")
```

![code-6](pos6.png)
