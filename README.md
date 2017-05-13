# AWS CLI Docker Image
## Providing Credentials

Credentials can be provided in any of the aws-cli supported formats.

### Using credentials file

If you need to create the credentials file, you can use the aws-cli configure command by using the following command:

```
docker run --rm -v $HOME/.aws:/root/.aws sourceallies/aws-cli-docker aws configure
```

From that point on, simply mount the directory containing your config.

```
docker run --rm -v $HOME/.aws:/root/.aws sourceallies/aws-cli-docker aws s3 ls
```

### Using environment variables

This is supported, although NOT encouraged, as the environment variables can end up in command-line history, available for container inspection, etc.

- AWS_ACCESS_KEY_ID` - specify the access key ID
- AWS_SECRET_ACCESS_KEY` - the secret access key

```
docker run --rm -e AWS_ACCESS_KEY_ID=my-key-id -e AWS_SECRET_ACCESS_KEY=my-secret-access-key -v $(pwd):/aws sourceallies/aws-cli-docker aws s3 ls 
```


