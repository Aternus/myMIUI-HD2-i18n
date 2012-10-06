.class public Lcom/android/sidekick/RecentApplicationsView;
.super Landroid/widget/FrameLayout;
.source "RecentApplicationsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sidekick/RecentApplicationsView$IconUtilities;
    }
.end annotation


# instance fields
.field private mAppIcon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppIconRunning:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mButtonAppKiller:Landroid/widget/Button;

.field private mButtonTaskManager:Landroid/widget/Button;

.field private mIconUtilities:Lcom/android/sidekick/RecentApplicationsView$IconUtilities;

.field final mIcons:[Landroid/widget/TextView;

.field mNoAppsText:Landroid/view/View;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/sidekick/RecentApplicationsView;->mAppIcon:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/sidekick/RecentApplicationsView;->mAppIconRunning:Ljava/util/HashMap;

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/sidekick/RecentApplicationsView;->setDrawingCacheEnabled(Z)V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/android/sidekick/RecentApplicationsView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/sidekick/RecentApplicationsView;->getAvailableMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/sidekick/RecentApplicationsView;JLandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/sidekick/RecentApplicationsView;->formatMemsize(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertTaskinfoToProcess(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 485
    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, result:Ljava/lang/String;
    const-string v1, "com.android.contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.providers.userdictionary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.providers.contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.providers.applications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    :cond_0
    const-string v0, "android.process.acore"

    .line 497
    :cond_1
    :goto_0
    return-object v0

    .line 492
    :cond_2
    const-string v1, "com.android.providers.downloads"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.providers.drm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.providers.media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    :cond_3
    const-string v0, "android.process.media"

    goto :goto_0
.end method

.method private formatMemsize(JLandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "memInKB"
    .parameter "context"

    .prologue
    .line 372
    long-to-double v2, p1

    const-wide/high16 v4, 0x4090

    div-double v0, v2, v4

    .line 373
    .local v0, memInMB:D
    const-string v2, "%.1f%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x10400b6

    invoke-virtual {p3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static fromXml(Landroid/app/Activity;)Lcom/android/sidekick/RecentApplicationsView;
    .locals 4
    .parameter "activity"

    .prologue
    .line 231
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sidekick/RecentApplicationsView;

    .line 233
    .local v0, view:Lcom/android/sidekick/RecentApplicationsView;
    invoke-virtual {v0}, Lcom/android/sidekick/RecentApplicationsView;->inflateControls()V

    .line 234
    iput-object p0, v0, Lcom/android/sidekick/RecentApplicationsView;->mParent:Landroid/app/Activity;

    .line 235
    return-object v0
.end method

.method private getAvailableMemory()J
    .locals 4

    .prologue
    .line 368
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method inflateControls()V
    .locals 7

    .prologue
    .line 239
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/4 v6, 0x0

    const v4, 0x7f09000e

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 240
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/4 v6, 0x1

    const v4, 0x7f09000f

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 241
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/4 v6, 0x2

    const v4, 0x7f090010

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 242
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/4 v6, 0x3

    const v4, 0x7f090011

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 243
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/4 v6, 0x4

    const v4, 0x7f090012

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 244
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/4 v6, 0x5

    const v4, 0x7f090013

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 245
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/4 v6, 0x6

    const v4, 0x7f090014

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 246
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/4 v6, 0x7

    const v4, 0x7f090015

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 247
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/16 v6, 0x8

    const v4, 0x7f090016

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 248
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/16 v6, 0x9

    const v4, 0x7f090017

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 249
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/16 v6, 0xa

    const v4, 0x7f090018

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 250
    iget-object v5, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    const/16 v6, 0xb

    const v4, 0x7f090019

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 251
    const v4, 0x7f09000d

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sidekick/RecentApplicationsView;->mNoAppsText:Landroid/view/View;

    .line 253
    const v4, 0x7f09001a

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/sidekick/RecentApplicationsView;->mButtonAppKiller:Landroid/widget/Button;

    .line 254
    iget-object v4, p0, Lcom/android/sidekick/RecentApplicationsView;->mButtonAppKiller:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v4, 0x7f09001b

    invoke-virtual {p0, v4}, Lcom/android/sidekick/RecentApplicationsView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/sidekick/RecentApplicationsView;->mButtonTaskManager:Landroid/widget/Button;

    .line 256
    iget-object v4, p0, Lcom/android/sidekick/RecentApplicationsView;->mButtonTaskManager:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 259
    .local v1, b:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    .end local v1           #b:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 21
    .parameter "v"

    .prologue
    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 268
    .local v10, context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    const v20, 0x7f09001a

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "activity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 272
    .local v5, am:Landroid/app/ActivityManager;
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v17

    .line 273
    .local v17, processList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/sidekick/RecentApplicationsView;->getAvailableMemory()J

    move-result-wide v8

    .line 274
    .local v8, beforeMemSize:J
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 275
    .local v16, procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v15, v19, v20

    .line 276
    .local v15, packageName:Ljava/lang/String;
    const-string v19, "system"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "system_process"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "com.android.phone"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "com.google.process.gapps"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "android.process.media"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "com.android.launcher"

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 286
    invoke-virtual {v5, v15}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    new-instance v18, Lcom/android/sidekick/RecentApplicationsView$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide v2, v8

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/sidekick/RecentApplicationsView$1;-><init>(Lcom/android/sidekick/RecentApplicationsView;JLandroid/content/Context;)V

    .line 321
    .local v18, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 347
    .end local v5           #am:Landroid/app/ActivityManager;
    .end local v8           #beforeMemSize:J
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v17           #processList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v18           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mParent:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->finish()V

    .line 348
    return-void

    .line 322
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    const v20, 0x7f09001b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 325
    new-instance v13, Landroid/content/Intent;

    const-string v19, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v13, intent:Landroid/content/Intent;
    const/high16 v19, 0x1000

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    const-string v19, "defaultTabTag"

    const-string v20, "Running"

    move-object v0, v13

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 330
    .end local v13           #intent:Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    move-object v6, v0

    .local v6, arr$:[Landroid/widget/TextView;
    array-length v14, v6

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_2
    if-ge v12, v14, :cond_2

    aget-object v7, v6, v12

    .line 331
    .local v7, b:Landroid/widget/TextView;
    move-object v0, v7

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_5

    .line 333
    invoke-virtual {v7}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 334
    .restart local v13       #intent:Landroid/content/Intent;
    if-eqz v13, :cond_2

    .line 335
    const/high16 v19, 0x10

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/sidekick/RecentApplicationsView;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mParent:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 339
    :catch_0
    move-exception v19

    move-object/from16 v11, v19

    .line 340
    .local v11, e:Landroid/content/ActivityNotFoundException;
    const-string v19, "Recent"

    const-string v20, "Unable to launch recent task"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 330
    .end local v11           #e:Landroid/content/ActivityNotFoundException;
    .end local v13           #intent:Landroid/content/Intent;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2
.end method

.method public onDestory()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 506
    iget-object v0, p0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 507
    .local v2, icon:Landroid/widget/TextView;
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 508
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v2           #icon:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 356
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 357
    iget-object v1, p0, Lcom/android/sidekick/RecentApplicationsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 359
    iget-object v1, p0, Lcom/android/sidekick/RecentApplicationsView;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 360
    const/4 v1, 0x1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 514
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 515
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/sidekick/RecentApplicationsView;->reloadButtons()V

    .line 502
    return-void
.end method

.method reloadButtons()V
    .locals 30

    .prologue
    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/sidekick/RecentApplicationsView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 382
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 383
    .local v18, pm:Landroid/content/pm/PackageManager;
    const-string v27, "activity"

    move-object v0, v7

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 385
    .local v6, am:Landroid/app/ActivityManager;
    const/16 v27, 0x18

    const/16 v28, 0x2

    move-object v0, v6

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v19

    .line 388
    .local v19, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v22

    .line 390
    .local v22, runningApps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.intent.action.MAIN"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v28, "android.intent.category.HOME"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 394
    .local v8, homeInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mIconUtilities:Lcom/android/sidekick/RecentApplicationsView$IconUtilities;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 395
    new-instance v27, Lcom/android/sidekick/RecentApplicationsView$IconUtilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/sidekick/RecentApplicationsView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/sidekick/RecentApplicationsView$IconUtilities;-><init>(Lcom/android/sidekick/RecentApplicationsView;Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sidekick/RecentApplicationsView;->mIconUtilities:Lcom/android/sidekick/RecentApplicationsView$IconUtilities;

    .line 401
    :cond_0
    const/4 v12, 0x0

    .line 402
    .local v12, index:I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    .line 403
    .local v17, numTasks:I
    const/4 v9, 0x0

    .end local v6           #am:Landroid/app/ActivityManager;
    .local v9, i:I
    :goto_0
    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    const/16 v27, 0xc

    move v0, v12

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 404
    move-object/from16 v0, v19

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 406
    .local v13, info:Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v13, :cond_1

    move-object v0, v13

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    move-object v0, v13

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    const/high16 v28, 0x200

    move-object v0, v7

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->isAccessControlled(Ljava/lang/String;I)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 403
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 412
    :cond_2
    new-instance v14, Landroid/content/Intent;

    move-object v0, v13

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v27, v0

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 413
    .local v14, intent:Landroid/content/Intent;
    move-object v0, v13

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    .line 414
    move-object v0, v13

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 418
    :cond_3
    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 423
    :cond_4
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v27

    const v28, -0x200001

    and-int v27, v27, v28

    const/high16 v28, 0x1000

    or-int v27, v27, v28

    move-object v0, v14

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 425
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object v1, v14

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    .line 427
    .local v20, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v20, :cond_1

    .line 428
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    .line 429
    .local v5, activityInfo:Landroid/content/pm/ActivityInfo;
    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    .line 431
    .local v25, title:Ljava/lang/String;
    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_1

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v27, v0

    aget-object v26, v27, v12

    .line 433
    .local v26, tv:Landroid/widget/TextView;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    const/4 v15, 0x0

    .line 436
    .local v15, isRunning:Z
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/sidekick/RecentApplicationsView;->convertTaskinfoToProcess(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;

    move-result-object v24

    .line 437
    .local v24, taskProcessName:Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 438
    .local v21, runningApp:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 439
    const/4 v15, 0x1

    .line 444
    .end local v21           #runningApp:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v16

    .line 445
    .local v16, key:Ljava/lang/String;
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mAppIconRunning:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/SoftReference;

    move-object/from16 v23, v6

    .line 448
    .local v23, soft:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :goto_2
    if-nez v23, :cond_a

    const/16 v27, 0x0

    move-object/from16 v11, v27

    .line 450
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    :goto_3
    if-nez v11, :cond_8

    .line 451
    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 452
    if-eqz v11, :cond_7

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mIconUtilities:Lcom/android/sidekick/RecentApplicationsView$IconUtilities;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v11

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/sidekick/RecentApplicationsView$IconUtilities;->createIconDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 456
    :cond_7
    new-instance v23, Ljava/lang/ref/SoftReference;

    .end local v23           #soft:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    move-object/from16 v0, v23

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 457
    .restart local v23       #soft:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v15, :cond_b

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mAppIconRunning:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_8
    :goto_4
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v11

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 466
    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 467
    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setPressed(Z)V

    .line 469
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->clearFocus()V

    .line 470
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 445
    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .end local v23           #soft:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mAppIcon:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/SoftReference;

    move-object/from16 v23, v6

    goto :goto_2

    .line 448
    .restart local v23       #soft:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    move-object v11, v6

    goto :goto_3

    .line 461
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mAppIcon:Ljava/util/HashMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 476
    .end local v5           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .end local v13           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #isRunning:Z
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v23           #soft:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    .end local v24           #taskProcessName:Ljava/lang/String;
    .end local v25           #title:Ljava/lang/String;
    .end local v26           #tv:Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mNoAppsText:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v12, :cond_d

    const/16 v28, 0x0

    :goto_5
    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 479
    :goto_6
    const/16 v27, 0xc

    move v0, v12

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sidekick/RecentApplicationsView;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v27, v0

    aget-object v27, v27, v12

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 476
    :cond_d
    const/16 v28, 0x8

    goto :goto_5

    .line 482
    :cond_e
    return-void
.end method
