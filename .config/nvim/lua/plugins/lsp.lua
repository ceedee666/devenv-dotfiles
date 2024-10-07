return {

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          -- disable unwanted hints
          -- https://github.com/microsoft/pyright/discussions/5852#discussioncomment-6874502
          capabilities = {
            textDocument = {
              publishDiagnostics = {
                tagSupport = {
                  valueSet = { 2 },
                },
              },
            },
          },
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard", -- off, basic, standard, strict, all
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                autoImportCompletions = true,
                diagnosticsMode = "openFilesOnly", -- workspace, openFilesOnly
              },
            },
          },
        },
      },
    },
  },
}
