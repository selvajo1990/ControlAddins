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
            usercontrol(ShowModalPopUp; "Show Modal PopUp")
            {
                ApplicationArea = All;
                trigger IsReady()
                begin
                end;
            }
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
            // action("Render HTML")
            // {
            //     Image = Registered;
            //     ToolTip = 'Executes the Render HTML action.';
            //     Promoted = true;
            //     PromotedCategory = Process;
            //     PromotedIsBig = true;
            //     PromotedOnly = true;
            //     trigger OnAction()
            //     begin
            //         if InputText = '' then
            //             Error('Must have a value');

            //         CurrPage.ShowModalPopUp.RenderHtml(InputText);
            //     end;
            // }
        }
    }
    var
        InputText: Text;
}
