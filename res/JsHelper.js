function OpenPopUpUrl() {
    window.open("https://en-ae.namshi.com/women/", "popupWindow", "width=500,height=500");
    window.focus();
}
function PopupWindow(url, title, w, h) {
    var left = (screen.width / 2) - (w / 2);
    var top = (screen.height / 2) - (h / 2);
    return window.open(url, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);
}
function RenderHtml(HtmlTextP) {
    ControlAddinObject.insertAdjacentHTML('beforeend', HtmlTextP);
}
$(document).ready(function () {
    $(".test").click(function () {
        $("#thedialog").attr('src', $(this).attr("href"));
        $("#somediv").dialog({
            width: 400,
            height: 450,
            modal: true,
            close: function () {
                $("#thedialog").attr('src', "about:blank");
            }
        });
        return false;
    });
});

jQuery(document).ready(function (e) {
    jQuery('#mymodal').trigger('click');
});