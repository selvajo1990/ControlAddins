page 60131 "Control Addin Card 2"
{
    ApplicationArea = All;
    Caption = 'Control Addin';
    PageType = Card;
    SourceTableTemporary = true;
    SourceTable = Integer;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                ShowCaption = false;

                usercontrol(WebView; "Microsoft.Dynamics.Nav.Client.WebPageViewer")
                {
                    ApplicationArea = All;
                    trigger ControlAddInReady(callbackUrl: Text)
                    begin
                        CurrPage.WebView.Navigate(Url);
                    end;
                }
            }
        }
    }

    procedure SetUrl(UrlP: Text)
    begin
        Url := UrlP;
    end;

    var
        Url: Text;
}
