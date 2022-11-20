const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-east-1:b8d793da-6088-4a4f-afc8-4c3a624335dd",
                            "Region": "us-east-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-east-1_60SuHfTmV",
                        "AppClientId": "69q42h7885gjt42sp2dljtpa79",
                        "Region": "us-east-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "socialProviders": [],
                        "usernameAttributes": [
                            "EMAIL"
                        ],
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "aquaproject5689c25a3d3f4db6bd3ef0871a8110b9231855-dev",
                        "Region": "us-east-1"
                    }
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://pe3zhp32xjbzxjibon27rtwyhq.appsync-api.us-east-1.amazonaws.com/graphql",
                        "Region": "us-east-1",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-ykcvjkxuizfpfbb623sbphjcju",
                        "ClientDatabasePrefix": "aquaproject_API_KEY"
                    },
                    "aquaproject_AWS_IAM": {
                        "ApiUrl": "https://pe3zhp32xjbzxjibon27rtwyhq.appsync-api.us-east-1.amazonaws.com/graphql",
                        "Region": "us-east-1",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "aquaproject_AWS_IAM"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "aquaproject5689c25a3d3f4db6bd3ef0871a8110b9231855-dev",
                "region": "us-east-1",
                "defaultAccessLevel": "guest"
            },
            "awsDynamoDbStoragePlugin": {
                "partitionKeyName": "id",
                "sortKeyName": "sn",
                "sortKeyType": "S",
                "region": "us-east-1",
                "arn": "arn:aws:dynamodb:us-east-1:337764483072:table/dynamoAqua-dev",
                "streamArn": "arn:aws:dynamodb:us-east-1:337764483072:table/dynamoAqua-dev/stream/2022-11-20T01:59:38.470",
                "partitionKeyType": "S",
                "name": "dynamoAqua-dev"
            }
        }
    },
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "aquaproject": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://pe3zhp32xjbzxjibon27rtwyhq.appsync-api.us-east-1.amazonaws.com/graphql",
                    "region": "us-east-1",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-ykcvjkxuizfpfbb623sbphjcju"
                }
            }
        }
    }
}''';