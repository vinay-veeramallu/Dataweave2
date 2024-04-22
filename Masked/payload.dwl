%dw 2.0
output application/json


import * from dw::core::Strings
import * from dw::util::Values
fun lnameMasked(lname: String): String = lname[0] ++ "****"
fun creditMasked(credit: String): String = "(****)-(****)" ++ credit[-4 to -1]
---
payload mask field ('lname') with lnameMasked($)
       mask field('credit') with creditMasked($)
