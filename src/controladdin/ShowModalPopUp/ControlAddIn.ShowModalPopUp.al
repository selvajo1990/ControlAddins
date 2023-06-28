controladdin "Show Modal PopUp"
{
    RequestedHeight = 400;
    RequestedWidth = 400;
    MinimumHeight = 400;
    MaximumHeight = 400;
    MinimumWidth = 400;
    MaximumWidth = 400;
    VerticalShrink = true;
    HorizontalShrink = true;
    Scripts = '.\res\JsHelper.js';
    StartupScript = '.\res\startupScript.js';

    procedure OpenPopUpUrl();
    procedure PopupWindow(url: Text; title: Text; width: Decimal; height: Decimal);
    procedure RenderHtml(HtmlTextP: Text);
    event IsReady();
}