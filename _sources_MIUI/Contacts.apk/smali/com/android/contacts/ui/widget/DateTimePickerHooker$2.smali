.class Lcom/android/contacts/ui/widget/DateTimePickerHooker$2;
.super Ljava/lang/Object;
.source "DateTimePickerHooker.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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
    .line 49
    iput-object p1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$2;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$2;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$000(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 54
    iget-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$2;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$200(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$2;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mDateFormat:Ljava/text/DateFormat;
    invoke-static {v1}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$100(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$2;->this$0:Lcom/android/contacts/ui/widget/DateTimePickerHooker;

    #getter for: Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->access$000(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
