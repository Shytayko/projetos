select
    dcli.chave,
    dcli.cnpj_cpf,
    dcli.nome_cliente,
    dcli.pf_pj,
    sum(valor_mensalidade_beneficio) as valor_mensalidade
from gold.f_vendas as fven
left join 
    d_cliente as dcli on dcli.id_cliente = fven.id_cliente
    and dcli.id_cooperativa = fven.id_cooperativa and dcli.pf_pj = dcli.pf_pj
group by
    dcli.chave,
    dcli.cnpj_cpf,
    dcli.nome_cliente,
    dcli.pf_pj