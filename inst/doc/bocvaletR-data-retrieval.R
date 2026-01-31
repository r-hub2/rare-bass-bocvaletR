## -----------------------------------------------------------------------------
library(bocvaletR)

## -----------------------------------------------------------------------------
series <-boc_list_series()
head(series)

## -----------------------------------------------------------------------------
exchange <- boc_list_series(keyword='exchange',limit=5)
exchange

## -----------------------------------------------------------------------------
groups <- boc_list_groups()
head(groups)

## -----------------------------------------------------------------------------
FX <- boc_list_groups(keyword = 'FX')
FX

## -----------------------------------------------------------------------------
FX[4,] #this is the group information retrieved from section 2.2
FX_RATE_DAILY = boc_groups(FX[4,]$id)
FX_RATE_DAILY$series

## -----------------------------------------------------------------------------
fx <- boc_series("FXUSDCAD")
head(fx)

## -----------------------------------------------------------------------------
ids <- c("FXUSDCAD", "FXEURCAD")
fx_multi <- boc_series(ids)
head(fx_multi)

## -----------------------------------------------------------------------------
groups <- boc_list_groups(keyword = "exchange", limit = 1)
group_id <- groups$id[1]

group_data <- boc_groups(group_id)
series_ids <- unique(group_data$series$id)

fx_selected <- boc_series(series_ids[1:2])
head(fx_selected)

## -----------------------------------------------------------------------------
rss_id <-boc_fx_rss_available()
rss_id

## -----------------------------------------------------------------------------
rss <- boc_fx_rss()
rss

#retrieving single fx_rss with rss_id

rss_AUD <- boc_fx_rss(rss_id$item_series[1])
rss_AUD

