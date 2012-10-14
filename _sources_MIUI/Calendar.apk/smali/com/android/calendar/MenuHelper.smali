.class public Lcom/android/calendar/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# static fields
.field public static final MENU_ACCOUNTS:I = 0xc

.field public static final MENU_AGENDA:I = 0x2

.field public static final MENU_DAY:I = 0x3

.field public static final MENU_EVENT_CREATE:I = 0x6

.field public static final MENU_EVENT_DELETE:I = 0x8

.field public static final MENU_EVENT_EDIT:I = 0x7

.field public static final MENU_EVENT_VIEW:I = 0x5

.field public static final MENU_GOTO_TODAY:I = 0x1

.field private static final MENU_GROUP_ACCOUNTS:I = 0x9

.field private static final MENU_GROUP_AGENDA:I = 0x1

.field private static final MENU_GROUP_DAY:I = 0x2

.field private static final MENU_GROUP_EVENT_CREATE:I = 0x5

.field private static final MENU_GROUP_MONTH:I = 0x4

.field private static final MENU_GROUP_PREFERENCES:I = 0x8

.field private static final MENU_GROUP_SELECT_CALENDARS:I = 0x7

.field private static final MENU_GROUP_TODAY:I = 0x6

.field private static final MENU_GROUP_WEEK:I = 0x3

.field public static final MENU_MONTH:I = 0x9

.field public static final MENU_PREFERENCES:I = 0xb

.field public static final MENU_SELECT_CALENDARS:I = 0xa

.field public static final MENU_WEEK:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreateOptionsMenu(Landroid/view/Menu;Z)Z
    .locals 7
    .parameter "menu"
    .parameter "hasAccount"

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const v1, 0x7f08000d

    invoke-interface {p0, v3, v2, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 99
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x108003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 100
    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 102
    const v1, 0x7f08000e

    invoke-interface {p0, v2, v6, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 103
    const v1, 0x1080058

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 104
    const/16 v1, 0x77

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 106
    const/16 v1, 0x9

    const v2, 0x7f08000f

    invoke-interface {p0, v6, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 107
    const v1, 0x1080044

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 108
    const/16 v1, 0x6d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 110
    const v1, 0x7f08000c

    invoke-interface {p0, v5, v3, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 111
    const v1, 0x1080034

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 112
    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 115
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    const/4 v1, 0x6

    const v2, 0x7f080014

    invoke-interface {p0, v1, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    .restart local v0       #item:Landroid/view/MenuItem;
    const v1, 0x1080054

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 117
    const/16 v1, 0x74

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 119
    if-eqz p1, :cond_1

    .line 120
    const/4 v1, 0x5

    const/4 v2, 0x6

    const v3, 0x7f080011

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 121
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 122
    const/16 v1, 0x6e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 124
    const/4 v1, 0x7

    const/16 v2, 0xa

    const v3, 0x7f080015

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 126
    const v1, 0x1080042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 129
    :cond_1
    if-nez p1, :cond_2

    .line 130
    const/16 v1, 0x9

    const/16 v2, 0xc

    const v3, 0x7f080017

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 131
    const v1, 0x10803fd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 132
    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 135
    :cond_2
    const/16 v1, 0x8

    const/16 v2, 0xb

    const v3, 0x7f080016

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 136
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 137
    const/16 v1, 0x70

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 139
    return v5
.end method

.method public static onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z
    .locals 10
    .parameter "activity"
    .parameter "item"
    .parameter "nav"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move v5, v9

    .line 189
    :goto_0
    return v5

    .line 145
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, intent:Landroid/content/Intent;
    const-class v5, Lcom/android/calendar/SelectCalendarsActivity;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v5, v8

    .line 148
    goto :goto_0

    .line 151
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->goToToday()V

    move v5, v8

    .line 152
    goto :goto_0

    .line 154
    :pswitch_3
    const-class v5, Lcom/android/calendar/CalendarPreferenceActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    move v5, v8

    .line 155
    goto :goto_0

    .line 157
    :pswitch_4
    const-class v5, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    move v5, v8

    .line 158
    goto :goto_0

    .line 160
    :pswitch_5
    const-class v5, Lcom/android/calendar/DayActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    move v5, v8

    .line 161
    goto :goto_0

    .line 163
    :pswitch_6
    const-class v5, Lcom/android/calendar/WeekActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    move v5, v8

    .line 164
    goto :goto_0

    .line 166
    :pswitch_7
    const-class v5, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    move v5, v8

    .line 167
    goto :goto_0

    .line 169
    :pswitch_8
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v3

    .line 170
    .local v3, startMillis:J
    const-wide/32 v5, 0x36ee80

    add-long v0, v3, v5

    .line 171
    .local v0, endMillis:J
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v5, Lcom/android/calendar/EditEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v5, "beginTime"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 174
    const-string v5, "endTime"

    invoke-virtual {v2, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 175
    const-string v5, "allDay"

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getAllDay()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v5, v8

    .line 177
    goto/16 :goto_0

    .line 180
    .end local v0           #endMillis:J
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #startMillis:J
    :pswitch_9
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .restart local v2       #intent:Landroid/content/Intent;
    const/high16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    const-string v5, "authorities"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "com.android.calendar"

    aput-object v7, v6, v9

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v5, v8

    .line 186
    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method public static onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;Z)V
    .locals 6
    .parameter "activity"
    .parameter "menu"
    .parameter "hasAccount"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    instance-of v0, p0, Lcom/android/calendar/AgendaActivity;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 56
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 62
    :goto_0
    instance-of v0, p0, Lcom/android/calendar/DayActivity;

    if-eqz v0, :cond_1

    .line 63
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 64
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 70
    :goto_1
    instance-of v0, p0, Lcom/android/calendar/WeekActivity;

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 72
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 78
    :goto_2
    instance-of v0, p0, Lcom/android/calendar/MonthActivity;

    if-eqz v0, :cond_3

    .line 79
    invoke-interface {p1, v5, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 80
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 86
    :goto_3
    instance-of v0, p0, Lcom/android/calendar/EventInfoActivity;

    if-eqz v0, :cond_4

    .line 87
    const/4 v0, 0x6

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 88
    const/4 v0, 0x6

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 93
    :goto_4
    return-void

    .line 58
    :cond_0
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 59
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 67
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_1

    .line 74
    :cond_2
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 75
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_2

    .line 82
    :cond_3
    invoke-interface {p1, v5, p2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 83
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_3

    .line 90
    :cond_4
    const/4 v0, 0x6

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 91
    const/4 v0, 0x6

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4
.end method
