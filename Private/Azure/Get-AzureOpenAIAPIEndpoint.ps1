function Get-AzureOpenAIAPIEndpoint {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, Position = 0)]
        [string]$EndpointName,

        [Parameter(Mandatory)]
        [string]$Engine,

        [Parameter(Mandatory)]
        [System.Uri]$ApiBase,

        [Parameter()]
        [AllowEmptyString()]
        [string]$ApiVersion
    )

    $UriBuilder = [System.UriBuilder]::new($ApiBase)
    if ([string]::IsNullOrWhiteSpace($ApiVersion)) {
        $ApiVersion = '2023-03-15-preview'  # default api version
    }

    switch ($EndpointName) {
        'Chat.Completion' {
            $UriBuilder.Path = ('/openai/deployments/{0}/chat/completions' -f $Engine.Replace('/', '').Trim())
            $UriBuilder.Query = ('api-version={0}' -f $ApiVersion.Trim())
            @{
                Name        = 'chat.completion'
                Method      = 'Post'
                Uri         = $UriBuilder.Uri
                ContentType = 'application/json'
            }
        }
        'Text.Completion' {
            $UriBuilder.Path = ('/openai/deployments/{0}/completions' -f $Engine.Replace('/', '').Trim())
            $UriBuilder.Query = ('api-version={0}' -f $ApiVersion.Trim())
            @{
                Name        = 'text.completion'
                Method      = 'Post'
                Uri         = $UriBuilder.Uri
                ContentType = 'application/json'
            }
        }
        'Embeddings' {
            $UriBuilder.Path = ('/openai/deployments/{0}/embeddings' -f $Engine.Replace('/', '').Trim())
            $UriBuilder.Query = ('api-version={0}' -f $ApiVersion.Trim())
            @{
                Name        = 'embeddings'
                Method      = 'Post'
                Uri         = $UriBuilder.Uri
                ContentType = 'application/json'
            }
        }
    }
}