{
    "id": "56c7ca05-e4cc-4324-9209-5415c4d5b5e1",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "FileManager",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 202375362,
    "date": "2019-39-08 04:09:48",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "b01a1950-22db-4bc8-bbec-5c46a4b9d64f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "7aa717a5-755f-4746-8385-fb7395b08986",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "working_directory",
                    "hidden": false,
                    "value": "get_working_directory()"
                },
                {
                    "id": "27d4a8a4-69df-4551-b7af-16513b0740cb",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "program_directory",
                    "hidden": false,
                    "value": "get_program_directory()"
                },
                {
                    "id": "b0c1d5d1-dd3e-4601-a39c-ed1bd7d2ab2f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "temp_directory",
                    "hidden": false,
                    "value": "get_temp_directory()"
                }
            ],
            "copyToTargets": 1048640,
            "filename": "FileManager.dll",
            "final": "",
            "functions": [
                {
                    "id": "0e50d936-7901-4a6e-8eb8-534e9c8a4111",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_copy",
                    "help": "file_copy(fname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_copy",
                    "returnType": 2
                },
                {
                    "id": "5d311cd0-50ef-4f20-9bfd-1a582d0af5de",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_rename",
                    "help": "file_rename(oldname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_rename",
                    "returnType": 2
                },
                {
                    "id": "6b46adf1-e327-4fc9-a18e-42b853f43f98",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_exists",
                    "help": "file_exists(fname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_exists",
                    "returnType": 2
                },
                {
                    "id": "30d52da6-a0f6-4134-b82d-41b5ed41991b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_delete",
                    "help": "file_delete(fname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_delete",
                    "returnType": 2
                },
                {
                    "id": "1f1006f6-e02f-4c3b-9af4-0440e126b365",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_create",
                    "help": "directory_create(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_create",
                    "returnType": 2
                },
                {
                    "id": "920e38e3-7d19-4925-b47c-b82ec931f650",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_copy",
                    "help": "directory_copy(dname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_copy",
                    "returnType": 2
                },
                {
                    "id": "4642bed0-9d09-4edc-ab06-4ce750b4a836",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_rename",
                    "help": "directory_rename(oldname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_rename",
                    "returnType": 2
                },
                {
                    "id": "8b1491a9-a0d1-4e54-a6cc-93ef2b7d3dac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_exists",
                    "help": "directory_exists(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_exists",
                    "returnType": 2
                },
                {
                    "id": "85884d47-547c-407f-a2e2-926136a4c441",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_destroy",
                    "help": "directory_destroy(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_destroy",
                    "returnType": 2
                },
                {
                    "id": "c9007058-878f-4bcf-98c7-482b648cb14c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "environment_get_variable",
                    "help": "environment_get_variable(name)",
                    "hidden": false,
                    "kind": 12,
                    "name": "environment_get_variable",
                    "returnType": 1
                },
                {
                    "id": "f72bf932-226a-484d-bed6-13a0a1ed3d97",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "set_working_directory",
                    "help": "set_working_directory(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "set_working_directory",
                    "returnType": 2
                },
                {
                    "id": "100df7bb-29ad-405f-8c77-c299d70be959",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "get_working_directory",
                    "help": "get_working_directory()",
                    "hidden": false,
                    "kind": 12,
                    "name": "get_working_directory",
                    "returnType": 1
                },
                {
                    "id": "9cadaa5a-3b90-43b3-8125-ecf3064ddc9c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "get_program_directory",
                    "help": "get_program_directory()",
                    "hidden": false,
                    "kind": 12,
                    "name": "get_program_directory",
                    "returnType": 1
                },
                {
                    "id": "be003cda-1634-4679-803f-a9920b154f4b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "get_temp_directory",
                    "help": "get_temp_directory()",
                    "hidden": false,
                    "kind": 12,
                    "name": "get_temp_directory",
                    "returnType": 1
                },
                {
                    "id": "4352653d-d67d-47f3-97bc-364d9b2c1241",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "environment_set_variable",
                    "help": "environment_set_variable(name,value)",
                    "hidden": false,
                    "kind": 12,
                    "name": "environment_set_variable",
                    "returnType": 2
                },
                {
                    "id": "fabce28f-5016-4b42-a969-613bab49314c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_contents",
                    "help": "directory_contents(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_contents",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\FileManager.dll",
            "uncompress": false
        },
        {
            "id": "eeadee22-0e0c-4916-a3e0-632d35bb6e04",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 0,
            "filename": "FileManager.dll.zip",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\FileManager.dll.zip",
            "uncompress": false
        },
        {
            "id": "71a0a02e-8cd4-4a94-969d-ef08c5b9251a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "ed58d04b-74bc-447c-bcfc-5c7fc0d4b62a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "working_directory",
                    "hidden": false,
                    "value": "get_working_directory()"
                },
                {
                    "id": "e5cbd72d-e690-4de6-b556-b4820e0b638b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "program_directory",
                    "hidden": false,
                    "value": "get_program_directory()"
                },
                {
                    "id": "a83acc98-6321-4cbc-a483-e9538384de71",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "temp_directory",
                    "hidden": false,
                    "value": "get_temp_directory()"
                }
            ],
            "copyToTargets": 67108866,
            "filename": "FileManager.dylib",
            "final": "",
            "functions": [
                {
                    "id": "05f4b568-10f5-4b77-a4cd-1c4b3a2e8528",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_copy",
                    "help": "file_copy(fname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_copy",
                    "returnType": 2
                },
                {
                    "id": "2fb78e0b-c75a-453c-848e-5ed20cf1f1e0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_rename",
                    "help": "file_rename(oldname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_rename",
                    "returnType": 2
                },
                {
                    "id": "bbafc8a4-c346-48b4-a133-af84b284bd9d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_exists",
                    "help": "file_exists(fname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_exists",
                    "returnType": 2
                },
                {
                    "id": "6388404f-fcef-4261-97eb-dcbe36e26934",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_delete",
                    "help": "file_delete(fname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_delete",
                    "returnType": 2
                },
                {
                    "id": "14625d3d-81d5-4989-9f73-a3f7bb1c28ee",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_create",
                    "help": "directory_create(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_create",
                    "returnType": 2
                },
                {
                    "id": "9ddbc16a-fa88-4e95-97c2-e685a579023f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_copy",
                    "help": "directory_copy(dname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_copy",
                    "returnType": 2
                },
                {
                    "id": "631335b6-d499-4087-80fe-6fdc242f2949",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_rename",
                    "help": "directory_rename(oldname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_rename",
                    "returnType": 2
                },
                {
                    "id": "befea21f-fd36-4ea5-9acb-ea68f0dd870d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_exists",
                    "help": "directory_exists(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_exists",
                    "returnType": 2
                },
                {
                    "id": "697fc936-3415-4c63-a7f5-3c15b705b59a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_destroy",
                    "help": "directory_destroy(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_destroy",
                    "returnType": 2
                },
                {
                    "id": "2ede4f04-c51b-49ab-aa28-f39f15de046c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "environment_get_variable",
                    "help": "environment_get_variable(name)",
                    "hidden": false,
                    "kind": 12,
                    "name": "environment_get_variable",
                    "returnType": 1
                },
                {
                    "id": "c0afd12d-3121-4e03-8f0b-d3e39efcd22d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "set_working_directory",
                    "help": "set_working_directory(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "set_working_directory",
                    "returnType": 2
                },
                {
                    "id": "5037195a-9912-413f-b173-17a50d8cbf2a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "get_working_directory",
                    "help": "get_working_directory()",
                    "hidden": false,
                    "kind": 12,
                    "name": "get_working_directory",
                    "returnType": 1
                },
                {
                    "id": "12ffbf90-8214-4e8a-95d2-832934a43517",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "get_program_directory",
                    "help": "get_program_directory()",
                    "hidden": false,
                    "kind": 12,
                    "name": "get_program_directory",
                    "returnType": 1
                },
                {
                    "id": "11ebd714-1366-4fa7-bcb2-7d9f7d46c037",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "get_temp_directory",
                    "help": "get_temp_directory()",
                    "hidden": false,
                    "kind": 12,
                    "name": "get_temp_directory",
                    "returnType": 1
                },
                {
                    "id": "48995e90-e81b-4536-a28f-08ef7743b554",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "environment_set_variable",
                    "help": "environment_set_variable(name,value)",
                    "hidden": false,
                    "kind": 12,
                    "name": "environment_set_variable",
                    "returnType": 2
                },
                {
                    "id": "c2ad0998-be39-4e96-9e68-d86d508e0b1a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_contents",
                    "help": "directory_contents(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_contents",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\FileManager.dylib",
            "uncompress": false
        },
        {
            "id": "7def6bca-0a30-4b8a-aee3-01d3a4ebf461",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 0,
            "filename": "FileManager.dylib.zip",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\FileManager.dylib.zip",
            "uncompress": false
        },
        {
            "id": "36970862-48a6-4689-bfd0-51f721bcaf6d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "e47c39b4-9256-445e-b9c0-a3beca0159dc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "working_directory",
                    "hidden": false,
                    "value": "get_working_directory()"
                },
                {
                    "id": "880353b0-5918-4706-9ee9-6d93128bb9ae",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "program_directory",
                    "hidden": false,
                    "value": "get_program_directory()"
                },
                {
                    "id": "fab45250-e812-42e7-8823-2a690628af61",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "temp_directory",
                    "hidden": false,
                    "value": "get_temp_directory()"
                }
            ],
            "copyToTargets": 134217856,
            "filename": "FileManager.so",
            "final": "",
            "functions": [
                {
                    "id": "3a4ac101-720a-47b1-9245-b9da08e21d7b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_copy",
                    "help": "file_copy(fname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_copy",
                    "returnType": 2
                },
                {
                    "id": "ed475559-5691-4d47-86f8-2e0003edcca8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "file_rename",
                    "help": "file_rename(oldname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_rename",
                    "returnType": 2
                },
                {
                    "id": "eda2907c-2b8a-4ced-bcbf-9f1175daad3a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_exists",
                    "help": "file_exists(fname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_exists",
                    "returnType": 2
                },
                {
                    "id": "0ea58195-0a4e-4f4c-a3e8-a7c0a99fb716",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "file_delete",
                    "help": "file_delete(fname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "file_delete",
                    "returnType": 2
                },
                {
                    "id": "8f71cf17-606d-407f-ad8e-eb911ec7cf1b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_create",
                    "help": "directory_create(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_create",
                    "returnType": 2
                },
                {
                    "id": "f8229bdc-e334-431b-9262-a43e636ad4c7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_copy",
                    "help": "directory_copy(dname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_copy",
                    "returnType": 2
                },
                {
                    "id": "3a974b43-00b0-4a1c-93a2-378b5082c1ca",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "directory_rename",
                    "help": "directory_rename(oldname,newname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_rename",
                    "returnType": 2
                },
                {
                    "id": "f1ba5daa-0465-4cfd-8eef-de3f04eb9b66",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_exists",
                    "help": "directory_exists(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_exists",
                    "returnType": 2
                },
                {
                    "id": "ba22fdd4-7e9a-45a2-a0dc-8b511b5aa198",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_destroy",
                    "help": "directory_destroy(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_destroy",
                    "returnType": 2
                },
                {
                    "id": "25fb2885-e9cb-4d49-badf-fe9a6509685d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "environment_get_variable",
                    "help": "environment_get_variable(name)",
                    "hidden": false,
                    "kind": 12,
                    "name": "environment_get_variable",
                    "returnType": 1
                },
                {
                    "id": "06cea04b-88ba-4dd1-9ec0-814ff62c2ee5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "set_working_directory",
                    "help": "set_working_directory(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "set_working_directory",
                    "returnType": 2
                },
                {
                    "id": "37c60da5-18c6-4c59-b48b-f349d22168ff",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "get_working_directory",
                    "help": "get_working_directory()",
                    "hidden": false,
                    "kind": 12,
                    "name": "get_working_directory",
                    "returnType": 1
                },
                {
                    "id": "98e847cc-d231-4637-b966-24725b6ee280",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "get_program_directory",
                    "help": "get_program_directory()",
                    "hidden": false,
                    "kind": 12,
                    "name": "get_program_directory",
                    "returnType": 1
                },
                {
                    "id": "67a136d2-f356-4387-a592-b4da769d1bbf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "get_temp_directory",
                    "help": "get_temp_directory()",
                    "hidden": false,
                    "kind": 12,
                    "name": "get_temp_directory",
                    "returnType": 1
                },
                {
                    "id": "8b9e1ca9-ca58-4b27-a5ca-ed3f626bb8cd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "environment_set_variable",
                    "help": "environment_set_variable(name,value)",
                    "hidden": false,
                    "kind": 12,
                    "name": "environment_set_variable",
                    "returnType": 2
                },
                {
                    "id": "bb5ed2bf-b091-4fc0-9979-60289be286a8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "directory_contents",
                    "help": "directory_contents(dname)",
                    "hidden": false,
                    "kind": 12,
                    "name": "directory_contents",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                "3a4ac101-720a-47b1-9245-b9da08e21d7b",
                "ed475559-5691-4d47-86f8-2e0003edcca8",
                "eda2907c-2b8a-4ced-bcbf-9f1175daad3a",
                "0ea58195-0a4e-4f4c-a3e8-a7c0a99fb716",
                "8f71cf17-606d-407f-ad8e-eb911ec7cf1b",
                "f8229bdc-e334-431b-9262-a43e636ad4c7",
                "3a974b43-00b0-4a1c-93a2-378b5082c1ca",
                "f1ba5daa-0465-4cfd-8eef-de3f04eb9b66",
                "ba22fdd4-7e9a-45a2-a0dc-8b511b5aa198",
                "25fb2885-e9cb-4d49-badf-fe9a6509685d",
                "06cea04b-88ba-4dd1-9ec0-814ff62c2ee5",
                "37c60da5-18c6-4c59-b48b-f349d22168ff",
                "98e847cc-d231-4637-b966-24725b6ee280",
                "67a136d2-f356-4387-a592-b4da769d1bbf",
                "8b9e1ca9-ca58-4b27-a5ca-ed3f626bb8cd",
                "bb5ed2bf-b091-4fc0-9979-60289be286a8"
            ],
            "origname": "extensions\\FileManager.so",
            "uncompress": false
        },
        {
            "id": "80da2fdc-eeb0-442b-812c-7175bc2d2368",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 0,
            "filename": "FileManager.so.zip",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\FileManager.so.zip",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "F63EE815C05B1EFD8CFA1337B78A2B85",
    "sourcedir": "",
    "supportedTargets": 202375362,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}