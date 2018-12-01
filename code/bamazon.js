require("dotenv").config();
// const Customer = require("./customer.js");
// const Manager = require("./manager.js");
const mysql = require("mysql");
const figlet = require("figlet");
const chalk = require("chalk");
const Table = require("cli-table");
const inquirer = require("inquirer");


const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "SuperSecretPasswordHere",
    database: "bamazon"
});

console.log(chalk.cyan(figlet.textSync('bamazon', {font: 'univers', horizontalLayout: 'full'})));

const Bamazon = () => {
    inquirer.prompt([{
        name: 'select',
        type: 'list',
        message: 'Choose Your Character:',
        choices: ['Customer', 'Manager']
    }]).then(response => {

        let user = response.select;

        switch (user) {
            case "Customer":
                Customer.start();
                break;
            case "Manager":
                Manager.start();
                break;
            default:
                console.log("Oops! There was an error! Try again!")
                reprompt();
                break;
        }
    })
}

const reprompt = () => {
    inquirer.prompt([
        {
            name: "requery",
            type: "list",
            message: "Would you like to try again?",
            choices: ['Yes', 'No']
        }
    ]).then(response => {
        switch (response.requery) {
            case "Yes":
                Bamazon();
                break;
            case "No":
                console.log("Thanks for choosing Bamazon!");
                connection.end();
                break;
            default:
                console.log("Thanks for choosing Bamazon!");
                connection.end();
                break;
        }
    })
}

Bamazon();
