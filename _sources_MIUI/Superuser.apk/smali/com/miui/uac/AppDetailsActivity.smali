.class public Lcom/miui/uac/AppDetailsActivity;
.super Landroid/app/Activity;
.source "AppDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/uac/AppDetailsActivity$ViewHolder;,
        Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;,
        Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;

.field private mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

.field private mPackagename:Ljava/lang/String;

.field private mPermissionDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionNum:I

.field private mSelectValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/uac/AppDetailsActivity;->mPermissionDetailList:Ljava/util/List;

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/miui/uac/AppDetailsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/uac/AppDetailsActivity;->mSelectValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/uac/AppDetailsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/uac/AppDetailsActivity;->mSelectValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/uac/AppDetailsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/uac/AppDetailsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/uac/AppDetailsActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/uac/AppDetailsActivity;->mPermissionDetailList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/uac/AppDetailsActivity;)Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/uac/AppDetailsActivity;->mAdapter:Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;

    return-object v0
.end method

.method private buildPermissionChoiceItems(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "permission"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, choiceItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v1, 0x7f06002d

    invoke-virtual {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-direct {p0, p1}, Lcom/miui/uac/AppDetailsActivity;->isPreConfirmedBehavior(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.superuser.ROOT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "android.permission.superuser.monitor_calls"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.superuser.read_phone_state"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    const v1, 0x7f06002e

    invoke-virtual {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_1
    return-object v0
.end method

.method private initData()V
    .locals 20

    .prologue
    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/miui/uac/AppDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 175
    .local v11, bundle:Landroid/os/Bundle;
    const-string v2, "package"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;

    .line 177
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I

    .line 178
    const/4 v4, 0x0

    .line 179
    .local v4, permission:Ljava/lang/String;
    sget-object v2, Lcom/miui/uac/Util;->PERMISSION_LABELS_MAP:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 181
    .local v13, entry:Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-virtual {v11, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity;->mPermissionDetailList:Ljava/util/List;

    move-object v8, v0

    new-instance v2, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    const-wide/16 v5, 0x0

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;-><init>(Lcom/miui/uac/AppDetailsActivity;Ljava/lang/String;JI)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I

    goto :goto_0

    .line 189
    .end local v13           #entry:Ljava/util/Map$Entry;
    :cond_1
    const-string v2, "guardian"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IPackageGuardian$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPackageGuardian;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/uac/AppDetailsActivity;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    .line 195
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity;->mPackageGuardian:Lcom/android/internal/app/IPackageGuardian;

    move-object v2, v0

    invoke-interface {v2}, Lcom/android/internal/app/IPackageGuardian;->getLogs()Ljava/util/List;

    move-result-object v18

    .line 198
    .local v18, permissionLogs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    .line 199
    .local v19, size:I
    const/4 v2, 0x1

    sub-int v14, v19, v2

    .local v14, i:I
    :goto_1
    if-ltz v14, :cond_3

    .line 200
    move-object/from16 v0, v18

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 201
    .local v16, log:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    const-string v2, ":"

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 203
    .local v17, logSegements:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move v2, v0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x2

    aget-object v3, v17, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity;->mPermissionDetailList:Ljava/util/List;

    move-object v2, v0

    new-instance v5, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    const/4 v3, 0x1

    aget-object v7, v17, v3

    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v3, 0x3

    aget-object v3, v17, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;-><init>(Lcom/miui/uac/AppDetailsActivity;Ljava/lang/String;JI)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v17           #logSegements:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 212
    .end local v14           #i:I
    .end local v16           #log:Ljava/lang/String;
    .end local v18           #permissionLogs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v19           #size:I
    :catch_0
    move-exception v2

    move-object v12, v2

    .line 213
    .local v12, e:Landroid/os/RemoteException;
    const-string v2, "Superuser.AppDetailsActivity"

    const-string v3, "error"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_3
    return-void
.end method

.method private isPreConfirmedBehavior(Ljava/lang/String;)Z
    .locals 8
    .parameter "permission"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 150
    const-string v4, "android.permission.superuser.ROOT"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    .line 170
    :goto_0
    return v4

    .line 153
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v3, permissionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "android.permission.superuser.read_phone_state"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 155
    sget-object v3, Lcom/miui/uac/Util;->READ_PHONE_STATE_BEHAVIORS:Ljava/util/List;

    .line 164
    :cond_1
    :goto_1
    sget-object v4, Lcom/miui/uac/Util;->PRECONFIRMED_BEHAVIORS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, log:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, logSegements:[Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v2, v7

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    .line 167
    goto :goto_0

    .line 156
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #log:Ljava/lang/String;
    .end local v2           #logSegements:[Ljava/lang/String;
    :cond_3
    const-string v4, "android.permission.superuser.call_phone"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    sget-object v3, Lcom/miui/uac/Util;->CALL_PHONE_BEHAVIORS:Ljava/util/List;

    goto :goto_1

    .line 158
    :cond_4
    const-string v4, "android.permission.superuser.monitor_calls"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 159
    sget-object v3, Lcom/miui/uac/Util;->ANTI_WIRETAPPING_BEHAVIORS:Ljava/util/List;

    goto :goto_1

    .line 160
    :cond_5
    const-string v4, "android.permission.superuser.message"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    sget-object v3, Lcom/miui/uac/Util;->MESSAGE_BEHAVIORS:Ljava/util/List;

    goto :goto_1

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_6
    move v4, v7

    .line 170
    goto :goto_0
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/uac/AppDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/uac/Util;->uninstallPkg(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/miui/uac/AppDetailsActivity;->finish()V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/uac/AppDetailsActivity;->startApplicationDetailsActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x7f090004
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/miui/uac/AppDetailsActivity;->initData()V

    .line 52
    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/miui/uac/Util;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/miui/uac/Util;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f06002b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/miui/uac/Util;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/miui/uac/AppDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v1, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;

    invoke-direct {v1, p0, p0}, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;-><init>(Lcom/miui/uac/AppDetailsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/uac/AppDetailsActivity;->mAdapter:Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;

    .line 62
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 63
    .local v0, list:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/miui/uac/AppDetailsActivity;->mAdapter:Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 69
    if-ltz p3, :cond_0

    iget v1, p0, Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I

    if-ge p3, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/miui/uac/AppDetailsActivity;->mAdapter:Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;

    invoke-virtual {v1, p3}, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    .line 71
    .local v0, detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;
    iget v1, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mAllowdId:I

    iput v1, p0, Lcom/miui/uac/AppDetailsActivity;->mSelectValue:I

    .line 72
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06002f

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    sget-object v1, Lcom/miui/uac/Util;->PERMISSION_LABELS_MAP:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mPermission:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/miui/uac/AppDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/miui/uac/Util;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v1, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mPermission:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/uac/AppDetailsActivity;->buildPermissionChoiceItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iget v3, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mAllowdId:I

    new-instance v4, Lcom/miui/uac/AppDetailsActivity$2;

    invoke-direct {v4, p0}, Lcom/miui/uac/AppDetailsActivity$2;-><init>(Lcom/miui/uac/AppDetailsActivity;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/miui/uac/AppDetailsActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/uac/AppDetailsActivity$1;-><init>(Lcom/miui/uac/AppDetailsActivity;Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 p0, 0x0

    check-cast p0, Landroid/content/DialogInterface$OnClickListener;

    .end local p0
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 115
    .end local v0           #detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;
    :cond_0
    return-void
.end method
