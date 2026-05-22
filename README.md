# MTRX LIBRARY

Banco de prompts de IA para produção criativa da equipe MTRX.

**Status:** MVP completo — rodando localmente, preparado para Supabase, deploy Vercel pendente.

## O que é

Sistema de biblioteca de prompts para imagem, áudio, vídeo e WhatsApp. Interface dark com design premium, modo admin protegido por senha e exportação de dados.

## Como usar

Abra `index.html` no browser. Sem instalação, sem servidor, sem dependências.

**Modo admin:** clique 3x no logo MTRX → senha `mtrx2024`

## Funcionalidades

- Busca em tempo real por texto
- Filtro por tags clicáveis
- Copiar prompt com um clique (fallback automático via file://)
- Desfazer exclusão (7 segundos)
- Exportar banco em JSON (backup) ou TXT (WhatsApp/Drive)
- Importar JSON para restaurar banco
- Combos: copia conjunto de prompts prontos para imagem e áudio
- Admin: criar, editar, deletar categorias, subcategorias e prompts
- Admin: criar combos com parts personalizáveis

## Categorias

| Categoria | Subcategorias |
|---|---|
| Prompts de Imagem | Estilo Visual, Iluminação, Ambiente, Composição |
| Prompts de Áudio | Gênero Musical, Voz, Instrumentação, Mood |
| Prompts de Vídeo | Movimentos de Câmera, Estilo Visual, Transições, Performance |
| WhatsApp | Vendas, Relacionamento |

## Stack

```
HTML + CSS + JavaScript vanilla
localStorage como fallback
Supabase opcional via config.js + supabase.sql
Sem framework, sem build
```

## Supabase

O projeto já aponta para:

`https://zqzdjcpaqtasiatbjxhs.supabase.co`

Para ativar a sincronização online:

1. Rode `supabase.sql` no SQL Editor do Supabase
2. Copie a anon public key em Project Settings → API
3. Cole a chave em `config.js`
4. Faça deploy na Vercel

## Repositório

`https://github.com/descubraia01-svg/mtrx-library`

Branch: `main`

## Próximos passos

1. **Deploy Vercel** — importar repo e publicar online
2. **Ativar Supabase** — rodar SQL e preencher anon key em `config.js`
3. **Login admin** — autenticação via Supabase Auth
4. **Domínio** — mtrx-library.vercel.app ou domínio próprio

---

*MTRX LIBRARY v1 — MVP — 22/05/2026*
