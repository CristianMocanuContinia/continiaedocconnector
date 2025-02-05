// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.EServices.EDocumentConnector.Continia;

using Microsoft.eServices.EDocument;

tableextension 6390 "E-Document Service" extends "E-Document Service"
{
    fields
    {
        field(6390; "No. Of Network Profiles"; Integer)
        {
            Caption = 'No. Of Network Profiles';
            FieldClass = FlowField;
            CalcFormula = count("Activated Net. Prof." where("E-Document Service Code" = field(Code)));
            Editable = false;
        }
    }
}