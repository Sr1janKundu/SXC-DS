rm(list = ls())
library(tidyverse)

f = function(n, mu, df)
{
  l1 = list()
  plot = list()
  for (i in seq_along(mu))
  {
    d1 = data.frame(SL_no = 1:n)
    x = 0
    
    for(j in seq_along(df))
    {
      x = rnorm(n, mu[i], 1)/sqrt(rchisq(n, df[j])/df[j])
      d1 = cbind(d1, x)
    }
    colnames(d1)[-1] = paste('df = ', df)
    l1[[i]] = d1
  
  plot[[i]] = l1[[i]] %>%
    tidyr::pivot_longer(1-, 'Index') %>%
    ggplot(aes(value, fill = Index))+
    geom_histogram(aes(value, y = ..density.., col = 1), bins = 50)+
    facet_wrap(~Index, ncol = 4, scales = 'free')+
    stat_function(fun = dt, args = list(df = df),
                  col = 'red', lwd = 1)+
    labs(title = paste('mu = ', mu[i]))+
    theme(legend.position = 'none', axis.text = element_text(size = 7))
  }
  ggarrange(plotlist = plot, nrow = 2)
}
