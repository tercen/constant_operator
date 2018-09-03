library(tercen)
library(dplyr)

ctx = tercenCtx()

value = as.double(ctx$op.value('value'))
cTable = tibble(.ci=seq.int(0,ctx$cschema$nRows-1)) %>% mutate(value=value)
rTable = tibble(.ri=seq.int(0,ctx$rschema$nRows-1)) %>% mutate(value=value)

cTable %>% full_join(rTable) %>%
  ctx$addNamespace() %>%
  ctx$save() 