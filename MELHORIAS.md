# MELHORIAS RECOMENDADAS — MTRX LIBRARY

## PRIORIDADE IMEDIATA (antes de mais nada)

### 1. Exportação e Importação de Dados
Prompts no localStorage ficam presos no browser. Se o admin cadastrar no Chrome, não aparece no Safari ou outro computador. Se o browser limpar dados, tudo some.

**Solução:** dois botões no modo admin:
- **Exportar banco** → gera arquivo JSON com todos os prompts
- **Importar banco** → carrega JSON de volta no sistema
- **Exportar TXT** → versão simples por categoria (WhatsApp, Drive)

### 2. Proteção contra conteúdo quebrado
Prompts com tags HTML ou scripts podem quebrar o layout.

**Solução:** função `escapeHTML()` que sanitiza o texto antes de renderizar.

### 3. Sistema de cópia mais robusto
`navigator.clipboard` pode falhar quando o arquivo é aberto via `file://`.

**Solução:** fallback com campo de texto invisível + seleção manual + mensagem de erro clara se falhar.

### 4. Lixeira ou Desfazer ao deletar
Hoje, deletar é permanente. Admin pode perder prompt importante sem querer.

**Solução:** botão "Desfazer" por alguns segundos após exclusão, ou sistema de lixeira com restauração.

---

## EXPANSÃO DE CONTEÚDO

### 5. Categoria Vídeo
IA de vídeo (Sora, Runway, Kling, Veo, Pika) usa prompt diferente de imagem e áudio.

**Subcategorias sugeridas:**
- Movimentos de câmera
- Estilo visual
- Ritmo de cena
- Transições
- Videoclipe musical
- Cena cinematográfica
- Produto em movimento
- Performance de artista

### 6. Tags nos prompts
Busca por palavras fica limitada com base grande.

**Tags úteis:** `capa`, `reels`, `show`, `artista`, `sertanejo`, `funk`, `voz feminina`, `Suno`, `Midjourney`, `Runway`, `Kling`, `videoclipe`, `editorial`, `palco`, `estúdio`

### 7. Combos de Prompts
Copiar prompts individuais funciona, mas os melhores resultados vêm de combinações.

**Exemplo de combo para imagem:**
```
Sujeito: cantor com microfone
Ângulo: close-up
Ambientação: stage smoke
Estilo: cinematic lighting
```
→ Um clique copia tudo pronto.

**Exemplo de combo para áudio (Suno):**
```
Gênero + Voz + Mood + Instrumentos + BPM
```

---

## ESTRUTURA E CÓDIGO

### 8. Separar dados em JSON externo
Quando a base crescer, ter tudo no HTML vira bagunça.

**Solução:** `data/prompts.json` separado. HTML cuida da interface, JSON cuida dos dados.

### 9. Histórico de uso
Registrar quais prompts são mais copiados para entender o que a equipe realmente usa.

Mesmo com localStorage: contagem simples de uso, prompts em alta, últimos copiados.

### 10. Fontes offline
O projeto carrega fontes do Google Fonts — depende de internet. Se for usado offline, quebra o visual.

**Opções:** usar fontes do sistema, ou baixar e servir localmente.

### 11. Cursor customizado acessível
Cursor custom pode atrapalhar usuários com dificuldades motoras ou baixa visão.

**Solução:** respeitar `prefers-reduced-motion` e `prefers-reduced-transparency` do sistema.

---

## EVOLUÇÃO PARA PRODUTO ONLINE

### 12. Novo projeto na Vercel

A maior evolução é tirar o projeto do arquivo local e transformar em app online acessível por link.

```
https://mtrx-library.vercel.app
```

**Vantagens:**
- Acesso por link, sem mandar arquivo
- Atualização centralizada
- Funciona no celular
- Deploy automático via GitHub
- Domínio próprio possível
- Preparado para login e banco real

**Caminho:**
1. Criar projeto frontend (Next.js ou React)
2. Subir para GitHub
3. Conectar GitHub na Vercel
4. Deploy automático

### 13. Banco de dados com Supabase

Trocar localStorage por banco real centralizado.

**Estrutura de tabelas:**

| Tabela | Campos principais |
|---|---|
| `categories` | id, name, type, icon |
| `subcategories` | id, category_id, name |
| `prompts` | id, subcategory_id, title, description, prompt_text, featured, tags |
| `prompt_usage` | id, prompt_id, action, created_at |
| `admins` | id, email, role |

**Resolve:**
- dados presos no browser
- perda de conteúdo
- falta de sincronização entre usuários

### 14. Versionamento com Git

Sem Git, não existe histórico. Uma mudança que quebra algo não tem volta fácil.

**Solução:** `git init` + commits por etapa:
```
versão inicial do MVP
adiciona exportação de dados
adiciona categoria vídeo
melhora sistema de cópia
migra para Supabase
```

---

## NOVA ARQUITETURA RECOMENDADA (versão online)

```
Frontend:   Next.js ou React → Vercel
Banco:      Supabase (PostgreSQL)
Auth:       Supabase Auth (login só para admins)
Deploy:     GitHub → Vercel (automático)
Config:     chaves do Supabase em variáveis de ambiente
```

**Fluxo atual (problema):**
- Admin cadastra no Chrome de um computador
- Dados ficam só ali
- Para compartilhar, manda arquivo ou recadastra tudo
- Risco de perder tudo

**Fluxo novo (solução):**
- Equipe acessa link
- Prompts salvos no banco
- Admin edita online
- Todo mundo vê a atualização
- Funciona no celular
- Backup real

---

## ORDEM RECOMENDADA DE IMPLEMENTAÇÃO

### Fase imediata (ainda no MVP local)
1. Exportar/importar banco (proteção de dados)
2. `escapeHTML` nos textos renderizados
3. Sistema de cópia com fallback
4. Lixeira ou desfazer

### Fase de expansão (ainda HTML)
5. Categoria Vídeo
6. Tags nos prompts
7. Combos de prompts
8. Separar dados em JSON

### Fase online (novo projeto)
9. Criar projeto no GitHub
10. Recriar interface no Next.js/React
11. Conectar Supabase
12. Migrar prompts atuais
13. Criar login admin
14. Deploy na Vercel
15. Domínio próprio (opcional)

---

## REFERÊNCIAS

- [Vercel — Import Project](https://vercel.com/docs/getting-started-with-vercel/import)
- [Vercel — Environment Variables](https://vercel.com/docs/projects/environment-variables)
- [Supabase — Docs](https://supabase.com/docs/)
- [Supabase — JavaScript Client](https://supabase.com/docs/reference/javascript/introduction)

---

*Documento gerado em 22/05/2026 — MTRX LIBRARY v1 MVP*
