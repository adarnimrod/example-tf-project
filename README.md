# Example IaC project

An example infrastructure-as-code project to show a simple project structure.

## A note on structure

This repo is first divided by the main tool used instead of by the service or
part of the infrastructure. One reason is to document the workflow with that
specific tool in just 1 place, not copied across different READMEs for each
service. Another reason is that we can more easily setup our CI/CD pipeline
trigges. For example, build a container image if files under
`Containerfiles/<service>` have changed.

## License

This software is licensed under the MIT license (see `LICENSE.txt`).

## Author Information

Nimrod Adar, [contact me](mailto:nimrod@shore.co.il) or visit my
[website](https://www.shore.co.il/). Patches are welcome via
[`git send-email`](http://git-scm.com/book/en/v2/Git-Commands-Email). The repository
is located at: <https://git.shore.co.il/explore/>.
