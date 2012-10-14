.class Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
.super Ljava/lang/Thread;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mInstalledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPackageList:Ljava/lang/String;

.field private mIsLaunching:Z

.field private mLoadAndBindStepFinished:Z

.field private final mManager:Landroid/content/pm/PackageManager;

.field private mStopped:Z

.field private mWaitThread:Ljava/lang/Thread;

.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$Loader;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$Loader;Landroid/content/Context;Ljava/lang/Thread;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "waitThread"
    .parameter "isLaunching"

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 669
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    .line 673
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    .line 674
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 675
    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    .line 676
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    .line 677
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    .line 678
    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    return v0
.end method

.method private bindWorkspace()V
    .locals 20

    .prologue
    .line 1179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 1183
    .local v17, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1184
    .local v7, oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v7, :cond_0

    .line 1186
    const-string v4, "Launcher.Model"

    const-string v5, "LoaderThread running with no launcher"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :goto_0
    return-void

    .line 1192
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/DeferredHandler;->cancel()V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1204
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1205
    .local v6, itemClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1206
    .local v10, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_2

    .line 1207
    move/from16 v8, v16

    .line 1208
    .local v8, start:I
    add-int/lit8 v4, v16, 0x6

    if-gt v4, v10, :cond_1

    const/4 v4, 0x6

    move v9, v4

    .line 1209
    .local v9, chunkSize:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v4, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;II)V

    invoke-virtual {v11, v4}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1206
    add-int/lit8 v16, v16, 0x6

    goto :goto_1

    .line 1208
    .end local v9           #chunkSize:I
    :cond_1
    sub-int v4, v10, v16

    move v9, v4

    goto :goto_2

    .line 1219
    .end local v8           #start:I
    :cond_2
    new-instance v13, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-direct {v13, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1220
    .local v13, foldersClone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$7;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$7;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$8;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$8;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1238
    invoke-interface {v7}, Lcom/android/launcher2/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v12

    .line 1239
    .local v12, currentScreen:I
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1240
    .local v11, appWidgetsClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    const/4 v4, -0x1

    if-eq v12, v4, :cond_4

    .line 1241
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1243
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_4

    .line 1244
    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1245
    .local v19, widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->screenId:J

    move-wide v4, v0

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$9;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$9;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1243
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1258
    .end local v19           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_4
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_6

    .line 1259
    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1260
    .restart local v19       #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->screenId:J

    move-wide v4, v0

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-eqz v4, :cond_5

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$10;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$10;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1258
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1273
    .end local v19           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_6
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1274
    .local v15, gadgetsClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/GadgetInfo;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1276
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_8

    .line 1277
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 1278
    .local v14, gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v4, v14, Lcom/android/launcher2/ItemInfo;->screenId:J

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$11;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$11;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1276
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1290
    .end local v14           #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    :cond_8
    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_a

    .line 1291
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 1292
    .restart local v14       #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v4, v14, Lcom/android/launcher2/ItemInfo;->screenId:J

    int-to-long v8, v12

    cmp-long v4, v4, v8

    if-eqz v4, :cond_9

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1290
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1305
    .end local v14           #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$13;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$13;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$14;

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$14;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;J)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private doLoad()V
    .locals 4

    .prologue
    const/16 v2, 0xa

    const-string v3, "Launcher.Model"

    .line 830
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 831
    :try_start_0
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 833
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    const-string v0, "Launcher.Model"

    const-string v0, "step 1: loading workspace"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAndBindWorkspace()V

    .line 843
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 844
    :try_start_1
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v1, :cond_0

    .line 845
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 847
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 849
    const-string v0, "Launcher.Model"

    const-string v0, "step 2: loading missing icons"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAndBindMissingIcons()V

    .line 852
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 855
    :try_start_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    const/4 v2, 0x0

    #setter for: Lcom/android/launcher2/LauncherModel$Loader;->mLoaderThread:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel$Loader;->access$1102(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    .line 856
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 864
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$3;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 869
    return-void

    :cond_1
    move v1, v2

    .line 831
    goto :goto_0

    .line 833
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 847
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 856
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private ensureItemUnique(J)Z
    .locals 6
    .parameter "id"

    .prologue
    .line 1002
    const/4 v0, 0x0

    .line 1003
    .local v0, args:Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledPackageList:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1004
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    :try_start_1
    const-string v3, "ensureItemUniqueArgPackagelist"

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledPackageList:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1007
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v3

    const-string v4, "ensureItemUnique"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1009
    .local v2, r:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    const-string v3, "resultBoolean"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1010
    const/4 v3, 0x1

    .line 1014
    .end local v2           #r:Landroid/os/Bundle;
    :goto_0
    return v3

    .line 1012
    :catch_0
    move-exception v3

    .line 1014
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1012
    .end local v0           #args:Landroid/os/Bundle;
    .restart local v1       #args:Landroid/os/Bundle;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_1
