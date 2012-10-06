.class public Lcom/android/contacts/ui/widget/DateTimePickerHooker;
.super Ljava/lang/Object;
.source "DateTimePickerHooker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mBirthdayKind:Lcom/android/contacts/model/ContactsSource$DataKind;

.field private mBirthdayType:Lcom/android/contacts/model/ContactsSource$EditType;

.field mBirthdaylistener:Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;

.field private final mCalendar:Ljava/util/Calendar;

.field private final mContext:Landroid/content/Context;

.field private final mDateFormat:Ljava/text/DateFormat;

.field mDatelistener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private final mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private final mIsBirthday:Z

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 7
    .parameter "context"
    .parameter "textView"

    .prologue
    const/4 v4, 0x0

    .line 77
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;-><init>(Landroid/content/Context;Landroid/widget/TextView;ZLcom/android/contacts/model/ContactsSource$EditType;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;ZLcom/android/contacts/model/ContactsSource$EditType;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 7
    .parameter "context"
    .parameter "textView"
    .parameter "isBirthday"
    .parameter "birthdayType"
    .parameter "dataKind"
    .parameter "entry"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/widget/DateTimePickerHooker$1;-><init>(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)V

    iput-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdaylistener:Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;

    .line 48
    new-instance v0, Lcom/android/contacts/ui/widget/DateTimePickerHooker$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/widget/DateTimePickerHooker$2;-><init>(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)V

    iput-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mDatelistener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 64
    iput-boolean p3, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mIsBirthday:Z

    .line 65
    iput-object p4, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdayType:Lcom/android/contacts/model/ContactsSource$EditType;

    .line 66
    iput-object p5, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdayKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 67
    iput-object p6, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 68
    iput-object p1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mTextView:Landroid/widget/TextView;

    .line 71
    sget-object v0, Lcom/android/contacts/model/FallbackSource$EventDateInflater;->sFormat:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mDateFormat:Ljava/text/DateFormat;

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;

    .line 73
    iget-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0x7c6

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Ljava/text/DateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdayType:Lcom/android/contacts/model/ContactsSource$EditType;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/ui/widget/DateTimePickerHooker;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdayType:Lcom/android/contacts/model/ContactsSource$EditType;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdayKind:Lcom/android/contacts/model/ContactsSource$DataKind;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/ui/widget/DateTimePickerHooker;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method private showDatePicker()V
    .locals 4

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, showed:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mDateFormat:Ljava/text/DateFormat;

    iget-object v3, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 97
    .local v0, date:Ljava/util/Date;
    iget-object v2, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 98
    invoke-direct {p0}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->showDatePickerDialog()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v1, 0x1

    .line 104
    .end local v0           #date:Ljava/util/Date;
    :goto_0
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->showDatePickerDialog()V

    .line 105
    :cond_0
    return-void

    .line 101
    :catch_0
    move-exception v2

    goto :goto_0

    .line 100
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private showDatePickerDialog()V
    .locals 9

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 108
    iget-boolean v0, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mIsBirthday:Z

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;

    iget-object v1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdaylistener:Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;

    iget-object v3, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdayType:Lcom/android/contacts/model/ContactsSource$EditType;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mBirthdayType:Lcom/android/contacts/model/ContactsSource$EditType;

    iget v6, v6, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    move v6, v8

    :goto_0
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;-><init>(Landroid/content/Context;Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;IIIZ)V

    invoke-virtual {v0}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->show()V

    .line 126
    :goto_1
    return-void

    .line 109
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mDatelistener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v3, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 87
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ui/widget/DateTimePickerHooker;->showDatePicker()V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
