# ROADMAP — MTRX LIBRARY

## Versao atual: v1.1 UX responsiva (22/05/2026)

### Concluido

**Base do produto**
- [x] App em HTML, CSS e JavaScript vanilla
- [x] Tema visual MTRX com interface dark
- [x] Biblioteca inicial com prompts de imagem, audio, video e WhatsApp
- [x] Busca em tempo real
- [x] Filtros por categoria e curadoria
- [x] Tags clicaveis
- [x] Combos rapidos

**Admin e dados**
- [x] Modo admin com senha
- [x] Criar, editar e deletar prompts
- [x] Criar combos
- [x] Exportar JSON
- [x] Exportar TXT
- [x] Importar JSON
- [x] Lixeira com desfazer por 7 segundos
- [x] `escapeHTML()` em renderizacao de conteudo
- [x] Copia segura com fallback

**Online**
- [x] GitHub configurado
- [x] Vercel publicado
- [x] Supabase conectado via `config.js`
- [x] SQL do banco salvo em `supabase.sql`
- [x] Deploy automatico por `git push`

**v1.1 iniciada**
- [x] Layout mais flexivel para desktop, tablet e mobile
- [x] Painel de resumo da biblioteca
- [x] Resumo dinamico dos filtros ativos
- [x] Melhor comportamento de tags, curadoria e combos em telas pequenas
- [x] Ajuste de movimento reduzido com `prefers-reduced-motion`

## Em andamento

### DNS do subdominio

O dominio principal `mtrx.com.br` esta reservado para a futura landing page.

Subdominio da biblioteca:

```txt
library.mtrx.com.br
CNAME -> 15726c4eab95e25c.vercel-dns-017.com.
```

Assim que o Registro.br liberar a edicao estavel de DNS, adicionar o CNAME acima.

### UX para banco maior

Agora que o projeto tem banco externo, a interface precisa lidar melhor com volume:

- Mais conteudo por categoria
- Mais organizacao por finalidade
- Mais sinais de curadoria
- Navegacao mais rapida em celular
- Descoberta por tags e combos
- Historico de prompts mais usados

## Proxima versao: v1.2 Conteudo e inteligencia de uso

- [ ] Criar mais prompts por nicho: capa, reels, videoclipe, show, produto, atendimento e vendas
- [ ] Adicionar filtro por ferramenta: Midjourney, Sora, Runway, Kling, Suno, ChatGPT
- [ ] Criar painel "Mais usados"
- [ ] Registrar contagem de copia por prompt
- [ ] Separar curadoria do time por contexto: imagem, audio e video
- [ ] Melhorar combos com edicao e exclusao no admin
- [ ] Criar login admin com Supabase Auth

## Arquitetura alvo

```txt
Frontend: HTML/JS estatico na Vercel
Banco: Supabase PostgreSQL
Auth: Supabase Auth para admin
Deploy: GitHub -> Vercel
Dominio: library.mtrx.com.br
Landing futura: mtrx.com.br
```

---

Atualizado em 22/05/2026
