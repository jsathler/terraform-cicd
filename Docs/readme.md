# Specific manual configuration for the project

## Github

In order to execute the workflows, the following configurations are required at Github repository level:

### Environments
Create environments in github (Settings/Environments).

In this example we have created the following environments: dev, qa and prd

### Variables and Secrets
Required variables and secrets

| Name | Type | Scope* | Description |
| -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- |
| ARM_TENANT_ID | Variable | Repository | The Tenant ID |
| ARM_SUBSCRIPTION_ID | Variable | Repository/Environment* | The Subscription ID where resources should be deployed |
| ARM_CLIENT_ID | Variable | Repository/Environment* | The Azure App Registration client/app id ** |
| BACKEND_RESOUCE_GROUP_NAME | Variable | Repository/Environment* | The resource group name for the TFState Storage Account|
| BACKEND_STORAGE_ACCOUNT_NAME | Variable | Repository/Environment* | The TFState Storage Account name |
| BACKEND_REGION | Variable | Repository/Environment* | The region where the TFState Storage Account resources will be deployed |

\* If the variable/secret is the same for all environments, set it as Repository variable/secret otherwise, set as an Environment variable/secret

\** In Azure Entra ID, you should create a Federated credential for each github environment. More information [here](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-azure)

---