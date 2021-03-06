#' @include utils.R
#' @include operand-classes.R
#' @include expr-classes.R
NULL

# Coercing to .operand subclasses
setAs(from = "character", to = "gaDimOperand", def = simpleCoerce)
setAs(from = "numeric", to = "gaDimOperand", def = coerceViaChar)
setAs(from = "Date", to = "gaDimOperand", def = coerceViaChar)
setAs(from = "logical", to = "gaDimOperand", def = coerceLogicalOperand)
setAs(from = "numeric", to = "gaMetOperand", def = simpleCoerce)
setAs(from = "character", to = "gaMetOperand", def = simpleCoerceToNumeric)
setAs(from = "character", to = "mcfDimOperand", def = simpleCoerce)
setAs(from = "numeric", to = "mcfDimOperand", def = coerceViaChar)
setAs(from = "Date", to = "mcfDimOperand", def = coerceViaChar)
setAs(from = "logical", to = "mcfDimOperand", def = coerceLogicalOperand)
setAs(from = "numeric", to = "mcfMetOperand", def = simpleCoerce)
setAs(from = "character", to = "mcfMetOperand", def = simpleCoerceToNumeric)
setAs(from = "character", to = "rtDimOperand", def = simpleCoerce)
setAs(from = "numeric", to = "rtDimOperand", def = coerceViaChar)
setAs(from = "Date", to = "rtDimOperand", def = coerceViaChar)
setAs(from = "logical", to = "rtDimOperand", def = coerceLogicalOperand)
setAs(from = "numeric", to = "rtMetOperand", def = simpleCoerce)
setAs(from = "character", to = "rtMetOperand", def = simpleCoerceToNumeric)

setAs(from = "character", to = ".dimOperand", def = simpleCoerce)
setAs(from = "numeric", to = ".metOperand", def = simpleCoerce)
setAs(from = "logical", to = ".dimOperand", def = coerceLogicalOperand)

setAs(from = "character", to = ".operand", def = function(from){
  as(from, ".dimOperand")
})

setAs(from = "numeric", to = ".operand", def = function(from){
  as(from, ".metOperand")
})

setAs(from = "logical", to = ".operand", def = function(from){
  as(from, ".dimOperand")
})


#############\/ Transform to method of Operand and Operand<- generic functions

setAs(from = ".expr", to = ".operand",
      def = function(from, to) {
        from@operand
      },
      replace = function(from, value) {
        use_class <- class(from@operand)
        from@operand <- as(value, use_class)
        validObject(from)
        from
      })

# Coercing to logical
setAs(from = ".dimOperand", to = "logical",
      def = function(from, to) {
        YesNo <- c("Yes" = TRUE, "No" = FALSE)
        index <- pmatch(tolower(from), tolower(names(YesNo)))
        YesNo[index]
      }
)
