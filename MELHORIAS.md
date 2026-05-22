# MELHORIAS — MTRX LIBRARY

## Status por item

### ✅ Implementado no v1

| # | Melhoria | Status |
|---|---|---|
| 1 | Exportação JSON + TXT | ✅ Feito |
| 2 | Importação JSON | ✅ Feito |
| 3 | escapeHTML (proteção XSS) | ✅ Feito |
| 4 | Sistema de cópia com fallback | ✅ Feito |
| 5 | Lixeira / Desfazer (7s) | ✅ Feito |
| 6 | Categoria Vídeo (14 prompts) | ✅ Feito |
| 7 | Tags nos prompts + filtro por chip | ✅ Feito |
| 8 | Combos de prompts (3 pré-built + builder) | ✅ Feito |
| 9 | Git + GitHub | ✅ Feito |

---

## ⏳ Próximas melhorias (v1.1+)

### Deploy Vercel
**Prioridade: IMEDIATA**

O repositório `descubraia01-svg/mtrx-library` está pronto no GitHub.
Para finalizar o deploy:

1. Acesse [vercel.com/new](https://vercel.com/new)
2. Conecte a conta GitHub `descubraia01-svg`
3. Selecione o repositório `mtrx-library`
4. Framework: **Other** (HTML puro, sem build)
5. Clique **Deploy**

URL resultante: `mtrx-library.vercel.app`

---

### Supabase — Banco de dados real
**Status: PREPARADO**

O app já tem integração Supabase com fallback automático para `localStorage`.
Enquanto `config.js` estiver com a anon key pendente, ele continua funcionando
em modo local. Quando a chave pública for preenchida, o app sincroniza com a
tabela `mtrx_library_state`.

**Por que:** dados presos no browser de uma pessoa. Se o Chrome limpar dados, tudo some. Não sincroniza entre computadores.

**Como ativar agora:**

1. Abrir o projeto:
   `https://supabase.com/dashboard/project/zqzdjcpaqtasiatbjxhs`
2. Rodar o arquivo `supabase.sql` no SQL Editor
3. Copiar a **anon public key** em Project Settings → API
4. Colar a key em `config.js`
5. Fazer deploy/push

**Estrutura atual de tabela:**

```sql
CREATE TABLE mtrx_library_state (
  key TEXT PRIMARY KEY,
  data JSONB NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
```

Essa escolha mantém a estrutura atual do app intacta e salva categorias,
subcategorias, prompts, tags e combos em um único JSON centralizado.

---

### Histórico de uso
**Prioridade: MÉDIA**

Registrar quais prompts são mais copiados.
- Contagem simples por prompt
- Aba "Mais usados" no painel admin
- Implementável no localStorage antes do Supabase

---

### Fontes offline
**Prioridade: BAIXA**

Hoje o site depende de internet para carregar a fonte Syne (Google Fonts).
Solução: baixar os arquivos `.woff2` e servir localmente.

---

### Cursor acessível
**Prioridade: BAIXA**

Respeitar preferências do sistema operacional:
```css
@media (prefers-reduced-motion: reduce) {
  * { animation: none !important; transition: none !important; }
  .cursor { display: none; }
}
```

---

## Ordem recomendada de execução

```
1. Deploy Vercel          ← próximo passo imediato
2. Supabase               ← após Vercel estável
3. Login admin online     ← junto com Supabase
4. Histórico de uso       ← após Supabase
5. Fontes offline         ← quando tiver tempo
6. Cursor acessível       ← quando tiver tempo
7. Domínio próprio        ← opcional
```

---

*Atualizado em 22/05/2026 — MTRX LIBRARY v1*
