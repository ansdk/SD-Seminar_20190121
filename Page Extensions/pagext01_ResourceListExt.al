pageextension 50102 "CSD Resource List" extends "Resource List"
{
    layout
    {
        addafter(Type)
        {

            field("CSD Resource Type"; "CSD Resource Type")
            {
            }
        }
        addafter("CSD Resource Type")
        {
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
        modify(Type)
        {
            Visible = ShowType;
        }


    }


    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        ShowType := (GetFilter(Type) = '');
        ShowMaxField :=
        (GetFilter(Type) = format(Type::machine));
    end;

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;

}