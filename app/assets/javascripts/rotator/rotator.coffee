class Rotator
    constructor: () ->
        @faucets = [];
        @fetchFaucets();

    fetchFaucets: =>
        request = $.ajax(
          url: '/faucets/get'
          type: 'GET'
          contentType: 'application/json'
        )
        .then (response) =>
            console.log response
            # $('.rotator-container').append('<p> ' + JSON.stringify(response) + '</p>')

rotator = new Rotator();