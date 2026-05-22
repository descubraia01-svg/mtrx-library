# MTRX LIBRARY

Banco de prompts de IA para producao criativa da equipe MTRX.

**Status:** v1 online, com Vercel + GitHub + Supabase ativo. A proxima entrega e a evolucao visual/responsiva para suportar uma biblioteca maior em mobile, tablet e desktop.

## Links

- Site publicado: https://mtrx-library.vercel.app
- Projeto Vercel: https://vercel.com/descubraia01-6342s-projects/mtrx-library
- GitHub: https://github.com/descubraia01-svg/mtrx-library
- Supabase: https://supabase.com/dashboard/project/zqzdjcpaqtasiatbjxhs

## O que e

Sistema de biblioteca de prompts para imagem, audio, video e WhatsApp. A interface e dark, direta e pensada para producao: buscar, filtrar, copiar, combinar e administrar prompts sem depender de ferramenta pesada.

## Como usar

Abra o site publicado ou rode `index.html` localmente.

**Modo admin:** clique no botao Admin, senha `mtrx2024`.

## Funcionalidades atuais

- Busca em tempo real por texto, tags e prompt
- Filtros por Imagem, Audio, Video e Curadoria
- Chips de tags clicaveis
- Painel de resumo com total de prompts, tags, combos e status dos dados
- Copiar prompt com um clique
- Combos rapidos para copiar conjuntos de prompts
- Desfazer exclusao por 7 segundos
- Exportar banco em JSON ou TXT
- Importar JSON para restaurar ou migrar conteudo
- Admin para criar, editar, deletar prompts e montar combos
- Supabase como banco central, com localStorage como fallback

## Stack

```txt
Frontend: HTML + CSS + JavaScript vanilla
Deploy: Vercel
Repositorio: GitHub
Banco: Supabase
Fallback: localStorage
Build: nenhum
```

## Dominio

O dominio principal `mtrx.com.br` fica reservado para a futura landing page.

Subdominio planejado para a biblioteca:

```txt
library.mtrx.com.br
CNAME -> 15726c4eab95e25c.vercel-dns-017.com.
```

Subdominio reservado para o projeto `4rt1st4`:

```txt
4rt1st4.mtrx.com.br
CNAME -> cname.vercel-dns.com.
```

No momento, o DNS ainda depende da liberacao/propagacao no Registro.br.
O checklist operacional esta em `DNS_REGISTRO_BR.txt`.

## Proxima melhoria direta

Fase v1.1:

- Ajustar a experiencia para mobile, tablet e desktop
- Melhorar a leitura quando o banco crescer
- Criar mais interacoes uteis de exploracao
- Organizar melhor curadoria, tags, combos e categorias
- Preparar caminho para historico de uso e login admin real

---

MTRX LIBRARY v1.1 — atualizado em 22/05/2026
