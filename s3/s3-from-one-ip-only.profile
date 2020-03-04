{
    "Id": "S3PolicyId1",
    "Statement": [
        {
            "Sid": "IPDeny",
            "Effect": "Deny",
            "Principal": {
                "AWS": "*"
            },
            "Action": "s3:*",
            "Resource": "arn:aws:s3:::my-wicked-awesome-bucket/*",
            "Condition": {
                "NotIpAddress": {
                    "aws:SourceIp": "72.309.38.2/32"
                }
            }
        }
    ]
}