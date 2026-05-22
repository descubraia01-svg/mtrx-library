# GUIA DO ADMIN — MTRX LIBRARY

## Acesso

Site publicado:

https://mtrx-library.vercel.app

Para entrar no modo admin:

1. Clique no botao **Admin**
2. Digite a senha `mtrx2024`
3. Use o painel fixo no rodape

Para sair, clique em **Sair**.

## O que o admin pode fazer

### Prompts

- Criar prompt dentro de uma subcategoria
- Editar titulo, descricao, texto copiavel e tags
- Favoritar/remover da curadoria
- Deletar prompt com opcao de desfazer por 7 segundos

### Combos

- Criar combos com nome, icone e partes
- Cada parte tem label e texto de prompt
- A equipe copia o combo completo com um clique

### Dados

- Exportar JSON para backup completo
- Exportar TXT para compartilhar no WhatsApp ou Drive
- Importar JSON para restaurar ou migrar uma base

## Banco de dados

O projeto agora usa Supabase como banco central.

Mesmo assim, o app mantem fallback em `localStorage`. Isso significa:

- Se o Supabase estiver ok, os dados sincronizam online
- Se o Supabase falhar, o app continua abrindo com backup local
- Mudancas grandes ainda devem ter backup JSON antes

## Boas praticas para cadastrar prompts

| Campo | Recomendacao |
|---|---|
| Titulo | Curto, claro e facil de buscar |
| Descricao | Explicar quando usar e qual efeito criativo gera |
| Prompt | Texto exato que sera copiado para a IA |
| Tags | Termos curtos, separados por virgula |
| Curadoria | Marcar apenas o que o time usa bastante |

Tags recomendadas:

```txt
capa, reels, show, artista, videoclipe, editorial, palco, estudio,
produto, logotipo, sertanejo, funk, trap, Suno, Midjourney, Runway,
Kling, Sora, ChatGPT, WhatsApp
```

## Fluxo seguro para mudancas grandes

1. Entrar no admin
2. Exportar JSON
3. Fazer as alteracoes
4. Testar busca, tags e copia
5. Se algo der errado, importar o JSON salvo

## Problemas comuns

**Prompt nao copiou**

Use o botao de copiar no card. Em navegadores com bloqueio de clipboard, o app tenta um fallback automatico.

**Nao apareceu no outro computador**

Confira o painel de metricas. Se aparecer erro de Supabase, o app pode estar usando o backup local.

**Quero trocar a senha**

Abra `index.html`, procure `const ADMIN_CODE` e altere o valor. Depois faca commit e push.

---

MTRX LIBRARY v1.1 — Admin Guide — 22/05/2026
