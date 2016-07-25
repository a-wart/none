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
            @faucets = response
            rotatorEl = $('.js-rotator')[0];
            frag = document.createDocumentFragment();
            @faucets.forEach((faucet) =>
                text = document.createElement('p');
                text.textContent = faucet.link;
                frag.appendChild(text);
            );

            rotatorEl.appendChild(frag);

rotator = new Rotator();