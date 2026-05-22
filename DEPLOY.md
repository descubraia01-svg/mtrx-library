# DEPLOY — MTRX LIBRARY

Guia rápido para colocar o site no ar via Vercel.

---

## Passo a passo (5 minutos)

### 1. Acesse a Vercel
[vercel.com/new](https://vercel.com/new)

### 2. Conecte o GitHub correto
- Clique no dropdown da conta
- Selecione ou adicione a conta **`descubraia01-svg`**
- Se não aparecer: clique "Add GitHub Account" → autorize a conta no popup

### 3. Selecione o repositório
- Repositório: **`mtrx-library`**
- Clique **Import**

### 4. Configure o projeto
- **Framework Preset:** Other
- **Root Directory:** `./` (padrão)
- **Build Command:** (vazio — HTML puro, sem build)
- **Output Directory:** `./` (padrão)
- Sem variáveis de ambiente por enquanto

### 5. Deploy
- Clique **Deploy**
- Aguarde ~30 segundos
- Site no ar em `mtrx-library.vercel.app` (ou similar)

---

## Deploy automático (após primeiro deploy)

Cada `git push` na branch `main` atualiza o site automaticamente:

```bash
# Fluxo padrão para atualizar
cd ~/Documents/Claude/Projects/MTRX\ LIBRARY
git add .
git commit -m "descrição da mudança"
git push
# Site atualiza em ~30s na Vercel
```

---

## Repositório atual

- **GitHub:** `https://github.com/descubraia01-svg/mtrx-library`
- **Branch:** `main`
- **Commits:** 3 (MVP inicial, identidade, gitignore)

---

## Supabase

O app já está preparado para sincronizar com Supabase.

1. Abra o projeto Supabase:
   `https://supabase.com/dashboard/project/zqzdjcpaqtasiatbjxhs`
2. Vá em **SQL Editor**
3. Rode o arquivo `supabase.sql`
4. Vá em **Project Settings → API**
5. Copie a **anon public key**
6. Cole a chave em `config.js`:

```js
window.MTRX_SUPABASE = {
  url: 'https://zqzdjcpaqtasiatbjxhs.supabase.co',
  anonKey: 'SUA_ANON_PUBLIC_KEY'
};
```

Observação: como esta versão ainda é HTML puro, a configuração fica em
`config.js`, não em variáveis de ambiente da Vercel. A anon key do Supabase é
pública por desenho; o que protege dados de verdade são as regras RLS.

---

## Domínio próprio (opcional)

1. Vercel → Settings → Domains
2. Adicionar domínio: `mtrxlibrary.com` (ou similar)
3. Configurar DNS no registrador

---

*MTRX LIBRARY v1 — Deploy Guide — 22/05/2026*
