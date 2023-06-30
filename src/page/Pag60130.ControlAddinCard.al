page 60130 "Control Addin Card"
{
    ApplicationArea = All;
    Caption = 'Control Addin';
    PageType = Card;
    SourceTable = Customer;
    UsageCategory = Administration;
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(InputTextF; InputText)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the InputText';
                    Caption = 'Enter HTML';
                    MultiLine = true;
                    trigger OnValidate()
                    begin
                        if InputText = '' then
                            Error('Must have a value');

                        CurrPage.ShowModalPopUp.RenderHtml(InputText);
                    end;
                }
            }
            group("Render HTML")
            {
                usercontrol(ShowModalPopUp; "Show Modal PopUp")
                {
                    ApplicationArea = All;
                    trigger IsReady()
                    begin
                    end;
                }
            }
            group("Web View")
            {
                usercontrol(WebViewer; "Microsoft.Dynamics.Nav.Client.WebPageViewer")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Show Pop Up")
            {
                Image = Open;
                ToolTip = 'Executes the Show Pop Up action.';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    // CurrPage.ShowPopUp.OpenPopUpUrl();
                    CurrPage.ShowModalPopUp.PopupWindow('https://en-ae.namshi.com/premium-store/', '', 700, 700);
                end;
            }
            action("Navigate to WEB")
            {
                Image = Navigate;
                ToolTip = 'Executes the Navigate to WEB action.';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    if InputText = '' then
                        Error('InputText must have a value');
                    CurrPage.WebViewer.Navigate(InputText);
                end;
            }
            action("Open Modal")
            {
                Image = MoveNegativeLines;
                ToolTip = 'Executes the Open Modal action.';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                trigger OnAction()
                var
                    ControlAddinCard2: Page "Control Addin Card 2";
                begin
                    if InputText = '' then
                        Error('InputText must have a value');

                    ControlAddinCard2.SetUrl(InputText);
                    ControlAddinCard2.RunModal();
                end;
            }
        }
    }
    var
        InputText: Text;
}
