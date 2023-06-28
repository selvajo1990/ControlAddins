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
            usercontrol(ShowPopUp; "Show Modal PopUp")
            {
                ApplicationArea = All;
                trigger Ready()
                begin
                end;
            }
            group(General)
            {
                Caption = 'General';

                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the customer''s name.';
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
                    CurrPage.ShowPopUp.PopupWindow('https://en-ae.namshi.com/premium-store/', '', 700, 700);
                end;
            }
        }
    }
}
