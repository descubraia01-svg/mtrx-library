# GUIA DO ADMIN — MTRX LIBRARY

## Como entrar no modo admin

1. Abra `index.html` no browser
2. Clique **3 vezes** no logo **MTRX** (canto superior esquerdo)
3. Digite a senha: `mtrx2024`
4. O painel admin aparece na parte inferior da tela

Para sair: clique em **Sair** no painel admin.

---

## O que o admin pode fazer

### Prompts
- **Criar** — clique no `+` ao lado de qualquer subcategoria
- **Editar** — clique no ícone ✏️ no card do prompt
- **Deletar** — clique no ícone 🗑️ → barra de Desfazer aparece por 7 segundos

### Categorias e Subcategorias
- Criar nova categoria (com ícone e tipo)
- Criar nova subcategoria dentro de uma categoria existente
- Deletar categoria ou subcategoria (cuidado: apaga tudo dentro)

### Combos
- **Criar combo** — botão "Novo Combo" no painel admin
- Definir nome, ícone e partes (label + prompt para cada parte)
- Combos aparecem na aba "Combos" para a equipe copiar

---

## Gerenciamento de dados

### Exportar JSON (backup completo)
- Botão **"Exportar JSON"** no painel admin
- Gera arquivo `mtrx-library-backup-YYYY-MM-DD.json`
- Salve em local seguro (Drive, iCloud, etc.)
- **Faça backup antes de qualquer mudança grande**

### Exportar TXT (compartilhar)
- Botão **"Exportar TXT"** no painel admin
- Gera arquivo de texto formatado por categoria
- Útil para enviar no WhatsApp ou Google Drive

### Importar JSON (restaurar)
- Botão **"Importar JSON"** no painel admin
- Selecione o arquivo `.json` gerado pelo Export
- **ATENÇÃO: substitui TODO o banco atual** — confirme antes de prosseguir
- Use para restaurar backup ou migrar para outro computador/browser

---

## Regras de boas práticas

| Ação | Recomendação |
|---|---|
| Novo prompt | Sempre adicionar `tags` relevantes |
| Deletar prompt | Usar Desfazer se cometeu erro |
| Mudança grande | Exportar JSON antes |
| Novo computador | Exportar JSON → importar no novo browser |
| Browser diferente | Dados NÃO sincronizam (localStorage é local) |

---

## Estrutura de um prompt

```json
{
  "id": "unique-id",
  "title": "Nome do Prompt",
  "description": "Para que serve este prompt",
  "text": "O prompt em si que será copiado",
  "tags": ["tag1", "tag2", "tag3"],
  "featured": false
}
```

**Tags úteis:** `capa`, `reels`, `show`, `artista`, `sertanejo`, `funk`, `voz feminina`, `Suno`, `Midjourney`, `Runway`, `Kling`, `videoclipe`, `editorial`, `palco`, `estúdio`, `produto`, `logotipo`

---

## Senha admin

Senha atual: `mtrx2024`

Para trocar: abra `index.html` em editor de código → busque `const ADMIN_CODE` → altere o valor → salve.

---

## Problemas comuns

**Prompt não copiou:**
- Se abrir via `file://`, o clipboard pode ser bloqueado pelo browser
- O sistema tem fallback automático — deve funcionar mesmo assim
- Se persistir: abra via servidor local ou use Chrome

**Dados sumiram:**
- localStorage foi limpo (modo privado, limpeza de dados do browser)
- Restaure pelo backup JSON se tiver

**Site não carrega fonte:**
- Você está offline — a fonte Syne vem do Google Fonts
- O site funciona normalmente, mas com fonte do sistema

---

*MTRX LIBRARY v1 — Admin Guide — 22/05/2026*
