.class Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;
.super Landroid/widget/CursorAdapter;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmTimeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmClock;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/AlarmClock;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    .line 88
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 89
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 101
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0, p3}, Lcom/android/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 103
    .local v0, alarm:Lcom/android/deskclock/Alarm;
    const v9, 0x7f0b000e

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 106
    .local v7, indicator:Landroid/view/View;
    const v9, 0x7f0b0010

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 108
    .local v1, barOnOff:Landroid/widget/ImageView;
    iget-boolean v9, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    if-eqz v9, :cond_0

    const v9, 0x7f020025

    :goto_0
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    const v9, 0x7f0b000f

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 114
    .local v3, clockOnOff:Landroid/widget/CheckBox;
    iget-boolean v9, v0, Lcom/android/deskclock/Alarm;->enabled:Z

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    new-instance v9, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter$1;

    invoke-direct {v9, p0, v3, v1, v0}, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter$1;-><init>(Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;Landroid/widget/CheckBox;Landroid/widget/ImageView;Lcom/android/deskclock/Alarm;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v9, 0x7f0b0011

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/DigitalClock;

    .line 129
    .local v6, digitalClock:Lcom/android/deskclock/DigitalClock;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 130
    .local v2, c:Ljava/util/Calendar;
    const/16 v9, 0xb

    iget v10, v0, Lcom/android/deskclock/Alarm;->hour:I

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 131
    const/16 v9, 0xc

    iget v10, v0, Lcom/android/deskclock/Alarm;->minutes:I

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 132
    invoke-virtual {v6, v2}, Lcom/android/deskclock/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 133
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Lcom/android/deskclock/DigitalClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    const v9, 0x7f0b0013

    invoke-virtual {v6, v9}, Lcom/android/deskclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 138
    .local v5, daysOfWeekView:Landroid/widget/TextView;
    iget-object v9, v0, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    iget-object v10, p0, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/deskclock/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, daysOfWeekStr:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 141
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_1
    const v9, 0x7f0b0012

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 150
    .local v8, labelView:Landroid/widget/TextView;
    iget-object v9, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    .line 151
    iget-object v9, v0, Lcom/android/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_2
    return-void

    .line 108
    .end local v2           #c:Ljava/util/Calendar;
    .end local v3           #clockOnOff:Landroid/widget/CheckBox;
    .end local v4           #daysOfWeekStr:Ljava/lang/String;
    .end local v5           #daysOfWeekView:Landroid/widget/TextView;
    .end local v6           #digitalClock:Lcom/android/deskclock/DigitalClock;
    .end local v8           #labelView:Landroid/widget/TextView;
    :cond_0
    const v9, 0x7f020024

    goto :goto_0

    .line 144
    .restart local v2       #c:Ljava/util/Calendar;
    .restart local v3       #clockOnOff:Landroid/widget/CheckBox;
    .restart local v4       #daysOfWeekStr:Ljava/lang/String;
    .restart local v5       #daysOfWeekView:Landroid/widget/TextView;
    .restart local v6       #digitalClock:Lcom/android/deskclock/DigitalClock;
    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 154
    .restart local v8       #labelView:Landroid/widget/TextView;
    :cond_2
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v2, p0, Lcom/android/deskclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/deskclock/AlarmClock;

    #getter for: Lcom/android/deskclock/AlarmClock;->mFactory:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClock;->access$000(Lcom/android/deskclock/AlarmClock;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, ret:Landroid/view/View;
    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DigitalClock;

    .line 96
    .local v0, digitalClock:Lcom/android/deskclock/DigitalClock;
    invoke-virtual {v0, v4}, Lcom/android/deskclock/DigitalClock;->setLive(Z)V

    .line 97
    return-object v1
.end method
