# constant operator

#### Description
`constant` operator allows for a value equal to a constant to be generated

##### Usage
Input projection|.
---|---
none |

Input parameters|.
---|---
`value` | numeric, the constant value to be generated, default is 0

Output relations|.
---|---
`constant`| numeric, one constant is generated per cell

##### Details
A `constant` value is generated for all the data. All factors are therefore associated with this constant. A typical use of this operator is when you require to generate fixed boundary values to be used as a grid line in a later (i.e. downstream) step. The grid line is created in a `layer` using the `h-grid view type`. An example would be to create a zero grid line, where the`constant`operator is used to generate a zero value and a zero line is then available for later visuals.

#### References

##### See Also

#### Examples




 
 
