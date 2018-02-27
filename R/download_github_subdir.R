#' download a specific github subdir from a github repository
#'
#' @keywords github
#' 
#' @export
#'
#' @examples
#' github_username = "javiercara"
#' github_repository = DisRegETSII
#' github_branch = "master"
#' github_subdir = data-raw
#' local_dir = data
#' \donttest{download_github_subdir(github_username, github_repository, github_branch, github_subdir, local_dir)}
#'
download_github_subdir <- function(github_username, github_repository, github_branch, github_subdir, local_dir = NULL){
  # download a specific github_subdir from a github_repository
  #
  # javier.cara@upm.es, MIT License
  # -----------------------------------------------------------------------
  
  # full github path
  github_full <- paste("https://github.com",github_username,github_repository,
                            "archive",github_branch,".zip", sep = "/")
  
  # downloading zip file
  zip_dir <- paste(local_dir,".zip", sep = "")
  download.file(github_full, destfile = zip_dir)
  unzip(zip_dir)
  file.remove(zip_dir)
  
  # copying files
  unzip_dir <- paste(github_repository,"-",github_branch, sep = "")
  unzip_dir_full <- paste(unzip_dir, github_subdir, sep = "/")
  
  if (is.null(local_dir)){
    local_dir = github_subdir
  }
  
  if (!dir.exists(local_dir)){
    dir.create(local_dir)
  }
  
  list_of_files <- list.files(unzip_dir_full)
  file.copy(file.path(unzip_dir_full,list_of_files), local_dir)
  
  # removing...
  unlink(unzip_dir, recursive = TRUE)
}