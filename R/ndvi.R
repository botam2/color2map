#' Normalization Difference Vegetation Index
#'
#' Mapping the ndvi index
#'
#' @param nclass number of break of palette.
#' @param opossite change the position of the palette.
#' @param img_prev previous visualization of palette.
#' @return Hexadecimal code of colour
#'
#' @importFrom cptcicty cpt
#' @importFrom graphics image
#' @examples
#' \dontrun{
#' ndvi_index <- ndvi(nclass = 5, opossite = TRUE, img_prev = TRUE)
#' }
#' @export ndvi

ndvi <- function(
  nclass,
  opossite = FALSE,
  img_prev = FALSE
  ) {
  call_ndvi <- cpt(
    pal = 'grass_ndvi',
    n = nclass,
    rev = opossite
    )
  if(img_prev == TRUE)
    {
      image(matrix(1:nclass),col = call_ndvi)
    } else {
      return(call_ndvi)
  }
}
