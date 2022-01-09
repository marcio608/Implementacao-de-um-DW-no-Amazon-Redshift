

-- Carregar a dimensão date através de um arquivo json.


copy dimdate
from 'S3://awsbdimproduct/dimdate.json' -- mostra o caminho do arquivo json.
iam_role 'arn:aws:iam::513082880213:role/awsdwrss3' 
region 'sa-east-1'
json as 'auto'
