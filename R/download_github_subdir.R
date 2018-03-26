#' Download files from a github subdir to a local dir
#' 
#' @description
#' Download files from a github subdir to a local dir
#' 
#' @param github_username github username
#' @param github_repository github repository
#' @param gihub_branch github branch
#' @param github_subdir github subdirectory to be downloaded
#' @param local_dir locar directory where files are coppied
#' @param file_type vector with type of files to be downloaded
#'
#' @keywords github
#' 
#' @export
#'
#' @examples
#' github_username = "javiercara"
#' github_repository = "DisRegETSII"
#' github_branch = "master"
#' github_subdir = "data-raw"
#' local_dir = "data1"
#' file_type = c("txt","csv")
#' \donttest{download_github_subdir(github_username, github_repository, github_branch, github_subdir, local_dir)}
#'
download_github_subdir <- function(github_username, github_repository, github_branch, github_subdir, 
                                   local_dir = NULL, file_type = NULL){
  # download a specific "github_subdir" from a github_repository to a "local_dir"
  # if local_dir = NULL => local_dir = github_subdir
  # if file_type = NULL, the whole dir is downloaded
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
  
  if (is.null(file_type)){
    # the whole dir
    list_of_files <- list.files(unzip_dir_full)
    file.copy(file.path(unzip_dir_full,list_of_files), local_dir)
  } else{
    for (k in 1:length(file_type)){
      # files ending .txt, .csv,...
      list_of_files = list.files(unzip_dir_full,paste(".",file_type[k],"$",sep = ""))
      file.copy(file.path(unzip_dir_full,list_of_files), local_dir)
    } # for
  } # if
  
  # removing...
  unlink(unzip_dir, recursive = TRUE)
}