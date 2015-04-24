param(
    [Parameter(Mandatory=$true)]
    [string] $username,
    [Parameter(Mandatory=$true)]
    [string] $password
)
$baseUrl = "parametric.artifactoryonline.com/parametric/api/gems/ruby-gems-local"
$apikey = "https://{0}:{1}@{2}/api/v1/api_key.yaml" -f $username, $password, $baseUrl
$publishUrl = "https://$baseUrl"
$apiKey
""
"Downloading the credentials file - this step blows away the existing credentials file."
$cmd = "curl $apikey | Out-File ~/.gem/credentials -Encoding 'ascii'"
$cmd
Invoke-Expression $cmd
 
