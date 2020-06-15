### todo

> todolist that Just Works™;


<p align="center">
  <a href="https://github.com/shagunattri/pwgen/pulls">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?longCache=true" alt="Pull Requests">
  </a>
  <a href="LICENSE">
    <img src="https://img.shields.io/badge/License-MIT-lightgrey.svg?longCache=true" alt="MIT License">
  </a>
</p>

<p align="center">
  <a href="https://twitter.com/sp3ppr" target="_blank">
    <img src="https://img.shields.io/twitter/follow/sp3ppr.svg?logo=twitter">
  </a>
</p>

<div align="center">
  <sub>Created by
  <a href="https://twitter.com/sp3ppr">sp3ppr</a> and
  <a href="https://github.com/shagunattri/pwGen/graphs/contributors">contributors</a>
</div>

<br>

****


### todo helps you manage your todo tasks.


```console
    usage:
        todo <command> <id>

        command:

            new:        used to create a new todo
            get:        retreive your todos
            complete:   mark todo as complete
            help:       print the usage guide

        id:

            [0-9]:      index value of todo task
```

### Installation

```console
$ git clone git@github.com:shagunattri/todo.git

$ cd todo/

$ npm install

$ todo <commmand>  #run one of the four todo commands
```
**Add the executable to your path or alias it to the executable location**

### Prerequisites

- nodejs
- npm

### Dependencies
- [lowdb](https://github.com/typicode/lowdb)
- [chalk](https://github.com/chalk/chalk)
- [fs](https://nodejs.org/api/fs.html)


### Examples

```console
$ todo help         #prints usage of todo

$ todo new          #add a new todo

$ todo complete 1   # mark todo as complete based on the index

$ todo get          # display all todos
```

## Contributing

When contributing to this repository, please first discuss the change you wish to make via issue,before making a change.


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details


### References

- https://www.sitepoint.com/javascript-command-line-interface-cli-node-js/
- https://developer.okta.com/blog/2019/06/18/command-line-app-with-nodejs
- https://developer.okta.com/blog/2019/06/18/command-line-app-with-nodejs
- https://scotch.io/tutorials/building-cli-applications-with-nodejs
- https://scotch.io/tutorials/build-an-interactive-command-line-application-with-nodejs
