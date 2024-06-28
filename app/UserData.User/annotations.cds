using UserService as service from '../../srv/service';
annotate service.User with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>UserName}',
                Value : userName,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>BirthDate}',
                Value : birthDate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>FirstName}e',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>LastName}e',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>CountryCode2}',
                Value : country_code,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>TelegramId}d',
                Value : telegramId,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Status}',
                Value : status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>UserName}e',
            Value : userName,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Birthdate}e',
            Value : birthDate,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>FirstName}e',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>LastName}e',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>CountryCode1}',
            Value : country_code,
        },
    ],
);

annotate service.User with @(
    UI.SelectionFields : [
        status,
    ]
);
annotate service.User with {
    status @Common.Label : '{i18n>Status}'
};
annotate service.User with @(
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'UserService.EntityContainer/updateStatus',
            Label : '{i18n>UpdateStatus}s',
        },
    ]
);
