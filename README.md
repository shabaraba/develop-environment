# setup-develop-environment
This repository is to set up each develop environment for me.
clone selected repository, and remove .git folder to untrack git for creating my new apps using git.

## usage
```sh
curl -o- https://raw.githubusercontent.com/shabaraba/setup-develop-environment/main/init.sh | bash -s laravel
```

The argment can be set in following:
- Laravel
- ReactNative
- SpringBoot
- JupyterNotebook

then, init.sh will clone my `xxx-environment` repository to your current directory and remove `.git/` folder.
