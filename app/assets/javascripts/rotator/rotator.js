var Fetcher = require('./fetcher');

var Rotator = function Rotator() {
    this.faucets = [];
    this.el = document.querySelector('.js-iframe');
    this.fetcher = new Fetcher();

    this.fetcher.fetchFaucets().then(function(data) {
        this.faucets = data;
        this.rotate();
    }.bind(this));
};


Rotator.prototype.rotate = function() {
    if (!this.faucets.length) {
        return;
    }

    var faucet = this.faucets.pop();
    this.el.src = faucet.link;
};

module.exports = Rotator;
