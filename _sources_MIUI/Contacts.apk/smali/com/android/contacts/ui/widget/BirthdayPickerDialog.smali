.class public Lcom/android/contacts/ui/widget/BirthdayPickerDialog;
.super Landroid/app/AlertDialog;
.source "BirthdayPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;

.field private final mContext:Landroid/content/Context;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private final mTitleDateFormat:Ljava/text/DateFormat;

.field private final mUseLunar:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;IIIZ)V
    .locals 13
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isLunar"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 84
    const v4, 0x10300a3

    invoke-direct {p0, p1, v4}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 86
    iput-object p1, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mCallBack:Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;

    .line 88
    invoke-static {v9}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 92
    const/4 v4, -0x1

    const v6, 0x1040346

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v4, v6, p0}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 93
    const/4 v6, -0x2

    const/high16 v4, 0x104

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v0, v5

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    move-object v4, v0

    invoke-virtual {p0, v6, v7, v4}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 94
    const v4, 0x10803c4

    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->setIcon(I)V

    .line 96
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 98
    .local v11, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030002

    invoke-virtual {v11, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 99
    .local v12, view:Landroid/view/View;
    invoke-virtual {p0, v12}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->setView(Landroid/view/View;)V

    .line 100
    const v4, 0x7f070030

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mUseLunar:Landroid/widget/CheckBox;

    .line 101
    iget-object v4, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mUseLunar:Landroid/widget/CheckBox;

    move-object v0, v4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    const v4, 0x7f07002f

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    iput-object v4, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 105
    iget-object v4, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v8, p0

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;ZZ)V

    .line 106
    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->updateTitle(III)V

    .line 107
    iget-object v4, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mUseLunar:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/contacts/ui/widget/BirthdayPickerDialog$1;

    invoke-direct {v5, p0}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog$1;-><init>(Lcom/android/contacts/ui/widget/BirthdayPickerDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ui/widget/BirthdayPickerDialog;)Landroid/widget/DatePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ui/widget/BirthdayPickerDialog;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->updateTitle(III)V

    return-void
.end method

.method private updateTitle(III)V
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 131
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 132
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 134
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mUseLunar:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x1040271

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/util/LunarDate;->solar2lunar(Landroid/content/res/Resources;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mContext:Landroid/content/Context;

    const v2, 0x1040270

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mCallBack:Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 119
    iget-object v0, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mCallBack:Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mUseLunar:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;IIIZ)V

    .line 122
    :cond_0
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 126
    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->updateTitle(III)V

    .line 127
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 156
    const-string v4, "year"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 157
    .local v3, year:I
    const-string v4, "month"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 158
    .local v1, month:I
    const-string v4, "day"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, day:I
    const-string v4, "lunar"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 160
    .local v2, useLunar:Z
    iget-object v4, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4, v3, v1, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 161
    invoke-direct {p0, v3, v1, v0}, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->updateTitle(III)V

    .line 162
    iget-object v4, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mUseLunar:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 163
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string v1, "month"

    iget-object v2, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string v1, "day"

    iget-object v2, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    const-string v1, "lunar"

    iget-object v2, p0, Lcom/android/contacts/ui/widget/BirthdayPickerDialog;->mUseLunar:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    return-object v0
.end method
