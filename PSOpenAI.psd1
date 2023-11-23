@{
    # Version number of this module.
    ModuleVersion        = '2.2.0'

    # Supported PSEditions
    CompatiblePSEditions = 'Core', 'Desktop'

    # ID used to uniquely identify this module
    GUID                 = '7d4a9fbc-6142-49a9-b46f-dae89a60ee2b'

    # Author of this module
    Author               = 'mkht'

    # Script module or binary module file associated with this manifest.
    RootModule           = 'PSOpenAI.psm1'

    # Company or vendor of this module
    CompanyName          = ''

    # Copyright statement for this module
    Copyright            = '(c) 2023 mkht. All rights reserved.'

    # Description of the functionality provided by this module
    Description          = 'PowerShell module for OpenAI API'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion    = '5.1'

    NestedModules        = @(
        'Libs\CancelableWait\netstandard2.0\CancelableWait.dll'
    )

    # Assemblies that must be loaded prior to importing this module
    RequiredAssemblies   = @(
        'Libs\CustomAttributes\netstandard2.0\CustomAttributes.dll',
        'Libs\TokenizerLib\netstandard2.0\TokenizerLib.dll'
    )

    # Functions to export from this module
    FunctionsToExport    = @(
        'Get-Assistant',
        'New-Assistant',
        'Remove-Assistant',
        'Set-Assistant',
        'Get-Thread',
        'New-Thread',
        'Remove-Thread',
        'Set-Thread',
        'Add-ThreadMessage',
        'Get-ThreadMessage',
        'Start-ThreadRun',
        'Stop-ThreadRun',
        'Get-ThreadRun',
        'Wait-ThreadRun',
        'Receive-ThreadRun',
        'Submit-ToolOutput',
        'Get-ThreadRunStep',
        'New-ChatCompletionFunction',
        'ConvertFrom-Token',
        'ConvertTo-Token',
        'Enter-ChatGPT',
        'Get-CosineSimilarity',
        'Get-OpenAIModels',
        'Request-AudioSpeech',
        'Request-AudioTranscription',
        'Request-AudioTranslation',
        'Request-ChatCompletion',
        'Request-Embeddings',
        'Request-ImageEdit',
        'Request-ImageGeneration',
        'Request-ImageVariation',
        'Request-Moderation',
        'Request-TextCompletion',
        'Request-TextEdit',
        'Register-OpenAIFile',
        'Remove-OpenAIFile',
        'Get-OpenAIFile',
        'Get-OpenAIFileContent',
        'Get-AzureOpenAIModels',
        'Request-AzureAudioTranscription',
        'Request-AzureAudioTranslation',
        'Request-AzureChatCompletion',
        'Request-AzureExtensionsChatCompletion',
        'Request-AzureEmbeddings',
        'Request-AzureTextCompletion',
        'Request-AzureImageGeneration'
    )

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport      = @('Request-ChatGPT', 'Request-AzureChatGPT')

    TypesToProcess       = @(
        'PSOpenAI.Types.ps1xml'
    )

    # Format files (.ps1xml) to be loaded when importing this module.
    # FormatsToProcess     = @(
    #     'PSOpenAI.Format.ps1xml'
    # )

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData          = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags         = @('OpenAI', 'ChatGPT')

            # A URL to the license for this module.
            LicenseUri   = 'https://github.com/mkht/PSOpenAI/blob/main/LICENSE'

            # A URL to the main website for this project.
            ProjectUri   = 'https://github.com/mkht/PSOpenAI'

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            ReleaseNotes = ''

        } # End of PSData hashtable

    } # End of PrivateData hashtable
}
