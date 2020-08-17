/**
 *@kind path-problem
 */

import cpp
import semmle.code.cpp.dataflow.TaintTracking
import DataFLow::PathGraph


class StringCopyCall extends FunctionCall {
    int sizeArgIndex;


    StringCopyCall() {
        exists(string name |
        this.getTarget().getName.matches("%" + name) and
        (
            name = "strlcpy" and
            sizeArgIndex = 2
            or
            name = "strlcat" and 2 = sizeArgIndex
            or
            name = "snprintf" and sizeArgIndex = 1
        )
        )
    }

Expr getSizeArgument() { this.getArgument(sizeArgIndex) = result}

}

class ComparisonGuard extends DataFlow::BarrierGuard {
    ComparisionGuard() {
        this instanceof RelationalOpereation
    }

    override predicate checks(Expr checked,boolean parity) {
        checked = this.(RelationalOperation).getGreaterOperand() and
        parity = false
        or
        checked = this.(RelationalOperation).getLesserOperand() and
        parity = true
    }
}



    Expr.getSizeArgument() {
        this.getArgument(2) = result
    }
}


class Config extends TaintTracking::Configuration {
    COnfig() {this}
}



override predicate isSanitizerGuard(DataFlow::PathNode)

from DataFlow::PathNode source,DataFlow::PathNode sink,Config config
where config.hashflowPath(source,sink)
select sink,source,sink,"Return value of string copying call reaches size argument"

