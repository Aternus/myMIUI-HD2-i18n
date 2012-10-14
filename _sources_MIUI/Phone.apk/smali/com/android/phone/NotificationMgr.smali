.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$1;,
        Lcom/android/phone/NotificationMgr$QueryHandler;,
        Lcom/android/phone/NotificationMgr$StatusBarMgr;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final DBG:Z

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static sMe:Lcom/android/phone/NotificationMgr;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCallRecordNotificationId:I

.field private mInCallResId:I

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mNumberMissedCalls:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

.field private mSelectedUnavailableNotify:Z

.field private mShowingCallRcordIcon:Z

.field private mShowingMuteIcon:Z

.field private mShowingSpeakerphoneIcon:Z

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

.field private mToast:Landroid/widget/Toast;

.field private mVmNumberRetriesRemaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "number"

    .line 62
    sput-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v6, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    .line 265
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v6, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v1, 0x2710

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mCurrentCallRecordNotificationId:I

    .line 101
    iput v2, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 108
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 113
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 121
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 122
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 125
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    .line 127
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 128
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 129
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 130
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    return-object v0
.end method

.method private cancelInCall()V
    .locals 3

    .prologue
    .line 871
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelInCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 872
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 873
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 874
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 875
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 878
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method private cancelMute()V
    .locals 2

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 552
    :cond_0
    return-void
.end method

.method private cancelNetworkSelection()V
    .locals 2

    .prologue
    .line 1126
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelNetworkSelection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1128
    return-void
.end method

