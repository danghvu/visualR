```R
# mpg is a data frame (ggplot2::mpg), a collection of 38 models of cars with some data
mpg

# A tibble: 234 x 11
   manufacturer model      displ  year   cyl trans      drv     cty   hwy fl    class  
   <chr>        <chr>      <dbl> <int> <int> <chr>      <chr> <int> <int> <chr> <chr>  
 1 audi         a4           1.8  1999     4 auto(l5)   f        18    29 p     compact
 2 audi         a4           1.8  1999     4 manual(m5) f        21    29 p     compact
 3 audi         a4           2    2008     4 manual(m6) f        20    31 p     compact
 4 audi         a4           2    2008     4 auto(av)   f        21    30 p     compact
 5 audi         a4           2.8  1999     6 auto(l5)   f        16    26 p     compact
 6 audi         a4           2.8  1999     6 manual(m5) f        18    26 p     compact
 7 audi         a4           3.1  2008     6 auto(av)   f        18    27 p     compact
 8 audi         a4 quattro   1.8  1999     4 manual(m5) 4        18    26 p     compact
 9 audi         a4 quattro   1.8  1999     4 auto(l5)   4        16    25 p     compact
10 audi         a4 quattro   2    2008     4 manual(m6) 4        20    28 p     compact
# ... with 224 more rows
```

```R
# this will answer what it is.
?mpg
```

> This dataset contains a subset of the fuel economy data that the EPA makes available on http://fueleconomy.gov. It contains only models which had a new release every year between 1999 and 2008 - this was used as a proxy for the popularity of the car.

```R
# Now we try to plot it.
ggplot(mpg) +                         # short-cut for ggplot(data = mpg)
  geom_point(aes(x = displ, y = hwy)) # short-cut for geom_point(mapping = aes())
```
  
![code-1](mpg1.png)

```R
# What is aes ?
?aes
```

> Aesthetic mappings describe how variables in the data are mapped to visual properties (aesthetics) of geoms. Aesthetic mappings can be set in ggplot2 and in individual layers.

```R
# Try to add color to it, this also automatically add appropriate labels.
ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy, color = class))
```

![code-2](mpg2.png)

```R
# Same for shape.
ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy, alpha = class))
```

![code-3](mpg3.png)

```R
# If we do not add to the aes(), the color applies to all.
ggplot(mpg) + 
  geom_point(aes(x = displ, y = hwy), color = 'blue')
```

![code-4](mpg4.png)