.end method

.method private loadAndBindMissingIcons()V
    .locals 13

    .prologue
    const-string v12, "Launcher.Model"

    .line 707
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v8, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v1, v8

    .line 712
    .local v1, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_1
    if-nez v1, :cond_3

    .line 713
    const-string v8, "Launcher.Model"

    const-string v8, "No callback to call back"

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    .end local v1           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_2
    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_1

    .line 718
    .restart local v1       #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 719
    const-string v8, "Launcher.Model"

    const-string v8, "No main activity found, the system is so clean"

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 723
    :cond_4
    const/4 v3, 0x0

    .line 724
    .local v3, count:I
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 725
    .local v7, updatedPackages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 726
    .local v2, cn:Landroid/content/ComponentName;
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-nez v8, :cond_0

    .line 730
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 734
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 739
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 745
    :try_start_1
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 746
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 750
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 740
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 741
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    const-string v8, "Launcher.Model"

    const-string v8, "database didnot ready,ignore this package."

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 746
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 753
    .end local v2           #cn:Landroid/content/ComponentName;
    :cond_6
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 754
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 755
    .local v6, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 756
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v8

    new-instance v9, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$1;

    invoke-direct {v9, p0, v6, v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$1;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 765
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    #calls: Lcom/android/launcher2/LauncherModel$Loader;->onRemoveItems(Ljava/util/ArrayList;)V
    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherModel$Loader;->access$100(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V

    .line 768
    .end local v6           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    :cond_7
    iget-boolean v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 769
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 770
    .local v0, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 771
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v8

    new-instance v9, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;

    invoke-direct {v9, p0, v0, v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 780
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v9}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    #calls: Lcom/android/launcher2/LauncherModel$Loader;->onLoadShortcuts(Ljava/util/ArrayList;)V
    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherModel$Loader;->access$200(Lcom/android/launcher2/LauncherModel$Loader;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 4

    .prologue
    .line 791
    monitor-enter p0

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$900(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    .line 793
    .local v0, loaded:Z
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    #setter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->access$902(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 794
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindWorkspace loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadWorkspace()V

    .line 803
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x0

    #setter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->access$902(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 811
    :goto_0
    return-void

    .line 794
    .end local v0           #loaded:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 810
    .restart local v0       #loaded:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->bindWorkspace()V

    goto :goto_0
.end method

.method private loadAppWidget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v9, "Launcher.Model"

    .line 955
    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 956
    .local v0, appWidgetId:I
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 958
    .local v2, id:J
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 961
    .local v4, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 963
    :cond_0
    const-string v5, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 966
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    :cond_1
    :goto_0
    return-void

    .line 969
    :cond_2
    new-instance v1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 970
    .local v1, appWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iput-wide v2, v1, Lcom/android/launcher2/ItemInfo;->id:J

    .line 971
    invoke-virtual {v1, p1}, Lcom/android/launcher2/LauncherAppWidgetInfo;->load(Landroid/database/Cursor;)V

    .line 972
    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 974
    iget-wide v5, v1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 975
    const-string v5, "Launcher.Model"

    const-string v5, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 980
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadGadget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 985
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 986
    .local v0, gadgetId:I
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 987
    .local v2, id:J
    invoke-static {v0}, Lcom/android/launcher2/gadget/GadgetFactory;->getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 988
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 989
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    new-instance v1, Lcom/android/launcher2/gadget/GadgetInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher2/gadget/GadgetInfo;-><init>(I)V

    .line 994
    .local v1, gadgetInfo:Lcom/android/launcher2/gadget/GadgetInfo;
    iput-wide v2, v1, Lcom/android/launcher2/ItemInfo;->id:J

    .line 995
    invoke-virtual {v1, p1}, Lcom/android/launcher2/gadget/GadgetInfo;->load(Landroid/database/Cursor;)V

    .line 996
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadLiveFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 927
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 928
    .local v6, id:J
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 931
    .local v9, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 934
    .local v8, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v8, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    :goto_0
    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    #calls: Lcom/android/launcher2/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;
    invoke-static {v0, v6, v7}, Lcom/android/launcher2/LauncherModel;->access$1300(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v5

    .line 938
    .local v5, liveFolderInfo:Lcom/android/launcher2/LiveFolderInfo;
    iput-object v9, v5, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 939
    invoke-virtual {v5, p1}, Lcom/android/launcher2/LiveFolderInfo;->load(Landroid/database/Cursor;)V

    .line 941
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x6

    move-object v1, p1

    #calls: Lcom/android/launcher2/LauncherModel;->loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V
    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->access$1400(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V

    .line 944
    iget-wide v0, v5, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    iget-wide v1, v5, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadShortcut(Landroid/database/Cursor;I)V
    .locals 20
    .parameter "c"
    .parameter "itemType"

    .prologue
    .line 1020
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1025
    .local v7, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1027
    .local v17, id:J
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->ensureItemUnique(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1069
    .end local v7           #intent:Landroid/content/Intent;
    .end local v17           #id:J
    :cond_0
    :goto_0
    return-void

    .line 1021
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 1022
    .local v15, e:Ljava/net/URISyntaxException;
    goto :goto_0

    .line 1033
    .end local v15           #e:Ljava/net/URISyntaxException;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v17       #id:J
    :cond_1
    if-nez p2, :cond_4

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v8, v0

    const/4 v10, 0x4

    const/4 v11, 0x2

    move-object/from16 v9, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v19

    .line 1036
    .local v19, info:Lcom/android/launcher2/ShortcutInfo;
    if-eqz v19, :cond_2

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :cond_2
    :goto_1
    if-eqz v19, :cond_6

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v8, 0x4

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)V

    .line 1046
    move-object v0, v7

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1047
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutInfo;->load(Landroid/database/Cursor;)V

    .line 1049
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    move-wide v5, v0

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .end local v7           #intent:Landroid/content/Intent;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    move-wide v5, v0

    const-wide/16 v7, -0x65

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 1051
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    #calls: Lcom/android/launcher2/LauncherModel$Loader;->onLoadShortcut(Lcom/android/launcher2/ShortcutInfo;)V
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel$Loader;->access$1500(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/ShortcutInfo;)V

    goto/16 :goto_0

    .line 1040
    .end local v19           #info:Lcom/android/launcher2/ShortcutInfo;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v6, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v9, v0

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/4 v12, 0x6

    const/4 v13, 0x4

    const/4 v14, 0x2

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/Intent;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v19

    .restart local v19       #info:Lcom/android/launcher2/ShortcutInfo;
    goto :goto_1

    .line 1054
    .end local v7           #intent:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    move-wide v6, v0

    #calls: Lcom/android/launcher2/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    invoke-static {v5, v6, v7}, Lcom/android/launcher2/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v16

    .line 1055
    .local v16, folderInfo:Lcom/android/launcher2/UserFolderInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/UserFolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_2

    .line 1066
    .end local v16           #folderInfo:Lcom/android/launcher2/UserFolderInfo;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_6
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    .end local v7           #intent:Landroid/content/Intent;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", removing it"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-static/range {v17 .. v18}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private loadUserFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 909
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 910
    .local v1, id:J
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    #calls: Lcom/android/launcher2/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    invoke-static {v4, v1, v2}, Lcom/android/launcher2/LauncherModel;->access$1200(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v0

    .line 911
    .local v0, folderInfo:Lcom/android/launcher2/UserFolderInfo;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/UserFolderInfo;->load(Landroid/database/Cursor;)V

    .line 912
    iget-object v4, v0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    iget-object v5, v0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 913
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 914
    .local v3, titleID:I
    if-eqz v3, :cond_0

    .line 915
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 918
    .end local v3           #titleID:I
    :cond_0
    iget-wide v4, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 920
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    iget-wide v5, v0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    return-void
.end method

.method private loadWorkspace()V
    .locals 27

    .prologue
    .line 1072
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    .line 1074
    .local v25, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedUris:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1083
    new-instance v21, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1084
    .local v21, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v21

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 1086
    .local v18, installedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    .line 1087
    .local v24, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1088
    .local v23, packageName:Ljava/lang/String;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1089
    .local v11, className:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/high16 v5, 0x200

    move-object v0, v4

    move-object/from16 v1, v23

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->isAccessControlled(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v4, v0

    new-instance v5, Landroid/content/ComponentName;

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1096
    .end local v11           #className:Ljava/lang/String;
    .end local v23           #packageName:Ljava/lang/String;
    .end local v24           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1097
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .local v22, packageList:Ljava/lang/StringBuilder;
    const/16 v4, 0x28

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledComponents:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1100
    .local v13, cn:Landroid/content/ComponentName;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1102
    .end local v13           #cn:Landroid/content/ComponentName;
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/16 v5, 0x29

    move-object/from16 v0, v22

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1103
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledPackageList:Ljava/lang/String;

    .line 1108
    .end local v22           #packageList:Ljava/lang/StringBuilder;
    :goto_2
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    .local v20, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/launcher2/ItemQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1113
    .local v10, c:Landroid/database/Cursor;
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    move v4, v0

    if-nez v4, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 1115
    const/16 v4, 0x8

    :try_start_1
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1117
    .local v19, itemType:I
    packed-switch v19, :pswitch_data_0

    goto :goto_3

    .line 1120
    :pswitch_0
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadShortcut(Landroid/database/Cursor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1139
    .end local v19           #itemType:I
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 1140
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Launcher.Model"

    const-string v5, "Desktop items loading interrupted:"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1144
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1105
    .end local v10           #c:Landroid/database/Cursor;
    .end local v20           #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mInstalledPackageList:Ljava/lang/String;

    goto :goto_2

    .line 1124
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v19       #itemType:I
    .restart local v20       #itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :pswitch_1
    :try_start_3
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadUserFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1128
    :pswitch_2
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadLiveFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1132
    :pswitch_3
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAppWidget(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1136
    :pswitch_4
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadGadget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1144
    .end local v19           #itemType:I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1147
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v12

    .line 1151
    .local v12, client:Landroid/content/ContentProviderClient;
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1153
    .local v16, id:J
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :try_start_4
    invoke-static/range {v16 .. v17}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12, v4, v5, v6}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 1158
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 1159
    .local v14, e:Landroid/os/RemoteException;
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1160
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    move-object v14, v4

    .line 1161
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove id(database readonly) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1165
    .end local v12           #client:Landroid/content/ContentProviderClient;
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .end local v16           #id:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$4;

    move-object v0, v5

    move-object/from16 v1, p0

    move-wide/from16 v2, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$4;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;J)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1173
    return-void

    .line 1117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private waitForOtherThread()V
    .locals 2

    .prologue
    .line 692
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, done:Z
    :goto_0
    if-nez v0, :cond_0

    .line 696
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    const/4 v0, 0x1

    goto :goto_0

    .line 702
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 704
    .end local v0           #done:Z
    :cond_1
    return-void

    .line 698
    .restart local v0       #done:Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher.Model"

    .line 1325
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mWaitThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mIsLaunching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mLoadAndBindStepFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mLoadAndBindStepFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #getter for: Lcom/android/launcher2/LauncherModel$Loader;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel$Loader;->access$1000(Lcom/android/launcher2/LauncherModel$Loader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 815
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    monitor-enter v0

    .line 816
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->waitForOtherThread()V

    .line 817
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->doLoad()V

    .line 818
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #getter for: Lcom/android/launcher2/LauncherModel$Loader;->mLoadCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel$Loader;->access$1000(Lcom/android/launcher2/LauncherModel$Loader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 820
    return-void

    .line 818
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 872
    monitor-enter p0

    .line 873
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    .line 874
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 875
    monitor-exit p0

    .line 876
    return-void

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v4, 0x0

    .line 886
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 887
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v2, :cond_0

    .line 888
    monitor-exit v1

    move-object v1, v4

    .line 904
    :goto_0
    return-object v1

    .line 891
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 892
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 895
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 896
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 897
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 899
    :cond_2
    if-nez v0, :cond_3

    .line 900
    const-string v2, "Launcher.Model"

    const-string v3, "no mCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 904
    :cond_3
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 905
    .end local v0           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
