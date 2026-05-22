# Guia do Administrador — MTRX LIBRARY

> Para quem tem o código e alimenta o banco.

---

## Acessando o Modo Admin

1. Abra o `index.html` no browser
2. Clique no botão **⚿ Admin** (canto superior direito)
3. Digite o código de acesso
4. A interface muda: aparecem botões de edição em todos os prompts e categorias

> A barra laranja no rodapé confirma que você está em modo admin.

Para sair: clique em **⚿ Sair** ou no botão **Sair do Admin** na barra inferior.

---

## Adicionando um Prompt Novo

1. Entre no modo admin
2. Localize a subcategoria onde quer adicionar (ex: "Gêneros Musicais")
3. Clique no botão **＋ Prompt** ao lado do nome da subcategoria
4. Preencha o formulário:
   - **Categoria**: Imagem ou Áudio
   - **Subcategoria**: nome da seção onde vai aparecer
   - **Nome do Prompt**: título curto e claro (ex: "Axé", "Voz Infantil")
   - **Descrição**: o que esse prompt faz, qual o impacto criativo
   - **Prompt**: o texto exato que o usuário vai copiar e colar na IA
5. Clique **Salvar Prompt**

O prompt aparece imediatamente para todos.

---

## Editando um Prompt Existente

1. Entre no modo admin
2. No card do prompt, clique no ícone de **lápis** ✏️
3. Altere o que precisar
4. Clique **Salvar Prompt**

---

## Deletando um Prompt

1. Entre no modo admin
2. No card do prompt, clique no ícone de **lixeira** 🗑️
3. Confirme a exclusão

> **Atenção:** a exclusão é permanente e não pode ser desfeita.

---

## Sistema de Curadoria (Favoritos)

Os prompts marcados com ★ aparecem na seção **"Curadoria do Time"** no topo do site — visível para todos.

Para marcar/desmarcar:
- **Modo admin**: clique no ★ em qualquer card
- **Modo público**: qualquer pessoa pode marcar (é um sistema global, não individual)

Use a curadoria para destacar os prompts mais eficientes da semana.

---

## Adicionando uma Nova Subcategoria

1. Entre no modo admin
2. Clique em **＋ Nova subcategoria** ao lado do nome da categoria (Imagem ou Áudio)
3. No formulário, preencha o campo **Subcategoria** com o nome novo
4. Adicione o primeiro prompt dessa subcategoria
5. Salve — a subcategoria é criada automaticamente

---

## Onde os dados ficam salvos

Todos os prompts adicionados via modo admin ficam salvos no **localStorage** do browser. Isso significa:

- ✅ Persistem entre sessões no mesmo browser/computador
- ✅ Aparecem imediatamente sem recarregar
- ⚠️ Se abrir o arquivo em outro computador, os prompts padrão voltam

**Solução futura:** migrar para Supabase ou outro banco online para sincronizar entre dispositivos. Ver `ROADMAP.md`.

---

## Código de Acesso

O código admin está definido diretamente no `index.html`, na linha:

```javascript
const ADMIN_CODE = 'mtrx2024';
```

Para trocar o código: abra o `index.html` em um editor de texto, localize essa linha e altere o valor.

---

## Checklist de Alimentação (antes de segunda)

- [ ] Prompts de ângulos de câmera completos (mínimo 5)
- [ ] Prompts de ambientação completos (mínimo 5)
- [ ] Sujeitos: cantor com microfone + variações
- [ ] Gêneros musicais: sertanejo + pelo menos 3 outros
- [ ] Modulação vocal: voz grossa + pelo menos 3 outros
- [ ] Curadoria: marcar os 5-8 melhores prompts como ★

---

*Qualquer dúvida: abrir conversa com Claude no Cowork.*
