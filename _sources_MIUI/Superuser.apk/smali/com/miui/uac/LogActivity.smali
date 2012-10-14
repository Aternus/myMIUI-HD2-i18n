.class public Lcom/miui/uac/LogActivity;
.super Landroid/app/Activity;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/uac/LogActivity$LogItem;,
        Lcom/miui/uac/LogActivity$LogAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/uac/LogActivity$LogAdapter;

.field private mLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/uac/LogActivity$LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/miui/uac/LogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/uac/LogActivity;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/uac/LogActivity;)Lcom/miui/uac/LogActivity$LogAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/uac/LogActivity;->mAdapter:Lcom/miui/uac/LogActivity$LogAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/uac/LogActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/uac/LogActivity;->mLogList:Ljava/util/List;

    return-object v0
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    .line 95
    const-string v0, "guardian"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IPackageGuardian$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPackageGuardian;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/uac/LogActivity;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/uac/LogActivity;->mLogList:Ljava/util/List;

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/miui/uac/LogActivity;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    invoke-interface {v0}, Lcom/android/internal/app/IPackageGuardian;->getLogs()Ljava/util/List;

    move-result-object v11

    .line 101
    .local v11, permissionLogs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 102
    .local v12, size:I
    sub-int v8, v12, v1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 103
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 104
    .local v9, log:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, logSegements:[Ljava/lang/String;
    array-length v0, v10

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v13, p0, Lcom/miui/uac/LogActivity;->mLogList:Ljava/util/List;

    new-instance v0, Lcom/miui/uac/LogActivity$LogItem;

    const/4 v1, 0x2

    aget-object v2, v10, v1

    const/4 v1, 0x1

    aget-object v3, v10, v1

    const/4 v1, 0x0

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v1, 0x3

    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/uac/LogActivity$LogItem;-><init>(Lcom/miui/uac/LogActivity;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v10           #logSegements:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 115
    .end local v8           #i:I
    .end local v9           #log:Ljava/lang/String;
    .end local v11           #permissionLogs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #size:I
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 116
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "Superuser.LogActivity"

    const-string v1, "error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/miui/uac/LogActivity;->setContentView(I)V

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/miui/uac/LogActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 56
    .local v0, inflator:Landroid/view/MenuInflater;
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 57
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .end local p0
    :goto_0
    return v0

    .line 64
    .restart local p0
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x10803bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/miui/uac/LogActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/uac/LogActivity$1;-><init>(Lcom/miui/uac/LogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 p0, 0x0

    check-cast p0, Landroid/content/DialogInterface$OnClickListener;

    .end local p0
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x7f090014
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    invoke-direct {p0}, Lcom/miui/uac/LogActivity;->init()V

    .line 47
    new-instance v1, Lcom/miui/uac/LogActivity$LogAdapter;

    invoke-direct {v1, p0, p0}, Lcom/miui/uac/LogActivity$LogAdapter;-><init>(Lcom/miui/uac/LogActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/uac/LogActivity;->mAdapter:Lcom/miui/uac/LogActivity$LogAdapter;

    .line 48
    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lcom/miui/uac/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 49
    .local v0, list:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/miui/uac/LogActivity;->mAdapter:Lcom/miui/uac/LogActivity$LogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lcom/miui/uac/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 51
    return-void
.end method
