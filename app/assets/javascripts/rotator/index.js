var Rotator = require('./rotator');

var App = function App() {
    this.rotator = new Rotator();

    this.eventBindings();
};

App.prototype.eventBindings = function() {
    document.querySelector('.js-next').addEventListener('click', function() {
        this.rotator && this.rotator.rotate();
    }.bind(this));
}

document.addEventListener("DOMContentLoaded", function(event) {
    var app = new App();
});
