const mysql2 = require('mysql2');
const inquirer = require('inquirer');
const consoleTable = require('console.table');

const connection = mysql2.createConnection({
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: 'password',
    database: 'employee_db',
});

connection.connect(function (err) {
    if (err) throw err
    init();
});

function init() {
    prompt();
}

const prompt = () => {
    inquirer.prompt([
        {
            type: "list",
            message: "Please select what you would like to do",
            name: "choice",
            choices: [
                'View all employees',
                'View employees by role',
                'View employees by department',
                'Update employee',
                'Add employee',
                'Add role',
                'Add department'
            ]
        }
    ]).then(function (value) {
        switch (value.choice) {
            case 'View all employees':
                viewAllEmployees();
                break;
            case 'View employees by role':
                viewByRole();
                break;
            case 'View employees by department':
                viewByDepartment();
                break;
            case 'Update employee':
                updateEmployee();
                break;
            case 'Add employee':
                addEmployee();
                break;
            case 'Add role':
                addRole();
                break;
            case 'Add department':
                addDepartment();
                break;
        }
    });
};


const viewAllEmployees = () => {
    connection.query("SELECT employee.first_name, employee.last_name, role.title, role.salary, department.name, CONCAT(e.first_name, ' ' ,e.last_name) AS Manager FROM employee INNER JOIN role on role.id = employee.role_id INNER JOIN department on department.id = role.department_id left join employee e on employee.manager_id = e.id;",
      function (err, res) {
        if (err) throw err
        console.table(res)
        prompt()
      })
  };

const viewByRole = () => {
    connection.query("SELECT employee.first_name, employee.last_name, role.title AS Title FROM employee JOIN role ON employee.role_id = role.id;",
    function (err, res) {
        if (err) throw err
        console.table(res)
        prompt()
    })
};

function viewByDepartment() {

};

function updateEmployee() {

};

function addEmployee() {

};

function addRole() {

};

function addDepartment() {

};