ALTER DATABASE LOJABRA SET EMERGENCY;

DBCC CHECKDB (LOJABRA , REPAIR_ALLOW_DATA_LOSS) WITH NO_INFOMSGS;

sp_configure 'allow updates',1
reconfigure with override

DBCC CHECKDB (LOJABRA, REPAIR_ALLOW_DATA_LOSS) WITH NO_INFOMSGS;

DBCC CHECKCATALOG ('loja_bra')



sp_dboption 'LOJABRA','single_user', FALSE

sp_dboption 'LOJABRA', 'dbo use only', true

sp_configure 'allow updates',0
reconfigure with override

ALTER DATABASE LOJABRA SET MULTI_USER WITH ROLLBACK IMMEDIATE
