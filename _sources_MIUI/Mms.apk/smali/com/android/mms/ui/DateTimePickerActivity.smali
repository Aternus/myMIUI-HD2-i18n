.class public Lcom/android/mms/ui/DateTimePickerActivity;
.super Landroid/app/Activity;
.source "DateTimePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# static fields
.field public static CONTENT_TYPE:Ljava/lang/String;

.field public static FIELD_TIME:Ljava/lang/String;

.field public static FIELD_TITLE:Ljava/lang/String;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mCancelButton:Landroid/widget/Button;

.field private mDateButton:Landroid/widget/Button;

.field private mDatePicker:Landroid/widget/DatePicker;

.field private mIsDate:Z

.field private mOkButton:Landroid/widget/Button;

.field private mRotation:I

.field private mTimeButton:Landroid/widget/Button;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "vnd.android.cursor.item/datetime"

    sput-object v0, Lcom/android/mms/ui/DateTimePickerActivity;->CONTENT_TYPE:Ljava/lang/String;

    .line 34
    const-string v0, "title"

    sput-object v0, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TITLE:Ljava/lang/String;

    .line 35
    const-string v0, "time"

    sput-object v0, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    return-void
.end method

.method private formatDateAndShow()V
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    invoke-static {p0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method private formatTimeAndShow()V
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 74
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->setContentView(I)V

    .line 75
    const v1, 0x7f0d0016

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTitleView:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v1, 0x7f0d0036

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimePicker:Landroid/widget/TimePicker;

    .line 78
    const v1, 0x7f0d0035

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDatePicker:Landroid/widget/DatePicker;

    .line 79
    const v1, 0x7f0d0033

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDateButton:Landroid/widget/Button;

    .line 80
    const v1, 0x7f0d0034

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimeButton:Landroid/widget/Button;

    .line 81
    const v1, 0x7f0d0037

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mOkButton:Landroid/widget/Button;

    .line 82
    const v1, 0x7f0d0038

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCancelButton:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-boolean v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->setView(Z)V

    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->initPickers()V

    .line 91
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->formatDateAndShow()V

    .line 92
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->formatTimeAndShow()V

    .line 94
    invoke-virtual {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 95
    .local v0, wl:Landroid/view/WindowManager$LayoutParams;
    const v1, 0x1030072

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 96
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 97
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 100
    return-void
.end method

.method private initPickers()V
    .locals 7

    .prologue
    .line 104
    iget-object v5, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 105
    .local v4, year:I
    iget-object v5, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 106
    .local v3, monthOfYear:I
    iget-object v5, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 107
    .local v0, dayOfMonth:I
    iget-object v5, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 108
    .local v1, hourOfDay:I
    iget-object v5, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 109
    .local v2, minute:I
    iget-object v5, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v5, v4, v3, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 110
    iget-object v5, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 111
    iget-object v5, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 112
    iget-object v5, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v5, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 113
    return-void
.end method

.method private setView(Z)V
    .locals 4
    .parameter "isDate"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDateButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimeButton:Landroid/widget/Button;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz p1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mDatePicker:Landroid/widget/DatePicker;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setVisibility(I)V

    .line 132
    return-void

    :cond_0
    move v1, v2

    .line 129
    goto :goto_0

    :cond_1
    move v1, v2

    .line 130
    goto :goto_1

    :cond_2
    move v1, v3

    .line 131
    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 166
    :goto_0
    :pswitch_0
    return-void

    .line 138
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    .line 139
    iget-boolean v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->setView(Z)V

    goto :goto_0

    .line 142
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    .line 143
    iget-boolean v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mIsDate:Z

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DateTimePickerActivity;->setView(Z)V

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 147
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090182

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/DateTimePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->finish()V

    goto :goto_0

    .line 160
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v5, v0}, Lcom/android/mms/ui/DateTimePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->finish()V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x7f0d0033
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    iget v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mRotation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 68
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mRotation:I

    .line 69
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->initLayout()V

    .line 71
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    .line 54
    invoke-virtual {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 56
    .local v1, time:J
    iget-object v3, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 57
    sget-object v3, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mTitle:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mRotation:I

    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->initLayout()V

    .line 61
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 2
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 180
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->formatDateAndShow()V

    .line 181
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/DateTimePickerActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 172
    invoke-direct {p0}, Lcom/android/mms/ui/DateTimePickerActivity;->formatTimeAndShow()V

    .line 173
    return-void
.end method
