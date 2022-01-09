

-- O código abaixo copia os dados para o bucket criado no S3.
-- Nesta etapa a fonte de dados é um arquivo CSV.

copy dimproduct -- nome do arquivo
from 'S3://awsbdimproduct/dimproduct.csv' -- temos então <conexão> <nome do bucket> <nome do arquivo a ser movido para o bucket>
iam_role 'arn:aws:iam::513082880213:role/awsdwrss3' 
region 'sa-east-1' -- região onde o bucket foi criado, neste caso south america - são paulo.
delimiter ',' -- delimitador que consta no arquivo.

--Lembrando que o IAM Role criado deve ser habilitado na AWS para que a copia seja possível.

