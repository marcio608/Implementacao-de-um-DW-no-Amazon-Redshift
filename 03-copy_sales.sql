
-- Semelhante ao que foi feito com a tabela dimproduct, a tabela fato vendas também será enviada para o DW usando o comando copy.
-- Porém devido a quando quantidade de registro, essa operação será feita de modo paralelo.
-- A fonte de dados são 4 arquivos do tipo txt.

copy factsales --nome da tabela
from 'S3://awsbdimproduct/manifest.txt' -- o arquivo manifest.txt está anexado no projeto separadamente.
iam_role 'arn:aws:iam::513082880213:role/awsdwrss3' 
region 'sa-east-1'
delimiter '|' -- o delimitador mudou.
GZIP -- informando que os arquivos estão compactados.
manifest
  
