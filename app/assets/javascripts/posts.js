function centerModal() {
    $(this).css('display', 'block');
    var $dialog = $(this).find(".modal-dialog");
    var offsetTop = ($(window).height() - $dialog.height()) / 2;
    var offsetLeft = ($(window).width() - $dialog.width()) / 2;
    // Center modal vertically in window
    $dialog.css("margin-top", offsetTop);
    $dialog.css("margin-left", offsetLeft);
}


$(window).on('shown.bs.modal', function () {
    $('.modal:visible').each(centerModal);
});
$(window).on("resize", function () {
    $('.modal:visible').each(centerModal);
});
