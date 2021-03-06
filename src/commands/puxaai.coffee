module.exports.run = (client, msg, args) ->
    if args.length > 1
        msg.channel.send 'Comando Inválido'
        return

    deck = [
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
    ]

    naipe = ['Ouro', 'Copas', 'Espadas', 'Paus']

    if args.length == 1
        d = deck[Math.floor Math.random() * 13]
    else
        d = deck[Math.floor Math.random() * 14]

    n = naipe[Math.floor Math.random() * 4]

    switch d
        when '1' then d = 'Ás'
        when '11' then d = 'J'
        when '12' then d = 'Q'
        when '13' then d = 'K'
        when '14'
            msg.channel.send 'Coringa'
            return

    if args.length == 1
        if (
            args[0].toLowerCase() == 'ouro' ||
            args[0].toLowerCase() == 'copas' ||
            args[0].toLowerCase() == 'paus' ||
            args[0].toLowerCase() == 'espadas'
        )
            n = args[0].charAt(0).toUpperCase() + args[0].slice 1
            msg.channel.send "#{d} de #{n}"
            return

        objection = [
            'https://i.imgur.com/LXuVoiX.png'
            'https://i.imgur.com/ibSO6EC.png'
            'https://i.imgur.com/CcxgC9g.gif'
            'https://i.imgur.com/6lGliCh.jpg'
        ]

        msg.channel.send 'Objection!!! Isso não é um naipe válido.'
        msg.channel.send objection[Math.floor Math.random() * objection.length]
        return

    msg.channel.send "#{d} de #{n}"
