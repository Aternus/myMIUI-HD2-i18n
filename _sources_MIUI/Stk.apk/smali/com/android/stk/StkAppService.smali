.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$1;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$DelayedCmd;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;
    }
.end annotation


# static fields
.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private lastSelectedItem:Ljava/lang/String;

.field private launchBrowser:Z

.field private mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

.field private mCmdInProgress:Z

.field private mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/stk/StkAppService$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

.field private mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mMenuIsVisibile:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private volatile mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

.field private responseNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 64
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 65
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 66
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 67
    iput-object v1, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 68
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 71
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 72
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 73
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 74
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 248
    return-void
.end method

.method static synthetic access$100(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleSessionEnd()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleDelayedCmd()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/gsm/stk/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/gsm/stk/Menu;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    return-void
.end method

.method private callDelayedMsg()V
    .locals 2

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 347
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 348
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 349
    return-void
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I
    .locals 3
    .parameter "userAction"

    .prologue
    const/4 v2, 0x0

    .line 566
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/high16 v0, 0x4

    goto :goto_1
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private getItemName(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    const/4 v4, 0x0

    .line 748
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    .line 749
    .local v2, menu:Lcom/android/internal/telephony/gsm/stk/Menu;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 757
    :goto_0
    return-object v3

    .line 752
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/Item;

    .line 753
    .local v1, item:Lcom/android/internal/telephony/gsm/stk/Item;
    iget v3, v1, Lcom/android/internal/telephony/gsm/stk/Item;->id:I

    if-ne v3, p1, :cond_1

    .line 754
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/stk/Item;->text:Ljava/lang/String;

    goto :goto_0

    .end local v1           #item:Lcom/android/internal/telephony/gsm/stk/Item;
    :cond_2
    move-object v3, v4

    .line 757
    goto :goto_0
.end method

.method private handleCmd(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V
    .locals 5
    .parameter "cmdMsg"

    .prologue
    const/4 v4, 0x0

    .line 375
    if-nez p1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iput-object p1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 380
    const/4 v1, 0x1

    .line 382
    .local v1, waitForUsersResponse:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    sget-object v2, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 442
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 443
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_6

    .line 444
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    goto :goto_0

    .line 385
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v0

    .line 386
    .local v0, msg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 387
    iget-object v2, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 388
    iget-object v2, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    .line 395
    :goto_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchTextDialog()V

    goto :goto_1

    .line 389
    :cond_3
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v2, :cond_4

    .line 390
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 393
    :cond_4
    const-string v2, ""

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 398
    .end local v0           #msg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 399
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/gsm/stk/Menu;)V

    goto :goto_1

    .line 402
    :pswitch_2
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 403
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 404
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->removeMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 405
    const-string v2, "Uninstall App"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    iput-object v4, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 407
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    .line 412
    :goto_3
    iget-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    if-eqz v2, :cond_2

    .line 413
    invoke-direct {p0, v4}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/gsm/stk/Menu;)V

    goto :goto_1

    .line 409
    :cond_5
    const-string v2, "Install App"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;)V

    goto :goto_3

    .line 418
    :pswitch_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchInputActivity()V

    goto :goto_1

    .line 421
    :pswitch_4
    const/4 v1, 0x0

    .line 422
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchIdleText()V

    goto :goto_1

    .line 428
    :pswitch_5
    const/4 v1, 0x0

    .line 429
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchEventMessage()V

    goto :goto_1

    .line 432
    :pswitch_6
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    goto/16 :goto_1

    .line 435
    :pswitch_7
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    goto/16 :goto_1

    .line 438
    :pswitch_8
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchToneDialog()V

    goto/16 :goto_1

    .line 446
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;)V
    .locals 8
    .parameter "args"

    .prologue
    .line 452
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-nez v6, :cond_0

    .line 552
    :goto_0
    return-void

    .line 455
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    .line 458
    .local v4, resMsg:Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;
    const-string v6, "help"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 460
    .local v1, helpRequired:Z
    const-string v6, "response id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 544
    :pswitch_0
    const-string v6, "Unknown result id"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :pswitch_1
    const-string v6, "RES_ID_MENU_SELECTION"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    const-string v6, "menu selection"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 464
    .local v3, menuSelection:I
    sget-object v6, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 547
    .end local v3           #menuSelection:I
    :cond_1
    :goto_1
    :pswitch_2
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

    if-nez v6, :cond_2

    .line 548
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/StkService;->getInstance()Lcom/android/internal/telephony/gsm/stk/AppInterface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

    .line 551
    :cond_2
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

    invoke-interface {v6, v4}, Lcom/android/internal/telephony/gsm/stk/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V

    goto :goto_0

    .line 467
    .restart local v3       #menuSelection:I
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/android/stk/StkAppService;->getItemName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 468
    if-eqz v1, :cond_3

    .line 469
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    .line 473
    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setMenuSelection(I)V

    goto :goto_1

    .line 471
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_2

    .line 478
    .end local v3           #menuSelection:I
    :pswitch_4
    const-string v6, "RES_ID_INPUT"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    const-string v6, "input"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, input:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    if-eqz v6, :cond_4

    .line 481
    const-string v6, "YES"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 483
    .local v5, yesNoSelection:Z
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setYesNo(Z)V

    goto :goto_1

    .line 485
    .end local v5           #yesNoSelection:Z
    :cond_4
    if-eqz v1, :cond_5

    .line 486
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_1

    .line 488
    :cond_5
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    .line 489
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setInput(Ljava/lang/String;)V

    goto :goto_1

    .line 494
    .end local v2           #input:Ljava/lang/String;
    :pswitch_5
    const-string v6, "RES_ID_CONFIRM"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    const-string v6, "confirm"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 496
    .local v0, confirmed:Z
    sget-object v6, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    :pswitch_6
    goto :goto_1

    .line 498
    :pswitch_7
    if-eqz v0, :cond_6

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    :goto_3
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_1

    :cond_6
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_3

    .line 502
    :pswitch_8
    if-eqz v0, :cond_7

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    :goto_4
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    .line 504
    if-eqz v0, :cond_1

    .line 505
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 506
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    goto/16 :goto_1

    .line 502
    :cond_7
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_4

    .line 510
    :pswitch_9
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    .line 511
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setConfirmation(Z)V

    .line 512
    if-eqz v0, :cond_1

    .line 513
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchCallMsg()V

    goto/16 :goto_1

    .line 519
    .end local v0           #confirmed:Z
    :pswitch_a
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_1

    .line 522
    :pswitch_b
    const-string v6, "RES_ID_BACKWARD"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_1

    .line 526
    :pswitch_c
    const-string v6, "RES_ID_END_SESSION"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_1

    .line 530
    :pswitch_d
    const-string v6, "RES_ID_TIMEOUT"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->value()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->value()I

    move-result v7

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    if-nez v6, :cond_8

    .line 538
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_1

    .line 540
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto/16 :goto_1

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 464
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 496
    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private handleDelayedCmd()V
    .locals 2

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$DelayedCmd;

    .line 334
    .local v0, cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    iget v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_0

    .line 343
    .end local v0           #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 336
    .restart local v0       #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :pswitch_1
    iget-object v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    goto :goto_0

    .line 339
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleSessionEnd()V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 353
    iput-object v2, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 359
    :cond_0
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    if-eqz v0, :cond_1

    .line 360
    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/gsm/stk/Menu;)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    .line 368
    :goto_0
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    if-eqz v0, :cond_2

    .line 369
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 370
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->launchBrowser(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;)V

    .line 372
    :cond_2
    return-void

    .line 365
    :cond_3
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto :goto_0
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 318
    sget-object v0, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 328
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 325
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private launchBrowser(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;)V
    .locals 6
    .parameter "settings"

    .prologue
    const/high16 v4, 0x400

    const-string v5, "android.intent.action.VIEW"

    .line 650
    if-nez p1, :cond_0

    .line 686
    :goto_0
    return-void

    .line 654
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 655
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, data:Landroid/net/Uri;
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 661
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 663
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 664
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 665
    sget-object v2, Lcom/android/stk/StkAppService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$LaunchBrowserMode:[I

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 679
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 684
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v2

    goto :goto_0

    .line 667
    :pswitch_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 671
    :pswitch_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 675
    :pswitch_2
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 665
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private launchCallMsg()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 689
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v2

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 690
    .local v0, msg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v2, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    .line 695
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 697
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x50

    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 698
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/gsm/stk/TextMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    .line 640
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 645
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 646
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 647
    return-void
.end method

.method private launchEventMessage()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 611
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v2

    .line 612
    .local v2, msg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    new-instance v3, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 616
    .local v3, toast:Landroid/widget/Toast;
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 618
    .local v0, inflate:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 619
    .local v5, v:Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 621
    .local v4, tv:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 623
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 624
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 628
    :goto_1
    iget-boolean v6, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    if-nez v6, :cond_2

    .line 629
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :cond_2
    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 633
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 634
    const/16 v6, 0x50

    invoke-virtual {v3, v6, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 635
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 626
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private launchIdleText()V
    .locals 9

    .prologue
    const v8, 0x10805c7

    const v7, 0x1020006

    const/16 v6, 0x14d

    const/4 v5, 0x0

    .line 702
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 734
    :goto_0
    return-void

    .line 706
    :cond_1
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 707
    new-instance v2, Landroid/widget/RemoteViews;

    const-string v3, "com.android.stk"

    const v4, 0x1090085

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 711
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 712
    iput v8, v1, Landroid/app/Notification;->icon:I

    .line 714
    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    if-nez v3, :cond_2

    .line 715
    iget-object v3, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 716
    const v3, 0x1020041

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 719
    :cond_2
    iget-object v3, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 720
    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 728
    :goto_1
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 729
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v5, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 732
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 723
    :cond_3
    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private launchInputActivity()V
    .locals 3

    .prologue
    .line 591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 594
    const-string v1, "com.android.stk"

    const-string v2, "com.android.stk.StkInputActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v1, "INPUT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 596
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 597
    return-void
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/gsm/stk/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const-string v4, "STATE"

    .line 571
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk"

    const-string v3, "com.android.stk.StkMenuActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const/high16 v0, 0x1400

    .line 575
    .local v0, intentFlags:I
    if-nez p1, :cond_0

    .line 577
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 579
    const-string v2, "STATE"

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 587
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 588
    return-void

    .line 582
    :cond_0
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 584
    const-string v2, "STATE"

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchTextDialog()V
    .locals 3

    .prologue
    .line 600
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 601
    const/high16 v1, 0x5880

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 606
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 608
    return-void
.end method

.method private launchToneDialog()V
    .locals 3

    .prologue
    .line 737
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/ToneDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 738
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 742
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 743
    const-string v1, "TONE"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getToneSettings()Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 744
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 745
    return-void
.end method

.method private removeMenu()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    .line 770
    :goto_0
    return v1

    .line 766
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 767
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    .line 768
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v4

    .line 770
    goto :goto_0
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 238
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v0, :cond_0

    .line 239
    monitor-enter p0

    .line 241
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 242
    :catch_0
    move-exception v0

    goto :goto_1

    .line 246
    :cond_0
    return-void
.end method


# virtual methods
.method getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    return-object v0
.end method

.method indicateMenuVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mMenuIsVisibile:Z

    .line 220
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/StkService;->getInstance()Lcom/android/internal/telephony/gsm/stk/AppInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

    .line 144
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/gsm/stk/AppInterface;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 147
    const-string v1, " Unable to get Service handle"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 152
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "Stk App Service"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 153
    .local v0, serviceThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 154
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 155
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 157
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 198
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 199
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 166
    if-nez p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 177
    .local v1, msg:Landroid/os/Message;
    const-string v2, "op"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 178
    iget v2, v1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 180
    :pswitch_0
    const-string v2, "cmd message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 192
    :goto_1
    :pswitch_1
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 183
    :pswitch_2
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 209
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    .line 210
    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    .line 212
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 213
    return-void
.end method
