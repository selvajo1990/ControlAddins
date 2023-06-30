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
    Scripts = '.\res\JsHelper.js', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js',
                                  'https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js';
    StartupScript = '.\res\startupScript.js';
    StyleSheets = 'https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css';
    // 'https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.js',
    //                                    'https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js',
    procedure OpenPopUpUrl();
    procedure PopupWindow(url: Text; title: Text; width: Decimal; height: Decimal);
    procedure RenderHtml(HtmlTextP: Text);
    event IsReady();
}