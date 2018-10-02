# constant operator

#### Description
`constant` operator allows for a value equal to a constant to be generated

##### Usage
Input projection|.
---|---
none |

Input parameters|.
---|---
`constant` | numeric, the constant value to be generated, default is 0

Output relations|.
---|---
`constant`| numeric, one constant is generated for all the data 

##### Details
A `constant` value is generated for all the data. All factors are therefore associated with this constant. A typical use of this operator is when you require to generate fixed boundary values to be used as a grid line in a later (i.e. downstream) step. The grid line is created in a `layer` using the `h-grid view type`. An example would be to create a zero grid line, where this `constant`operator is used to generate a zero value and is then used as a grid line in a later step.

#### References

##### See Also

#### Examples




 
 