.method private static configureLedNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 7
    .parameter "context"
    .parameter "note"

    .prologue
    .line 401
    iget v5, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p1, Landroid/app/Notification;->flags:I

    .line 402
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 404
    .local v1, defaultColor:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 406
    .local v2, defaultFreq:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_breathing_light_color"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 408
    .local v0, color:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_breathing_light_freq"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 410
    .local v3, freq:I
    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 411
    invoke-static {v3}, Landroid/app/Notification;->getLedPwmOffOn(I)[I

    move-result-object v4

    .line 412
    .local v4, offOn:[I
    const/4 v5, 0x0

    aget v5, v4, v5

    iput v5, p1, Landroid/app/Notification;->ledOffMS:I

    .line 413
    const/4 v5, 0x1

    aget v5, v4, v5

    iput v5, p1, Landroid/app/Notification;->ledOnMS:I

    .line 414
    iget v5, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x5

    iput v5, p1, Landroid/app/Notification;->defaults:I

    .line 415
    return-void
.end method

.method static getDefault()Lcom/android/phone/NotificationMgr;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 133
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    .line 136
    sget-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    invoke-direct {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 137
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1209
    const-string v0, "NotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    return-void
.end method

.method private notifyMute()V
    .locals 4

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    const v2, 0x1080076

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 545
    :cond_0
    return-void
.end method

.method private sendApplicationUpdateMessage()V
    .locals 3

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.update_application_message"

    iget v2, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v1, "android.intent.extra.update_application_flatten_name"

    const-string v2, "com.android.contacts/.TwelveKeyDialer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 494
    return-void

    .line 489
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showNetworkSelection(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1095
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNetworkSelection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0141

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0142

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1102
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1103
    const v3, 0x108008a

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 1104
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 1105
    const/4 v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1106
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1109
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1110
    const/high16 v4, 0x1020

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1113
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.NetworkSetting"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1115
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1117
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1119
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1120
    return-void
.end method

.method private updateNotificationsAtStartup()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 240
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateNotificationsAtStartup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 243
    :cond_0
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .local v8, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const-string v0, " AND new=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- start call log query..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- updating in-call notification at startup..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 262
    return-void
.end method


# virtual methods
.method cancelCallInProgressNotification()V
    .locals 2

    .prologue
    .line 884
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelCallInProgressNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 885
    :cond_0
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    if-nez v0, :cond_1

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCallInProgressNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 890
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    goto :goto_0
.end method

.method cancelCallRecord()V
    .locals 2

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingCallRcordIcon:Z

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "call_record"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingCallRcordIcon:Z

    .line 508
    :cond_0
    return-void
.end method

.method cancelMissedCallNotification()V
    .locals 2

    .prologue
    .line 482
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 483
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 484
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->sendApplicationUpdateMessage()V

    .line 485
    return-void
.end method

.method cancelSpeakerphone()V
    .locals 2

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 522
    :cond_0
    return-void
.end method

.method getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/android/phone/NotificationMgr$StatusBarMgr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$StatusBarMgr;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    return-object v0
.end method

.method hideDataDisconnectedRoaming()V
    .locals 2

    .prologue
    .line 1086
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hideDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1088
    return-void
.end method

.method notifyCallRecord()V
    .locals 4

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingCallRcordIcon:Z

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "call_record"

    const v2, 0x108009e

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingCallRcordIcon:Z

    .line 501
    :cond_0
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"

    .prologue
    .line 430
    iget v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 434
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    move-object v9, p1

    .line 450
    .local v9, callName:Ljava/lang/String;
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 451
    const v11, 0x7f0c0136

    .line 452
    .local v11, titleResId:I
    move-object v7, v9

    .line 460
    .local v7, expandedText:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v8

    .line 463
    .local v8, intent:Landroid/content/Intent;
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x108007f

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0139

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 472
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 474
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 477
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->sendApplicationUpdateMessage()V

    .line 478
    return-void

    .line 436
    .end local v0           #notification:Landroid/app/Notification;
    .end local v7           #expandedText:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #callName:Ljava/lang/String;
    .end local v11           #titleResId:I
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 437
    move-object v9, p2

    .line 438
    .restart local v9       #callName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 439
    .local v10, telocation:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 444
    .end local v9           #callName:Ljava/lang/String;
    .end local v10           #telocation:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #callName:Ljava/lang/String;
    goto :goto_0

    .line 454
    :cond_3
    const v11, 0x7f0c0137

    .line 455
    .restart local v11       #titleResId:I
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0138

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #expandedText:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method notifySpeakerphone()V
    .locals 4

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBar:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    const v2, 0x1080087

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 515
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 846
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallerInfo query complete (for NotificationMgr), updating in-call notification.."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 848
    :cond_0
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 849
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- ci: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 851
    :cond_2
    if-ne p2, p0, :cond_5

    .line 857
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- compactName is now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 862
    :cond_3
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "- updating notification after query complete..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 863
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 868
    :goto_0
    return-void

    .line 865
    :cond_5
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: caller-id query from unknown source! cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method postTransientNotification(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "notifyId"
    .parameter "msg"

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 1205
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1206
    return-void
.end method

.method showDataDisconnectedRoaming()V
    .locals 10

    .prologue
    .line 1063
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1065
    :cond_0
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v1, Landroid/provider/Settings;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1068
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0089

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0c008c

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1077
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1080
    return-void
.end method

.method updateCallRecordNotification(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1168
    const/4 v0, 0x0

    .line 1169
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1172
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1173
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callrec://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1178
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1180
    new-instance v1, Landroid/app/Notification;

    const v2, 0x108009e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, p2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1185
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    const v4, 0x7f0c01f8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1190
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1191
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 1192
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentCallRecordNotificationId:I

    const v2, 0x7ffffffe

    if-lt v0, v2, :cond_1

    .line 1193
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentCallRecordNotificationId:I

    .line 1195
    :cond_1
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentCallRecordNotificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentCallRecordNotificationId:I

    .line 1196
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/phone/NotificationMgr;->mCurrentCallRecordNotificationId:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1197
    return-void

    .line 1185
    :cond_2
    const v4, 0x7f0c01fa

    goto :goto_0
.end method

.method updateCfi(Z)V
    .locals 12
    .parameter "visible"

    .prologue
    const/4 v11, 0x6

    .line 1007
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCfi(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1008
    :cond_0
    if-eqz p1, :cond_1

    .line 1021
    const/4 v9, 0x1

    .line 1023
    .local v9, showExpandedNotification:Z
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v8, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v8, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1025
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0200b3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0049

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0c004b

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1047
    .local v0, notification:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1049
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1, v11, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1055
    .end local v0           #notification:Landroid/app/Notification;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #showExpandedNotification:Z
    :goto_0
    return-void

    .line 1053
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method updateInCallNotification()V
    .locals 32

    .prologue
    .line 575
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "updateInCallNotification()..."

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 577
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_2

    .line 578
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 839
    :cond_1
    :goto_0
    return-void

    .line 582
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    .line 583
    .local v10, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v22

    .line 584
    .local v22, hasRingingCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v20

    .line 585
    .local v20, hasActiveCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v21

    .line 586
    .local v21, hasHoldingCall:Z
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_3

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasRingingCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 588
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasActiveCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 589
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - hasHoldingCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 595
    :cond_3
    iget-object v5, v10, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getCdmaVoicePrivacyState()Z

    move-result v17

    .line 596
    .local v17, enhancedVoicePrivacy:Z
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInCallNotification: enhancedVoicePrivacy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 598
    :cond_4
    if-eqz v22, :cond_b

    .line 600
    const v26, 0x7f0200b5

    .line 629
    .local v26, resId:I
    :goto_1
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- Updating status bar icon: resId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 630
    :cond_5
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 633
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move/from16 v18, v0

    .line 644
    .local v18, expandedViewIcon:I
    if-eqz v22, :cond_11

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 651
    .local v14, currentCall:Lcom/android/internal/telephony/Call;
    :goto_2
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v16

    .line 653
    .local v16, currentConn:Lcom/android/internal/telephony/Connection;
    new-instance v25, Landroid/app/Notification;

    invoke-direct/range {v25 .. v25}, Landroid/app/Notification;-><init>()V

    .line 654
    .local v25, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v25

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 655
    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v5, v0

    or-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, v25

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 665
    .local v23, inCallPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 674
    new-instance v4, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030015

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 676
    .local v4, contentView:Landroid/widget/RemoteViews;
    const v5, 0x7f0700a8

    move-object v0, v4

    move v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 678
    const-wide/16 v6, 0x0

    .line 679
    .local v6, chronometerBaseTime:J
    sget-object v15, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 683
    .local v15, currentCallState:Lcom/android/internal/telephony/Call$State;
    if-eqz v16, :cond_17

    .line 693
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v11

    .line 694
    .local v11, callDurationMsec:J
    const-wide/16 v28, 0x0

    cmp-long v5, v11, v28

    if-nez v5, :cond_13

    .line 696
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->getRingDurationMillis()J

    move-result-wide v30

    sub-long v6, v28, v30

    .line 703
    :goto_3
    if-eqz v22, :cond_14

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c013c

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 710
    .local v8, expandedViewLine1:Ljava/lang/String;
    sget-object v15, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    .line 730
    :goto_4
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- Updating expanded view: line 1 \'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 735
    :cond_6
    const v5, 0x7f0700a9

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 748
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    .end local v11           #callDurationMsec:J
    :cond_7
    :goto_5
    const-string v19, ""

    .line 753
    .local v19, expandedViewLine2:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c0131

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 768
    :goto_6
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- Updating expanded view: line 2 \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 769
    :cond_8
    const v5, 0x7f0700aa

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 770
    move-object v0, v4

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 780
    if-eqz v22, :cond_9

    .line 788
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v27

    .line 813
    .local v27, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v8, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v8, :cond_9

    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_9

    .line 814
    const-string v5, "NotificationMgr"

    const-string v8, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v5, v0

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 822
    .end local v27           #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_9
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 823
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object v5, v0

    const/4 v8, 0x2

    move-object v0, v5

    move v1, v8

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    .line 832
    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v15, v5, :cond_1

    .line 834
    new-instance v24, Landroid/content/Intent;

    const-string v5, "android.intent.action.LEAVE_INCALL_SCREEN_DURING_CALL"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 835
    .local v24, intent:Landroid/content/Intent;
    const-string v5, "call_state"

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    const-string v5, "base_time"

    move-object/from16 v0, v24

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 837
    const-string v5, "android.permission.READ_PHONE_STATE"

    move-object v0, v10

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 601
    .end local v4           #contentView:Landroid/widget/RemoteViews;
    .end local v6           #chronometerBaseTime:J
    .end local v14           #currentCall:Lcom/android/internal/telephony/Call;
    .end local v15           #currentCallState:Lcom/android/internal/telephony/Call$State;
    .end local v16           #currentConn:Lcom/android/internal/telephony/Connection;
    .end local v18           #expandedViewIcon:I
    .end local v19           #expandedViewLine2:Ljava/lang/String;
    .end local v23           #inCallPendingIntent:Landroid/app/PendingIntent;
    .end local v24           #intent:Landroid/content/Intent;
    .end local v25           #notification:Landroid/app/Notification;
    .end local v26           #resId:I
    :cond_b
    if-nez v20, :cond_d

    if-eqz v21, :cond_d

    .line 603
    if-eqz v17, :cond_c

    .line 604
    const v26, 0x7f0200b8

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 606
    .end local v26           #resId:I
    :cond_c
    const v26, 0x7f0200b4

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 608
    .end local v26           #resId:I
    :cond_d
    invoke-virtual {v10}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 610
    if-eqz v17, :cond_e

    .line 611
    const v26, 0x7f0200b7

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 613
    .end local v26           #resId:I
    :cond_e
    const v26, 0x7f0200b2

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 616
    .end local v26           #resId:I
    :cond_f
    if-eqz v17, :cond_10

    .line 617
    const v26, 0x7f0200b6

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 619
    .end local v26           #resId:I
    :cond_10
    const v26, 0x7f0200b1

    .restart local v26       #resId:I
    goto/16 :goto_1

    .line 646
    .restart local v18       #expandedViewIcon:I
    :cond_11
    if-eqz v20, :cond_12

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .restart local v14       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 649
    .end local v14           #currentCall:Lcom/android/internal/telephony/Call;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .restart local v14       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 698
    .restart local v4       #contentView:Landroid/widget/RemoteViews;
    .restart local v6       #chronometerBaseTime:J
    .restart local v11       #callDurationMsec:J
    .restart local v15       #currentCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v16       #currentConn:Lcom/android/internal/telephony/Connection;
    .restart local v23       #inCallPendingIntent:Landroid/app/PendingIntent;
    .restart local v25       #notification:Landroid/app/Notification;
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    sub-long v6, v28, v11

    goto/16 :goto_3

    .line 711
    :cond_14
    if-eqz v21, :cond_15

    if-nez v20, :cond_15

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c013b

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 715
    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    sget-object v15, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto/16 :goto_4

    .line 719
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_15
    const-wide/16 v28, 0x0

    cmp-long v5, v11, v28

    if-lez v5, :cond_16

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c013a

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 722
    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    sget-object v15, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto/16 :goto_4

    .line 724
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v8, 0x7f0c018f

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 726
    .restart local v8       #expandedViewLine1:Ljava/lang/String;
    sget-object v15, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto/16 :goto_4

    .line 739
    .end local v8           #expandedViewLine1:Ljava/lang/String;
    .end local v11           #callDurationMsec:J
    :cond_17
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_7

    .line 740
    const-string v5, "NotificationMgr"

    const-string v8, "updateInCallNotification: null connection, can\'t set exp view line 1."

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 758
    .restart local v19       #expandedViewLine2:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v13

    .line 760
    .local v13, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v5, v13, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object v8, v0

    invoke-static {v5, v8}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_6

    .line 789
    .end local v13           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :catch_0
    move-exception v5

    goto/16 :goto_7
.end method

.method updateMuteNotification()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateMuteNotification: MUTED"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    .line 566
    :goto_0
    return-void

    .line 563
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "updateMuteNotification: not muted (or not offhook)"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 564
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_0
.end method

.method updateMwi(Z)V
    .locals 13
    .parameter "visible"

    .prologue
    .line 899
    sget-boolean v9, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMwi(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 900
    :cond_0
    if-eqz p1, :cond_8

    .line 901
    const v5, 0x108007e

    .line 913
    .local v5, resId:I
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0c013d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, notificationTitle:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v8

    .line 915
    .local v8, vmNumber:Ljava/lang/String;
    sget-boolean v9, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- got vm number: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 932
    :cond_1
    if-nez v8, :cond_5

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v9

    if-nez v9, :cond_5

    .line 933
    sget-boolean v9, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "- Null vm number: SIM records not loaded (yet)..."

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 946
    :cond_2
    iget v9, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    const/4 v10, 0x1

    sub-int v10, v9, v10

    iput v10, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v9, :cond_4

    .line 947
    sget-boolean v9, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "  - Retrying in 10000 msec..."

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 948
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v10, v11}, Lcom/android/phone/CallNotifier;->sendMwiChangedDelayed(J)V

    .line 999
    .end local v3           #notificationTitle:Ljava/lang/String;
    .end local v5           #resId:I
    .end local v8           #vmNumber:Ljava/lang/String;
    :goto_0
    return-void

    .line 952
    .restart local v3       #notificationTitle:Ljava/lang/String;
    .restart local v5       #resId:I
    .restart local v8       #vmNumber:Ljava/lang/String;
    :cond_4
    const-string v9, "NotificationMgr"

    const-string v10, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_5
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v9}, Lcom/android/phone/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 960
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v7

    .line 961
    .local v7, vmCount:I
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0c013e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 962
    .local v6, titleFormat:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 966
    .end local v6           #titleFormat:Ljava/lang/String;
    .end local v7           #vmCount:I
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 967
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0c0140

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 975
    .local v2, notificationText:Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL"

    const-string v10, "voicemail"

    const-string v11, ""

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 977
    .local v0, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 979
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v1, v5, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 986
    .local v1, notification:Landroid/app/Notification;
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9, v3, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 992
    iget v9, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v1, Landroid/app/Notification;->defaults:I

    .line 993
    iget v9, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v1, Landroid/app/Notification;->flags:I

    .line 994
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v1}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 995
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 970
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #notificationText:Ljava/lang/String;
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    :cond_7
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0c013f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #notificationText:Ljava/lang/String;
    goto :goto_1

    .line 997
    .end local v2           #notificationText:Ljava/lang/String;
    .end local v3           #notificationTitle:Ljava/lang/String;
    .end local v5           #resId:I
    .end local v8           #vmNumber:Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method updateNetworkSelection(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v4, ""

    .line 1136
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1142
    const-string v1, "network_selection_name_key"

    const-string v2, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1145
    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1149
    :goto_0
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkSelection()...state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1152
    :cond_0
    if-ne p1, v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1154
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-nez v1, :cond_1

    .line 1155
    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;)V

    .line 1156
    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 1165
    :cond_1
    :goto_1
    return-void

    .line 1159
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v0, :cond_1

    .line 1160
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 1161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method updateSpeakerNotification()V
    .locals 3

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 531
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "updateSpeakerNotification: speaker ON"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 538
    :goto_0
    return-void

    .line 535
    :cond_1
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "updateSpeakerNotification: speaker OFF (or not offhook)"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 536
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method
