```R
# the tidyverse share a common philosophy of data and R programming.
install.packages("tidyverse")
```

```R
# to show what kind of package it is.
library(tidyverse)

── Attaching packages ────────────────────────────────────────────────────────────────────────── tidyverse 1.2.1 ──
✔ ggplot2 2.2.1     ✔ purrr   0.2.5
✔ tibble  1.4.2     ✔ dplyr   0.7.6
✔ tidyr   0.8.1     ✔ stringr 1.3.1
✔ readr   1.1.1     ✔ forcats 0.3.0
```

```R
?tidyverse
```

> The 'tidyverse' is a set of packages that work in harmony because they share common data representations and 'API' design. This package is designed to make it easy to install and load multiple 'tidyverse' packages in a single step. Learn more about the 'tidyverse' at <https://tidyverse.org>.

```R
install.packages(c("nycflights13", "gapminder", "Lahman"))
# c(): This is a generic function which combines its arguments.
# The default method combines its arguments to form a vector.
# All arguments are coerced to a common type which is the type of the returned value,
# and all attributes except names are removed.
```