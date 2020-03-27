<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="WebFormsDemo.Pages.StudentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-12">
            <h1>Student - Activity Two Assessment</h1>
            <blockquote>
                This assessment will test basic web form construction, validation, data collection, and display.
            </blockquote>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <!-- Validation -->
            <asp:RequiredFieldValidator ID="RequiredFStudentID" runat="server" ErrorMessage="Please Enter a StudentID" ControlToValidate="StudentID" Display="None" SetFocusOnError="true" ></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredStudentName" runat="server" ErrorMessage="Please Enter a Student Name" ControlToValidate="StudentName" Display="None" SetFocusOnError="true" ></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredStudentCredit" runat="server" ErrorMessage="Please Enter a Credit" ControlToValidate="StudentCredits" Display="None" SetFocusOnError="true" ></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeStudentCredits" runat="server" ErrorMessage="Credit must be between 0.00 to 40.00"
                ControlToValidate="StudentCredits" Display="None" SetFocusOnError="true" MinimumValue="0.00" MaximumValue="40.00" Type="Double"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredStudentEmergencyContact" runat="server" ErrorMessage="Please Enter a Emergency Contact Number" ControlToValidate="StudentEmergencyContact" Display="None" SetFocusOnError="true" ></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularStudentEmergencyContact" runat="server" ErrorMessage="Emergency Phone Number is invalid (ex. 780.102.0123)" ControlToValidate="StudentEmergencyContact" Display="None" SetFocusOnError="true"  ValidationExpression="[1-9][0-9][0-9].[1-9][0-9][0-9].[0-9][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
            <asp:ValidationSummary ID="ValidationStudent" runat="server"  HeaderText="Please correct the following issues with your current data entry" />
        </div>
    </div>
     <div class="row">
        <div class="col-md-6">
            <h2>Student Data Entry</h2>
            <hr />
            <div class="row">
                <div class="col-md-4 text-right">
                    <asp:Label ID="Label1" runat="server" Text="Student ID" AssociatedControlID="StudentID"></asp:Label>
                </div>
                 <div class="col-md-4 text-left">
                    <asp:TextBox ID="StudentID" runat="server"></asp:TextBox>
                </div>
           </div>
           <div class="row">
                <div class="col-md-4 text-right">
                    <asp:Label ID="Label2" runat="server" Text="Name" AssociatedControlID="StudentName"></asp:Label>
                </div>
                <div class="col-md-4 text-left">
                    <asp:TextBox ID="StudentName" runat="server"></asp:TextBox>
                </div>
           </div>
            
           <div class="row">
                <div class="col-md-4 text-right">
                    <asp:Label ID="Label3" runat="server" Text="Credits" AssociatedControlID="StudentCredits"></asp:Label>
                </div>
                <div class="col-md-4 text-left">
                    <asp:TextBox ID="StudentCredits" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 text-right">
                    <asp:Label ID="Label4" runat="server" Text="Emergency Phone Number" AssociatedControlID="StudentEmergencyContact"></asp:Label>
                </div>
                <div class="col-md-4 text-left">
                    <asp:TextBox ID="StudentEmergencyContact" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
         <div class="col-md-6">
             <asp:LinkButton ID="Add_Student" runat="server" Text="Add Student" OnClick="Add_Student_Click"></asp:LinkButton> &nbsp;&nbsp;&nbsp;
             <asp:LinkButton ID="Clear_Fields" runat="server" Text="Clear" OnClick="Clear_Fields_Click"></asp:LinkButton><br /><br />
             <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
            <br/><br/>
             <asp:GridView ID="StudentListView" runat="server"></asp:GridView>
        </div>
    </div>
</asp:Content>
