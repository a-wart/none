var Fetcher = function Fetcher() {
    this.fetched = false;
    this.faucets = [];
}

Fetcher.prototype.fetchFaucets = function() {
    this.fetched = false;
    var request = $.ajax({
        url: '/faucets/get',
        type: 'GET',
        contentType: 'application/json'
    }).then(function(response) {
        this.fetched = true;
        this.faucets = response;
        response.map(function(faucet) {
            faucet.link = 'http://' + faucet.link;
        });
        return response;
    });

    return request;
}

module.exports = Fetcher;
