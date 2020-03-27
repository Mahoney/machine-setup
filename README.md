# machine-setup
Ansible scripts for setting up a mac

To run:
```bash
curl -fsSL https://raw.githubusercontent.com/Mahoney/machine-setup/master/install | bash
```

Or for a different role:
```
curl -fsSL https://raw.githubusercontent.com/Mahoney/machine-setup/master/install | bash -s <role>
```

TODO:
* IntelliJ Settings
* IntelliJ plugins
* IntelliJ command-line launcher
* Chrome settings / plugins / sync
* Terminals launched from terminal don't stop properly
* Bash install docker-completions
* Setup touchbar
* GitHub public key
* Work out how to schedule update to happen hourly / daily / whatever
* Stop every update blatting the .m2/settings.xml
* pip3 install awscli --upgrade --user
* Put awscli on path - symlink /Users/relliot/Library/Python/3.7/bin/aws into /usr/local/bin
* install aws_key_gen
* setup aws_key_gen key chain
* auto regenerate m2 settings key when out of date
* Not have to put in a passphrase if there's already a public key
* `export PATH="/usr/local/sbin:$PATH"` in `.bash_profile` for docker
* install the plantuml thing in IntelliJ Idea: https://www.jetbrains.com/help/idea/markdown.html#diagrams
* `sudo launchctl config user path /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin` - add brew prefix to gui path
* add to personal bashrc: `export COMPOSE_DOCKER_CLI_BUILD=1`
* add to personal bashrc: `export DOCKER_BUILDKIT=1`

