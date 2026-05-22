# ROADMAP — MTRX LIBRARY

## Versão atual: v1 MVP (22/05/2026)

### ✅ Concluído

**Fase 1 — Base**
- [x] Estrutura HTML completa com tema dark luxury
- [x] Sistema de dados JSON com categorias e prompts
- [x] Modo admin com senha (`mtrx2024`)
- [x] CRUD completo (criar, editar, deletar)
- [x] Persistência via localStorage

**Fase 2 — Visual**
- [x] Identidade visual MTRX (laranja #FF4500 + preto #0a0a0a)
- [x] Loading screen animado
- [x] Cursor customizado
- [x] Micro-animações e hover states
- [x] Tipografia Syne (Google Fonts)

**Fase 3 — Segurança e UX**
- [x] `escapeHTML()` em todo texto renderizado (proteção XSS)
- [x] `copyTextSafe()` com fallback via `document.execCommand` (funciona em file://)
- [x] Sistema de lixeira com Desfazer (7s countdown + restauração por índice)

**Fase 4 — Dados**
- [x] Exportar JSON (backup com data no nome)
- [x] Exportar TXT (formatado por categoria)
- [x] Importar JSON (substituição com confirmação)

**Fase 5 — Conteúdo e Features**
- [x] Categoria Vídeo (14 prompts, 4 subcategorias)
- [x] Sistema de Tags (filtro dinâmico por chip)
- [x] Combos (3 pré-construídos + builder para admin)

**Fase 6 — Versionamento**
- [x] Git inicializado com `.gitignore`
- [x] Primeiro commit: `MTRX Library v1 MVP`
- [x] Repositório no GitHub: `descubraia01-svg/mtrx-library`

---

## Próxima versão: v1.1 — Online

### 🔄 Em progresso

- [ ] **Deploy Vercel** — importar `descubraia01-svg/mtrx-library` e publicar
  - URL esperada: `mtrx-library.vercel.app`
  - Framework: nenhum (HTML puro)
  - Build: nenhum

### ⏳ Pendente

- [ ] **Supabase** — banco de dados real centralizado
  - Tabelas: `categories`, `subcategories`, `prompts`, `combos`, `prompt_usage`
  - Migrar dados do localStorage atual
  - Auth para admin via Supabase Auth
  - Variáveis de ambiente na Vercel: `SUPABASE_URL` + `SUPABASE_ANON_KEY`

- [ ] **Histórico de uso** — rastrear prompts mais copiados

- [ ] **Fontes offline** — baixar Syne para funcionar sem internet

- [ ] **Acessibilidade** — respeitar `prefers-reduced-motion`

- [ ] **Domínio próprio** — opcional, após Vercel estar estável

---

## Arquitetura alvo (v2)

```
Frontend:   HTML/JS estático → Vercel
Banco:      Supabase (PostgreSQL)
Auth:       Supabase Auth (só admin)
Deploy:     GitHub → Vercel (automático por push)
Config:     variáveis de ambiente na Vercel
```

---

*Atualizado em 22/05/2026*
