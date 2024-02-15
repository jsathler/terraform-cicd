# Required manual configurations for the project

## Microsoft Entra ID Groups and Service Principals
To allow github actions to create resources on Azure, the following steps are required:

### App Registrations
You need to create one (or more) App Registration(s), according to your security requirements.

After creating the App Registration, you need to create a Federated credential for each github environment following the steps described [here](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-azure)

### IAM Role assignments
After creating the App Registration, please [assign](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-steps) the required role (Owner, Contributor or any custom role) on subscription.

## Github
In order to execute the workflows, the following configurations are required at Github repository level:

### Environments
Create the required environments for your project in github (Settings/Environments).

In this example we have created the following environments: dev, qa and prd

### Variables and Secrets
Required variables and secrets

| Name | Type | Scope* | Description |
| -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- |
| ARM_TENANT_ID | Variable | Repository | The Tenant ID |
| ARM_SUBSCRIPTION_ID | Variable | Repository/Environment | The Subscription ID where resources should be deployed |
| ARM_CLIENT_ID | Variable | Repository/Environment | The Azure App Registration client/app id |
| BACKEND_RESOUCE_GROUP_NAME | Variable | Repository/Environment | The resource group name for the TFState Storage Account|
| BACKEND_STORAGE_ACCOUNT_NAME | Variable | Repository/Environment | The TFState Storage Account name |
| REGION | Variable | Repository/Environment | The region where the TFState Storage Account resources will be deployed |

\* If the variable is the same for all environments, set it at Repository level otherwise, set at Environment level

---