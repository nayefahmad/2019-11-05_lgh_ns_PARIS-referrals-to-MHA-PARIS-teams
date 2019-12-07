
#'--- 
#' title: "NS: PARIS referrals to MHA teams"
#' author: "Nayef Ahmad"
#' date: "2019-12-06"
#' output: 
#'   html_document: 
#'     keep_md: yes
#'     code_folding: show
#'     toc: true
#'     toc_float:
#'       collapsed: false
#'     toc_folding: false
#' ---
#' 

#+ lib, include = FALSE
library(tidyverse)
library(denodoExtractor)

setup_sql_server()

dsn_name = "cnx_SPDBSCSTA001"
cnx <- DBI::dbConnect(odbc::odbc(), dsn = dsn_name)

vw_paris_ref <- dplyr::tbl(cnx, dbplyr::in_schema("[CommunityMart].[dbo]",
                                                  "[vwPARISReferral]"))




