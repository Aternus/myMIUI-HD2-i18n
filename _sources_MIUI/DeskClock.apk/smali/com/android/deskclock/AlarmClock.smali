.class public Lcom/android/deskclock/AlarmClock;
.super Landroid/app/Activity;
.source "AlarmClock.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;
    }
.end annotation


# instance fields
.field private mAlarmsList:Landroid/widget/ListView;

.field private mCursor:Landroid/database/Cursor;

.field private mFactory:Landroid/view/LayoutInflater;

.field private mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmClock;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmClock;ZLandroid/widget/ImageView;Lcom/android/deskclock/Alarm;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/AlarmClock;->updateIndicatorAndAlarm(ZLandroid/widget/ImageView;Lcom/android/deskclock/Alarm;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->addNewAlarm()V

    return-void
.end method

.method private addNewAlarm()V
    .locals 2

    .prologue
    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/SetAlarm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    .line 286
    return-void
.end method

.method private updateIndicatorAndAlarm(ZLandroid/widget/ImageView;Lcom/android/deskclock/Alarm;)V
    .locals 3
    .parameter "enabled"
    .parameter "bar"
    .parameter "alarm"

    .prologue
    .line 77
    if-eqz p1, :cond_1

    const v0, 0x7f020025

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget v0, p3, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p0, v0, p1}, Lcom/android/deskclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget v0, p3, Lcom/android/deskclock/Alarm;->hour:I

    iget v1, p3, Lcom/android/deskclock/Alarm;->minutes:I

    iget-object v2, p3, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)V

    .line 84
    :cond_0
    return-void

    .line 77
    :cond_1
    const v0, 0x7f020024

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 6

    .prologue
    .line 220
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/android/deskclock/AlarmClock;->setContentView(I)V

    .line 221
    const v4, 0x7f0b000b

    invoke-virtual {p0, v4}, Lcom/android/deskclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    .line 222
    new-instance v0, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, p0, v4}, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;-><init>(Lcom/android/deskclock/AlarmClock;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 223
    .local v0, adapter:Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 225
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    iget-object v4, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 228
    const v4, 0x7f0b000a

    invoke-virtual {p0, v4}, Lcom/android/deskclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 229
    .local v1, addAlarm:Landroid/view/View;
    new-instance v4, Lcom/android/deskclock/AlarmClock$2;

    invoke-direct {v4, p0}, Lcom/android/deskclock/AlarmClock$2;-><init>(Lcom/android/deskclock/AlarmClock;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    new-instance v4, Lcom/android/deskclock/AlarmClock$3;

    invoke-direct {v4, p0}, Lcom/android/deskclock/AlarmClock$3;-><init>(Lcom/android/deskclock/AlarmClock;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 241
    const v4, 0x7f0b000c

    invoke-virtual {p0, v4}, Lcom/android/deskclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 243
    .local v3, deskClock:Landroid/widget/ImageView;
    new-instance v4, Lcom/android/deskclock/AlarmClock$4;

    invoke-direct {v4, p0}, Lcom/android/deskclock/AlarmClock$4;-><init>(Lcom/android/deskclock/AlarmClock;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v4, 0x7f0b000d

    invoke-virtual {p0, v4}, Lcom/android/deskclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 250
    .local v2, currentTime:Landroid/view/View;
    new-instance v4, Lcom/android/deskclock/AlarmClock$5;

    invoke-direct {v4, p0}, Lcom/android/deskclock/AlarmClock$5;-><init>(Lcom/android/deskclock/AlarmClock;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "correct_time_first"

    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 269
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "correct_time_first"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const v3, 0x7f0b000d

    invoke-virtual {p0, v3}, Lcom/android/deskclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, currentTime:Landroid/view/View;
    new-instance v2, Landroid/widget/GuidePopupWindow;

    invoke-direct {v2, p0}, Landroid/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 272
    .local v2, guide:Landroid/widget/GuidePopupWindow;
    const v3, 0x7f070039

    invoke-virtual {v2, v3}, Landroid/widget/GuidePopupWindow;->setGuideText(I)V

    .line 273
    invoke-virtual {v2, v6}, Landroid/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 274
    invoke-virtual {v2, v6}, Landroid/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 275
    invoke-virtual {v2, v0, v5, v5, v5}, Landroid/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 276
    iput-object v2, p0, Lcom/android/deskclock/AlarmClock;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    .line 278
    iget-object v3, p0, Lcom/android/deskclock/AlarmClock;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 279
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "correct_time_first"

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 280
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    .end local v0           #currentTime:Landroid/view/View;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #guide:Landroid/widget/GuidePopupWindow;
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 163
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v1, v1

    .line 165
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 205
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 171
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/android/deskclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/android/deskclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/deskclock/AlarmClock$1;

    invoke-direct {v3, p0, v1}, Lcom/android/deskclock/AlarmClock$1;-><init>(Lcom/android/deskclock/AlarmClock;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v4

    .line 183
    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 188
    new-instance v1, Lcom/android/deskclock/Alarm;

    invoke-direct {v1, v0}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 189
    iget v0, v1, Lcom/android/deskclock/Alarm;->id:I

    iget-boolean v2, v1, Lcom/android/deskclock/Alarm;->enabled:Z

    if-nez v2, :cond_2

    move v2, v4

    :goto_1
    invoke-static {p0, v0, v2}, Lcom/android/deskclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 190
    iget-boolean v0, v1, Lcom/android/deskclock/Alarm;->enabled:Z

    if-nez v0, :cond_1

    .line 191
    iget v0, v1, Lcom/android/deskclock/Alarm;->hour:I

    iget v2, v1, Lcom/android/deskclock/Alarm;->minutes:I

    iget-object v1, v1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-static {p0, v0, v2, v1}, Lcom/android/deskclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/android/deskclock/Alarm$DaysOfWeek;)V

    :cond_1
    move v0, v4

    .line 194
    goto :goto_0

    .line 189
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 197
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/SetAlarm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    const-string v2, "alarm_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 200
    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x7f0b0031
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 212
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    .line 213
    const-string v0, "AlarmClock"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/AlarmClock;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClock;->mPrefs:Landroid/content/SharedPreferences;

    .line 214
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    .line 216
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->updateLayout()V

    .line 217
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v8

    const v9, 0x7f0a0001

    invoke-virtual {v8, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 302
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0

    .line 303
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v8, p0, Lcom/android/deskclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    iget v9, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 305
    .local v2, c:Landroid/database/Cursor;
    new-instance v1, Lcom/android/deskclock/Alarm;

    invoke-direct {v1, v2}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 308
    .local v1, alarm:Lcom/android/deskclock/Alarm;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 309
    .local v3, cal:Ljava/util/Calendar;
    const/16 v8, 0xb

    iget v9, v1, Lcom/android/deskclock/Alarm;->hour:I

    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 310
    const/16 v8, 0xc

    iget v9, v1, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 311
    invoke-static {p0, v3}, Lcom/android/deskclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, time:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/deskclock/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    const v9, 0x7f030004

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 315
    .local v7, v:Landroid/view/View;
    const v8, 0x7f0b0015

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 316
    .local v5, textView:Landroid/widget/TextView;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const v8, 0x7f0b0016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #textView:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 318
    .restart local v5       #textView:Landroid/widget/TextView;
    iget-object v8, v1, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 323
    iget-boolean v8, v1, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v8, :cond_0

    .line 324
    const v8, 0x7f0b0031

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f070008

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 326
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmClock;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 349
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 291
    invoke-static {}, Lcom/android/deskclock/ToastMaster;->cancelToast()V

    .line 292
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 293
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/SetAlarm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    const-string v1, "alarm_id"

    long-to-int v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    .line 356
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 330
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 343
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 332
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 333
    goto :goto_0

    .line 335
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/deskclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 336
    goto :goto_0

    .line 338
    :pswitch_2
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClock;->addNewAlarm()V

    move v0, v2

    .line 339
    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x7f0b002e
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/deskclock/AlarmClock;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    invoke-virtual {v0}, Landroid/widget/GuidePopupWindow;->dismiss()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClock;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    .line 263
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 264
    return-void
.end method
