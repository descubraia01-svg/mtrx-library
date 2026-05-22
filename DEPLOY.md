# DEPLOY — MTRX LIBRARY

## Status

Deploy ativo na Vercel:

- Site: https://mtrx-library.vercel.app
- Projeto: https://vercel.com/descubraia01-6342s-projects/mtrx-library
- Repositorio: https://github.com/descubraia01-svg/mtrx-library
- Branch de producao: `main`

Cada `git push` na branch `main` dispara novo deploy automaticamente.

## Fluxo padrao de atualizacao

```bash
git status
git add .
git commit -m "descricao da mudanca"
git push
```

Depois do push, a Vercel normalmente publica em poucos segundos.

## Configuracao atual

```txt
Framework Preset: Other
Build Command: vazio
Output Directory: ./
Root Directory: ./
```

O projeto e HTML puro, entao nao precisa instalar dependencias nem rodar build.

## Supabase

O app usa `config.js` para apontar para o Supabase:

```js
window.MTRX_SUPABASE = {
  url: 'https://zqzdjcpaqtasiatbjxhs.supabase.co',
  anonKey: 'sb_publishable_a7yRYgpUrUFgwIy7yIRphg_kJ4OKRzN'
};
```

Tabela principal:

```txt
mtrx_library_state
```

O arquivo `supabase.sql` guarda a estrutura usada no projeto.

## Dominio

O dominio principal `mtrx.com.br` nao deve ser apontado para este projeto, porque sera usado na landing page futura.

Para a biblioteca, usar:

```txt
library.mtrx.com.br
```

Registro DNS necessario no Registro.br:

```txt
Tipo: CNAME
Nome: library
Valor: 15726c4eab95e25c.vercel-dns-017.com.
```

Quando o CNAME propagar, a Vercel valida o dominio automaticamente.

### Subdominio 4rt1st4

Reservado para o projeto/site `4rt1st4`.

```txt
4rt1st4.mtrx.com.br
```

Registro DNS previsto:

```txt
Tipo: CNAME
Nome: 4rt1st4
Valor: cname.vercel-dns.com.
```

Esse subdominio tambem precisa ser adicionado no projeto correto da Vercel.
O DNS sozinho aponta para a Vercel, mas a Vercel so entrega o site quando o
dominio esta cadastrado no projeto correspondente.

Checklist completo salvo em `DNS_REGISTRO_BR.txt`.

## Links uteis

- Novo projeto Vercel: https://vercel.com/new
- Projeto atual na Vercel: https://vercel.com/descubraia01-6342s-projects/mtrx-library
- Domains na Vercel: https://vercel.com/descubraia01-6342s-projects/mtrx-library/settings/domains
- Supabase: https://supabase.com/dashboard/project/zqzdjcpaqtasiatbjxhs
- Registro.br: https://registro.br/painel/dominios/?dominio=mtrx.com.br

---

MTRX LIBRARY v1.1 — Deploy Guide — 22/05/2026
