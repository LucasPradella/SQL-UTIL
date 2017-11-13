update TABELA_ALTERACAO as la
INNER JOIN TABELA_DOIS as td ON la.ID_TABELA_ALTERACAO  = td.ID_TABELA_ALTERACAO
SET la.DATA_GERACAO =  ADDTIME(la.DATA_INCLUSAO, "-02:00:00")      -- subtrai duas horas, para adicionar apenas altear para "+02:00:00"
where la.DATA_GERACAO > "2017-10-28 00:00:00"  and la.DATA_GERACAO < "2017-10-29 23:59:59" 
and td.CAMPO_TABELA_DOIS = 1
and  (date_format(la.DATA_GERACAO, "%H")) - (date_format(la.DATA_INCLUSAO, "%H") )  = -3;
