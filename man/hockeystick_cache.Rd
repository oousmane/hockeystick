% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_cache.R
\name{hockeystick_cache}
\alias{hockeystick_cache}
\alias{hockeystick_cache_list}
\alias{hockeystick_cache_delete}
\alias{hockeystick_cache_delete_all}
\alias{hockeystick_cache_details}
\title{Manage cached datasets}
\usage{
hockeystick_cache_list()

hockeystick_cache_delete(files, force = TRUE)

hockeystick_cache_delete_all(force = TRUE)

hockeystick_cache_details(files = NULL)
}
\arguments{
\item{files}{(character) one or more complete file names}

\item{force}{(logical) Should files be force deleted? Default: \code{TRUE}}
}
\description{
Manage cached datasets
}
\details{
\code{cache_delete} only accepts 1 file name, while \code{cache_delete_all}
doesn't accept any names, but deletes all files. For deleting many
specific files, use \code{cache_delete} in a \code{\link[=lapply]{lapply()}} type call

We cache using \code{\link[rappdirs:user_cache_dir]{rappdirs::user_cache_dir()}}, find your cache
folder by executing \code{rappdirs::user_cache_dir("hockeystick")}
}
\section{Functions}{

\itemize{
\item \code{hockeystick_cache_list()} returns a character vector of full path
file names
\item \code{hockeystick_cache_delete()} deletes one or more files, returns nothing
\item \code{hockeystick_cache_delete_all()} delete all files, returns nothing
\item \code{hockeystick_cache_details()} prints file name and file size for each file,
supply with one or more files, or no files (and get details for
all available)
}
}

\examples{
\dontrun{
# list files in cache
hockeystick_cache_list()

# List info for single files
hockeystick_cache_details(files = hockeystick_cache_list()[1])
hockeystick_cache_details(files = hockeystick_cache_list()[2])

# List info for all files
hockeystick_cache_details()

# delete files by name in cache
# hockeystick_cache_delete(files = hockeystick_cache_list()[1])

# delete all files in cache
# hockeystick_cache_delete_all()
}
}
