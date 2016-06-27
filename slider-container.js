$(document).ready(function() {
    var timeInterval, tabCount = 0, currnetIndex = 1;
    tabCount = $('.pag').find('li a').length;
    var tabContentObj = $('.spotContent');
    changeTabIndex();
    timeInterval = setInterval(function () { 
        changeTabIndex(); 
    }, 4 * 1000);
    function changeTabIndex() {
        if (currnetIndex > tabCount) {
            currnetIndex = 1;
        }
        tabContentObj.hide();
        $('.pag').find('li.current').removeClass('current');
        var currentAncorObj = $('.pag').find('li a').eq(currnetIndex - 1);
        currentAncorObj.parent().addClass('current');
        $(currentAncorObj.attr('href')).show();
        currnetIndex++;
    };
    $('.pag li').mouseenter(function () {
        clearInterval(timeInterval);
    }).mouseleave(function () {
        timeInterval = setInterval(function () { 
            changeTabIndex(); 
        }, 4 * 1000);
    });
    $('.pag li a').click(function () {
        tabContentObj.hide();
        $('.pag').find('li.current').removeClass('current');
        var currentAncorObj = $(this);
        currnetIndex = $('.pag').find('li a').index($(this)) + 1;
        currentAncorObj.parent().addClass('current');
        $(currentAncorObj.attr('href')).show();
        currnetIndex++;
        //return false;
    });
});