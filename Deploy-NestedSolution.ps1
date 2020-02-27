### Define variables
{

$location = 'East US'
$resourceGroupName = 'Levogy-Compute1'
$resourceDeploymentSolutionName = 'Levogy-Compute1-deployment'
$templateBasePath = 'C:\Users\AaronBrewer\Source\Repos\SideGiant\AzureARMTemplates'
$templateFile = 'azureDeploy.json'
$template = $templateBasePath + '\' + $templateFile
$templateParametersFile = 'azureDeploy.parameters.json'
$templateParameters = $templateBasePath + '\' + $templateParametersFile

}

### Create Resource Group
{

New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $Location `
    -Verbose -Force

}

### Deploy IaaS Solution
{

New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentSolutionName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -TemplateParameterFile $templateParameters `
    -Verbose -Force

}