namespace myCompany.hr.lms;

entity Students {
    key email        : String(65);
        first_name   : String(20);
        last_name    : String(20);
        date_sign_up : Date;
}

annotate Students with @(UI: {
    SelectionFields: [
        email,
        first_name
    ],
    LineItem       : [
        {
            Label: 'Email',
            Value: email
        },
        {
            Label: 'First Name',
            Value: first_name
        },
        {
            Label: 'Last Name',
            Value: last_name
        },
        {
            Label: 'Date Join',
            Value: date_sign_up
        }
    ],
    HeaderInfo     : {
        TypeName      : 'Student',
        TypeNamePlural: 'Students',
        Description   : {Value: email},
        Title         : {
            $Type: 'UI.DataField',
            Value: first_name,
        },
    }
}, );
