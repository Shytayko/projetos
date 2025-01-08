select 
    pf_pj, 
    count(cnpj_cpf),
    round(count(cnpj_cpf) * 100.0 / sum(count(cnpj_cpf)) over(), 2) as clientes_distribuicao
from d_cliente
group by pf_pj