const fs = require("fs");
const inquirer = require("inquirer");

const process = require("process");
process.chdir("../../");

const { spawn } = require("child_process");
const ls = spawn("ls", ["-h", "Projects/current"]);

let projects = [];
ls.stdout.on("data", (data) => {
  const projectString = data.toString();
  projects.push(...projectString.split("\n"));
  projects.pop();
});

ls.stderr.on("data", (data) => {
  console.error(`stderr: ${data}`);
});

ls.on("close", (code) => {
  const convertName = (raw) => {
    const dehyphen = raw.replace(/-/g, " ");
    const name = dehyphen.split(" ").map((v) => {
      return v[0].toUpperCase() + v.slice(1, v.length);
    });
    return name.join(" ");
  };
  const questions = {
    type: "list",
    name: "selected",
    message: "Select a project",
    choices: projects.map((project) => {
      const displayName = convertName(project);
      return {
        name: displayName,
        value: project,
      };
    }),
  };
  inquirer
    .prompt(questions)
    .then((answers) => {
      console.log(answers);
    })
    .catch((errors) => {
      console.error(errors);
    });
});
