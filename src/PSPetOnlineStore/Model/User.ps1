#
# OpenAPI Petstore
# This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

A User who is purchasing from the pet store

.PARAMETER Id
No description available.
.PARAMETER Username
No description available.
.PARAMETER FirstName
No description available.
.PARAMETER LastName
No description available.
.PARAMETER Email
No description available.
.PARAMETER Password
No description available.
.PARAMETER Phone
No description available.
.PARAMETER UserStatus
User Status
.OUTPUTS

User<PSCustomObject>
#>

function Initialize-User {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FirstName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Phone},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${UserStatus}
    )

    Process {
        'Creating PSCustomObject: PSPetOnlineStore => User' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "username" = ${Username}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "password" = ${Password}
            "phone" = ${Phone}
            "userStatus" = ${UserStatus}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to User<PSCustomObject>

.DESCRIPTION

Convert from JSON to User<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

User<PSCustomObject>
#>
function ConvertFrom-JsonToUser {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSPetOnlineStore => User' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in User
        $AllProperties = ("id", "username", "firstName", "lastName", "email", "password", "phone", "userStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstName"))) { #optional property not found
            $FirstName = $null
        } else {
            $FirstName = $JsonParameters.PSobject.Properties["firstName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastName"))) { #optional property not found
            $LastName = $null
        } else {
            $LastName = $JsonParameters.PSobject.Properties["lastName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phone"))) { #optional property not found
            $Phone = $null
        } else {
            $Phone = $JsonParameters.PSobject.Properties["phone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userStatus"))) { #optional property not found
            $UserStatus = $null
        } else {
            $UserStatus = $JsonParameters.PSobject.Properties["userStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "username" = ${Username}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "password" = ${Password}
            "phone" = ${Phone}
            "userStatus" = ${UserStatus}
        }

        return $PSO
    }

}

