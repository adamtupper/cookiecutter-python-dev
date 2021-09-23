import subprocess

subprocess.call(["git", "init"])
subprocess.call(["gh", "repo", "create", "{{cookiecutter.repo_name}}",
                 "--confirm",
                 "--private",
                 "--description", "{{cookiecutter.short_description}}"])
