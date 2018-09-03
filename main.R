library(tercen)
library(dplyr)
 
fun = function(x) {return(x)} 
 
(ctx = tercenCtx())  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(value = fun(as.double(ctx$op.value('value')))) %>%
  ctx$addNamespace() %>%
  ctx$save()