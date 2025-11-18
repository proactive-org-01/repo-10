resource "azurerm_cognitive_deployment" "openai_model_noncompliant_gpt45" {
  name                 = "openai-model-noncompliant-gpt45"
  cognitive_account_id = azurerm_cognitive_account.openai.id

  model {
    format  = "OpenAI"
    name    = "GPT-4.5"           # ❌ High-cost model → Non-compliant
    version = "2024-05-01"
  }

  sku {
    name     = "S0"
    capacity = 2
  }
}
