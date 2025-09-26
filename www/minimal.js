var exec = require('cordova/exec');

var Minimal = {
    echo: function (arg0, success, error) {
        exec(success, error, "MinimalPlugin", "echo", [arg0]);
    }
};

module.exports = Minimal;