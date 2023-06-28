function OpenPopUpUrl() {
    window.location = this.href;
    window.open("https://en-ae.namshi.com/women/", "popupWindow", "width=500,height=500");
}
function PopupWindow(url, title, w, h) {
    var left = (screen.width / 2) - (w / 2);
    var top = (screen.height / 2) - (h / 2);
    return window.open(url, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);
} 