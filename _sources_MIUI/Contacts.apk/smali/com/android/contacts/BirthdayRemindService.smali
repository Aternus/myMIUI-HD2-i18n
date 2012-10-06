.class public Lcom/android/contacts/BirthdayRemindService;
.super Landroid/app/Service;
.source "BirthdayRemindService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/BirthdayRemindService$RemindThread;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contacts._id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/BirthdayRemindService;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/contacts/BirthdayRemindService;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, isRunning:Z
    const-string v3, "com.android.contacts.remind_birthday"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/contacts/BirthdayRemindService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    .local v1, context:Landroid/content/Context;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 57
    .local v0, cal:Ljava/util/Calendar;
    new-instance v3, Lcom/android/contacts/BirthdayRemindService$RemindThread;

    invoke-direct {v3, p0, v1, p3, v0}, Lcom/android/contacts/BirthdayRemindService$RemindThread;-><init>(Lcom/android/contacts/BirthdayRemindService;Landroid/content/Context;ILjava/util/Calendar;)V

    invoke-virtual {v3}, Lcom/android/contacts/BirthdayRemindService$RemindThread;->start()V

    .line 58
    const/4 v2, 0x1

    .line 61
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    if-nez v2, :cond_1

    .line 62
    invoke-virtual {p0, p3}, Lcom/android/contacts/BirthdayRemindService;->stopSelf(I)V

    .line 65
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    return v3
.end method
