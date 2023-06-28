controladdin "ShowPopUp"
{
    RequestedHeight = 300;
    MinimumHeight = 300;
    MaximumHeight = 300;
    RequestedWidth = 700;
    MinimumWidth = 700;
    MaximumWidth = 700;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts = '.\res\script1.js';
    StartupScript = '.\res\startupScript.js';

    procedure OpenPopUpUrl();
    event Ready();
}