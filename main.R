library(tercen)
library(dplyr)
 
ctx = tercenCtx()

value = as.double(ctx$op.value('value'))

table = tercen::dataframe.as.table(ctx$addNamespace(data.frame(value=c(value)))) 
table$properties$name = 'value'
table$columns[[1]]$type = 'double'

relation = SimpleRelation$new()
relation$id = table$properties$name

join = JoinOperator$new()
join$rightRelation = relation

result = OperatorResult$new()
result$tables = list(table)
result$joinOperators = list(join)

ctx$save(result) 