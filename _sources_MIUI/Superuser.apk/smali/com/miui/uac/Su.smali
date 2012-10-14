.class public Lcom/miui/uac/Su;
.super Landroid/app/TabActivity;
.source "Su.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/uac/Su$CheckForMaliciousApps;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaliciousAppPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/uac/Su;->mMaliciousAppPackage:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/miui/uac/Su;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/uac/Su;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/uac/Su;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/uac/Su;->mMaliciousAppPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/uac/Su;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/uac/Su;->mMaliciousAppPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/uac/Su;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/miui/uac/Su;->maliciousAppFound(Ljava/lang/String;)V

    return-void
.end method

.method private maliciousAppFound(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/uac/Su;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060006

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/uac/Su;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060009

    new-instance v2, Lcom/miui/uac/Su$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/uac/Su$2;-><init>(Lcom/miui/uac/Su;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/miui/uac/Su$1;

    invoke-direct {v2, p0}, Lcom/miui/uac/Su$1;-><init>(Lcom/miui/uac/Su;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 64
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iput-object p0, p0, Lcom/miui/uac/Su;->mContext:Landroid/content/Context;

    .line 28
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/miui/uac/Su;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/uac/Su;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/miui/uac/AppListActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 35
    const-string v2, "apps"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f06000b

    invoke-virtual {p0, v3}, Lcom/miui/uac/Su;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 39
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/miui/uac/LogActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 40
    const-string v2, "log"

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f06000c

    invoke-virtual {p0, v3}, Lcom/miui/uac/Su;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 44
    new-instance v0, Lcom/miui/uac/Su$CheckForMaliciousApps;

    invoke-direct {v0, p0}, Lcom/miui/uac/Su$CheckForMaliciousApps;-><init>(Lcom/miui/uac/Su;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/uac/Su$CheckForMaliciousApps;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method
