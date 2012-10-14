.class Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;
.super Ljava/lang/Object;
.source "DateTimePickerHooker.java"

# interfaces
.implements Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/widget/DateTimePickerHooker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;IIIZ)V
    .locals 4
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isLunar"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$000(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 38
    iget-object v1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$200(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mDateFormat:Ljava/text/DateFormat;
    invoke-static {v2}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$100(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$000(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdayType:Lcom/android/contacts/model/ContactsSource$EditType;
    invoke-static {v1}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$300(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    if-eqz p5, :cond_1

    const/4 v1, 0x2

    move v0, v1

    .line 42
    .local v0, rawValue:I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdayKind:Lcom/android/contacts/model/ContactsSource$DataKind;
    invoke-static {v2}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$400(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/contacts/model/EntityModifier;->getType(Lcom/android/contacts/model/ContactsSource$DataKind;I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    #setter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdayType:Lcom/android/contacts/model/ContactsSource$EditType;
    invoke-static {v1, v2}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$302(Lcom/android/contacts/ui/widget/DateTimePickerHooker;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/ContactsSource$EditType;

    .line 43
    iget-object v1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v1}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$500(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdayKind:Lcom/android/contacts/model/ContactsSource$DataKind;
    invoke-static {v2}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$400(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 45
    .end local v0           #rawValue:I
    :cond_0
    return-void

    .line 40
    :cond_1
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0
.end method
