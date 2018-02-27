#' descarga los datos desde github
#'
#' @keywords github
#'
#' @export
#'
#' @examples
#' \donttest{descargar_datos()}
#'
descargar_datos <- function(repositorio="DisRegETSII", carpeta_datos="data-raw"){
  # se descarga la carpeta_datos del repositorio
  
  github_username = "javiercara"
  github_repository = repositorio
  github_branch = "master"
  github_subdir = carpeta_datos
  local_dir = carpeta_datos
  
  download_github_subdir(github_username, github_repository, github_branch = "master", github_subdir, local_dir)
}