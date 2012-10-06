.class Lcom/android/contacts/ui/widget/BirthdayPickerDialog$1;
.super Ljava/lang/Object;
.source "BirthdayPickerDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/widget/BirthdayPickerDialog;-><init>(Landroid/content/Context;Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/widget/BirthdayPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/widget/BirthdayPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog$1;->this$0:Lcom/android/contacts/ui/widget/BirthdayPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog$1;->this$0:Lcom/android/contacts/ui/widget/BirthdayPickerDialog;

    #getter for: Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;
    invoke-static {v0}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->access$000(Lcom/android/contacts/ui/widget/BirthdayPickerDialog;)Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/DatePicker;->setLunarMode(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog$1;->this$0:Lcom/android/contacts/ui/widget/BirthdayPickerDialog;

    iget-object v1, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog$1;->this$0:Lcom/android/contacts/ui/widget/BirthdayPickerDialog;

    #getter for: Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;
    invoke-static {v1}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->access$000(Lcom/android/contacts/ui/widget/BirthdayPickerDialog;)Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog$1;->this$0:Lcom/android/contacts/ui/widget/BirthdayPickerDialog;

    #getter for: Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;
    invoke-static {v2}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->access$000(Lcom/android/contacts/ui/widget/BirthdayPickerDialog;)Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog$1;->this$0:Lcom/android/contacts/ui/widget/BirthdayPickerDialog;

    #getter for: Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;
    invoke-static {v3}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->access$000(Lcom/android/contacts/ui/widget/BirthdayPickerDialog;)Landroid/widget/DatePicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    #calls: Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->updateTitle(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->access$100(Lcom/android/contacts/ui/widget/BirthdayPickerDialog;III)V

    .line 112
    return-void
.end method
