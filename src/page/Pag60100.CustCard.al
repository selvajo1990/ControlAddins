page 60130 "Cust Card"
{
    ApplicationArea = All;
    Caption = 'Cust Card';
    PageType = Card;
    SourceTable = Customer;
    UsageCategory = Administration;
    layout
    {
        area(content)
        {
            usercontrol(ShowPopUp; ShowPopUp)
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
    trigger OnAfterGetCurrRecord()
    begin
        CurrPage.ShowPopUp.OpenPopUpUrl();
    end;
}
