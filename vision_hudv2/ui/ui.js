// Made By Benni (Vision-Service) with <3 for the Community.

$(function() {

    window.addEventListener('message', function(event) {
        var item = event.data;
        console.log(JSON.stringify(item.accounts))
            $('.serverid').text('' + item.id + '')
            $('.lifestatus').text('' + item.life + '')
            $('.shieldstatus').text('' + item.shield + '')
            $('.hungerstatus').text('' + item.hunger + '')
            $('.thirststatus').text('' + item.thirst + '')
            $('.blackslot').text('' + item.accounts['bank'] + '$')
            $('.moneystatus').text('' + item.accounts['money'] + '$ ')
    })
})