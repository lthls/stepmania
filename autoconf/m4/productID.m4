AC_DEFUN([SM_PRODUCT_ID], [

productID="$(sed -nr /define\\s+PRODUCT_ID_BARE/\{s/.*define\\s+PRODUCT_ID_BARE\\s+\(.+\)\\s+/\\1/\;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ\ /abcdefghijklmnopqrstuvwxyz-/\;p\;q\} src/ProductInfo.h)"

STEPMANIA_DIR="$prefix/$productID"

AC_SUBST(STEPMANIA_DIR)

])
