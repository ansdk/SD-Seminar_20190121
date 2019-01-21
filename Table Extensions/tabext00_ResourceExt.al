tableextension 50100 "CSD Resource Extension" extends Resource
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper'

    fields
    {
        field(50101; "CSD Resource Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Internal,External;
            Caption = 'Resource Type';
        }


        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Maximum Participants';
        }

        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity Per Day';
        }

        modify("Profit %")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                TestField("Unit Cost");
            end;
        }

        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }
    }

}