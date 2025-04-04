return {
  "nomnivore/ollama.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },

  cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },

  keys = {
    {
      "<leader>mm",
      ":<c-u>lua require('ollama').prompt('Smart_Context')<cr>",
      desc = "Ask DeepSeek about code",
      mode = { "n", "v" },
    },
    {
      "<leader>mr",
      ":<c-u>lua require('ollama').prompt('Refactor_Replace')<cr>",
      desc = "Refactor and replace selection",
      mode = { "v" },
    },
  },

  opts = {
    model = "deepseek-r1:7b",
    url = "http://127.0.0.1:11434",
    prompts = {
      Smart_Context = {
        prompt = [[
Explain or improve the following code:
```$ftype
$sel$buf
```]],
        input_label = "💬 Prompt: ",
        model = "deepseek-r1:7b",
        action = "display",
      },

      Refactor_Replace = {
        prompt = [[
Please refactor the following code:
```$ftype
$sel
```]],
        input_label = "💬 Refactor: ",
        model = "deepseek-r1:7b",
        action = "replace",
        extract = "```$ftype\n(.-)```", -- grabs refactored code block from LLM response
      },
    },
    serve = {
      on_start = false,
    },
  },
}
