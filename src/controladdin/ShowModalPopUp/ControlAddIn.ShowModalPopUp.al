controladdin "Show Modal PopUp"
{
    RequestedHeight = 1;
    RequestedWidth = 1;
    MinimumHeight = 1;
    MaximumHeight = 1;
    MinimumWidth = 1;
    MaximumWidth = 1;
    VerticalShrink = true;
    HorizontalShrink = true;
    Scripts = '.\res\JsHelper.js';
    StartupScript = '.\res\startupScript.js';

    procedure OpenPopUpUrl();
    procedure PopupWindow(url: Text; title: Text; width: Decimal; height: Decimal);
    event Ready();
}