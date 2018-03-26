#' descarga los datos desde github a la carpeta DisRegETSII
#'
#' @keywords github
#'
#' @export
#'
#' @examples
#' \donttest{descargar_datos()}
#'
descargar_datos <- function(nueva_carpeta = "DisRegETSII"){
  # se descarga la carpeta_datos del repositorio
  
  github_username = "javiercara"
  github_repository = "DisRegETSII"
  github_branch = "master"
  github_subdir = "data-raw"
  local_dir = nueva_carpeta
  file_type = c("txt","dat")
  
  download_github_subdir(github_username, github_repository, github_branch, github_subdir, local_dir, file_type)
}