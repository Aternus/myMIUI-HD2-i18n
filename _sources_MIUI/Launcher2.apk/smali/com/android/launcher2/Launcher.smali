.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;,
        Lcom/android/launcher2/Launcher$AppWidgetResetObserver;,
        Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$CreateShortcut;,
        Lcom/android/launcher2/Launcher$LocaleConfiguration;
    }
.end annotation


# static fields
.field private static final DISABLE_TOUCH_IMPROVE:[B

.field private static final ENABLE_TOUCH_IMPROVE:[B

.field private static mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeleteZone:Lcom/android/launcher2/DeleteZone;

.field private mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

.field private mDeleteZoneEditingExit:Landroid/view/animation/Animation;

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mDragLayerBackground:Lcom/android/launcher2/Background;

.field private mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

.field private mEditingState:I

.field private mErrorBar:Lcom/android/launcher2/ErrorBar;

.field public mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/gadget/Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mHotSeats:Lcom/android/launcher2/HotSeats;

.field private mHotseatEditingEnter:Landroid/view/animation/Animation;

.field private mHotseatEditingExit:Landroid/view/animation/Animation;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mLastPausedTime:J

.field mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mOnResumeExpectedForActivityResult:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private final mScreenChangeObserver:Landroid/database/ContentObserver;

.field private final mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitingForResult:Z

.field private final mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWidgetEditingEnter:Landroid/view/animation/Animation;

.field private mWidgetEditingExit:Landroid/view/animation/Animation;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

.field private mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceLoading:Z

.field private mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    .line 2044
    new-array v0, v3, [B

    const/16 v1, 0x30

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/launcher2/Launcher;->DISABLE_TOUCH_IMPROVE:[B

    .line 2045
    new-array v0, v3, [B

    const/16 v1, 0x31

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/launcher2/Launcher;->ENABLE_TOUCH_IMPROVE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 149
    new-instance v0, Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$ScreenOnOffReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$WallpaperChangedIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    new-instance v0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 176
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 180
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Lcom/android/launcher2/Launcher$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    .line 451
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mLastPausedTime:J

    .line 1749
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 527
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 529
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->pickShortcut()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method private addItems()V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->showAddDialog(Lcom/android/launcher2/CellLayout$CellInfo;)V

    .line 1008
    return-void
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;Z)Lcom/android/launcher2/LiveFolderInfo;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 1161
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1162
    const-string v2, "android.intent.extra.livefolder.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1167
    const-string v2, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 1168
    if-eqz v3, :cond_1

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_1

    .line 1170
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1172
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1174
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1175
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    .line 1181
    :goto_0
    if-nez v2, :cond_0

    .line 1182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f02006b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v5, v2

    .line 1185
    :goto_1
    new-instance v2, Lcom/android/launcher2/LiveFolderInfo;

    invoke-direct {v2}, Lcom/android/launcher2/LiveFolderInfo;-><init>()V

    .line 1186
    invoke-static {v5, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 1187
    iput-object v4, v2, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1188
    iput-object v3, v2, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1189
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 1190
    iput-object v1, v2, Lcom/android/launcher2/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 1191
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/android/launcher2/LiveFolderInfo;->displayMode:I

    .line 1194
    const-wide/16 v3, -0x64

    iget-wide v5, p2, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    iget v7, p2, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v8, p2, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 1196
    sget-object v1, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v3, v2, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    return-object v2

    .line 1176
    :catch_0
    move-exception v2

    move-object v2, v9

    .line 1177
    :goto_2
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load live folder icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    move-object v2, v9

    goto :goto_0

    .line 1176
    :catch_1
    move-exception v5

    goto :goto_2

    :cond_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v3, v9

    move-object v2, v9

    goto :goto_0
.end method

.method private checkForLocaleChange()V
    .locals 10

    .prologue
    .line 265
    new-instance v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lcom/android/launcher2/Launcher$LocaleConfiguration;-><init>(Lcom/android/launcher2/Launcher$1;)V

    .line 266
    .local v3, localeConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;
    invoke-static {p0, v3}, Lcom/android/launcher2/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 270
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v6, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 271
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, locale:Ljava/lang/String;
    iget v7, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 274
    .local v7, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 276
    .local v4, mcc:I
    iget v8, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 277
    .local v8, previousMnc:I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 279
    .local v5, mnc:I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-ne v4, v7, :cond_0

    if-eq v5, v8, :cond_2

    :cond_0
    const/4 v9, 0x1

    move v2, v9

    .line 281
    .local v2, localeChanged:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 282
    iput-object v1, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 283
    iput v4, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 284
    iput v5, v3, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 286
    invoke-static {p0, v3}, Lcom/android/launcher2/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    .line 287
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v9}, Lcom/android/launcher2/IconCache;->flush()V

    .line 289
    :cond_1
    return-void

    .line 279
    .end local v2           #localeChanged:Z
    :cond_2
    const/4 v9, 0x0

    move v2, v9

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 563
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 565
    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;)V
    .locals 20
    .parameter "data"

    .prologue
    .line 703
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 704
    .local v17, extras:Landroid/os/Bundle;
    const-string v4, "appWidgetId"

    const/4 v5, -0x1

    move-object/from16 v0, v17

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 708
    .local v13, appWidgetId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object v4, v0

    invoke-virtual {v4, v13}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v14

    .line 711
    .local v14, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v18

    .line 712
    .local v18, layout:Lcom/android/launcher2/CellLayout;
    iget v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v5, v14, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->widgetFrameToCell(II)[I

    move-result-object v19

    .line 715
    .local v19, spans:[I
    const/4 v4, 0x0

    aget v4, v19, v4

    const/4 v5, 0x1

    aget v5, v19, v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v15

    .line 716
    .local v15, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v15, :cond_1

    .line 717
    const/4 v4, -0x1

    if-eq v13, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/launcher2/DragController;->getLastDragInfo()Lcom/android/launcher2/ItemInfo;

    move-result-object v16

    .line 722
    .local v16, dragInfo:Lcom/android/launcher2/ItemInfo;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 723
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    move v4, v0

    iput v4, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 724
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v4, v0

    iput v4, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 728
    :cond_2
    new-instance v5, Lcom/android/launcher2/LauncherAppWidgetInfo;

    invoke-direct {v5, v13}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 729
    .local v5, launcherInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    const/4 v4, 0x0

    aget v4, v19, v4

    iput v4, v5, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 730
    const/4 v4, 0x1

    aget v4, v19, v4

    iput v4, v5, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 732
    const-wide/16 v6, -0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v8

    iget v10, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v11, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v11}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v13

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    iput-object v4, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 741
    iget-object v4, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v13, v14}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 742
    iget-object v4, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v6, v0

    iget-object v7, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v8, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v9, v15, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iget v10, v5, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v11, v5, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v12

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto/16 :goto_0
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1147
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v3

    .line 1148
    if-nez v3, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1150
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v3, v0}, Lcom/android/launcher2/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;Z)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v0

    .line 1152
    const v1, 0x7f03001e

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-static {v1, p0, v2, v0}, Lcom/android/launcher2/LiveFolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/LiveFolderInfo;)Lcom/android/launcher2/LiveFolderIcon;

    move-result-object v1

    .line 1154
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 677
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v7

    .line 678
    .local v7, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v7, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->getLastDragInfo()Lcom/android/launcher2/ItemInfo;

    move-result-object v9

    .line 681
    .local v9, dragInfo:Lcom/android/launcher2/ItemInfo;
    if-eqz v9, :cond_2

    .line 682
    iget v0, v9, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput v0, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 683
    iget v0, v9, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v0, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v8

    .line 687
    .local v8, cellLayout:Lcom/android/launcher2/CellLayout;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0, p0, p1, v7}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v10

    .line 688
    .local v10, info:Lcom/android/launcher2/ShortcutInfo;
    if-eqz v10, :cond_0

    .line 689
    invoke-virtual {p0, v8, v10}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v1

    .line 690
    .local v1, shortcut:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v3, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private createShortcutIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 667
    const v0, 0x7f030001

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher2/ShortcutIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;

    move-result-object v0

    return-object v0
.end method

.method private createUserFolderIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;)Lcom/android/launcher2/FolderIcon;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 650
    const v0, 0x7f030009

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v0

    .line 651
    invoke-virtual {p2}, Lcom/android/launcher2/UserFolderInfo;->getFolderCache()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {p2}, Lcom/android/launcher2/UserFolderInfo;->getFolderCache()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder;->setFolderIcon(Landroid/view/View;)V

    .line 654
    :cond_0
    return-object v0
.end method

.method private enableTouchImprove(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2049
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_0

    .line 2050
    const-string v0, "/proc/touch_ramp"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->writeProcHandle(Ljava/lang/String;Z)V

    .line 2051
    const-string v0, "/proc/touch_idle_lock"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->writeProcHandle(Ljava/lang/String;Z)V

    .line 2053
    :cond_0
    return-void
.end method

.method private findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1
    .parameter "showError"

    .prologue
    const/4 v0, 0x1

    .line 1202
    invoke-direct {p0, v0, v0, p1}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method private findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1206
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 1207
    if-nez v0, :cond_0

    move-object v0, v6

    .line 1226
    :goto_0
    return-object v0

    :cond_0
    move v2, v1

    move v3, p1

    move v4, p2

    move v5, v1

    .line 1211
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIZ)[I

    move-result-object v0

    .line 1212
    if-nez v0, :cond_2

    .line 1213
    if-eqz p3, :cond_1

    .line 1214
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showError(I)V

    :cond_1
    move-object v0, v6

    .line 1216
    goto :goto_0

    .line 1219
    :cond_2
    new-instance v2, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v2}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    .line 1220
    aget v1, v0, v1

    iput v1, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 1221
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 1222
    iput p1, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 1223
    iput p2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 1224
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    move-object v0, v2

    .line 1226
    goto :goto_0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V
    .locals 4
    .parameter "folderInfo"
    .parameter "folderIcon"

    .prologue
    const/4 v3, 0x0

    .line 1400
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    iget-boolean v1, p1, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v1, :cond_2

    .line 1405
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    .line 1407
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V

    goto :goto_0

    .line 1410
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1411
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1413
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v2, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private notifyGadgetStateChanged(I)V
    .locals 8
    .parameter "state"

    .prologue
    .line 463
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 464
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/gadget/Gadget;

    .line 465
    .local v1, gadget:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 466
    .local v3, info:Lcom/android/launcher2/gadget/GadgetInfo;
    packed-switch p1, :pswitch_data_0

    .line 463
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 468
    :pswitch_0
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onStart()V

    goto :goto_1

    .line 471
    :pswitch_1
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onStop()V

    goto :goto_1

    .line 474
    :pswitch_2
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onPause()V

    goto :goto_1

    .line 477
    :pswitch_3
    iget-wide v4, v3, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 478
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    goto :goto_1

    .line 482
    :pswitch_4
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onCreate()V

    goto :goto_1

    .line 485
    :pswitch_5
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onDestroy()V

    goto :goto_1

    .line 488
    :pswitch_6
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onEditDisable()V

    goto :goto_1

    .line 491
    :pswitch_7
    invoke-interface {v1}, Lcom/android/launcher2/gadget/Gadget;->onEditNormal()V

    goto :goto_1

    .line 495
    .end local v1           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v3           #info:Lcom/android/launcher2/gadget/GadgetInfo;
    :cond_1
    return-void

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 1326
    return-void
.end method

.method private openFolder(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V
    .locals 11
    .parameter "folderInfo"
    .parameter "folderIcon"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 1426
    const/4 v1, 0x0

    .line 1427
    .local v1, openFolder:Lcom/android/launcher2/Folder;
    const/4 v8, 0x1

    .line 1428
    .local v8, needBind:Z
    instance-of v0, p1, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v0, :cond_2

    .line 1429
    invoke-virtual {p1}, Lcom/android/launcher2/FolderInfo;->getFolderCache()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 1430
    if-nez v1, :cond_1

    .line 1431
    invoke-static {p0}, Lcom/android/launcher2/UserFolder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/UserFolder;

    move-result-object v1

    .line 1432
    invoke-virtual {p1, v1}, Lcom/android/launcher2/FolderInfo;->setFolderCache(Lcom/android/launcher2/Folder;)V

    .line 1442
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 1460
    :goto_1
    return-void

    .line 1434
    :cond_1
    iget-object v0, v1, Lcom/android/launcher2/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutsAdapter;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/ShortcutsAdapter;->enforceShow(Z)V

    .line 1435
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 1436
    const/4 v8, 0x0

    goto :goto_0

    .line 1438
    :cond_2
    instance-of v0, p1, Lcom/android/launcher2/LiveFolderInfo;

    if-eqz v0, :cond_0

    .line 1439
    invoke-static {p0, p1}, Lcom/android/launcher2/LiveFolder;->fromXml(Landroid/content/Context;Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/LiveFolder;

    move-result-object v1

    goto :goto_0

    .line 1446
    :cond_3
    if-eqz v8, :cond_4

    .line 1447
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 1448
    invoke-virtual {v1, p0}, Lcom/android/launcher2/Folder;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 1449
    invoke-virtual {v1, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderInfo;)V

    .line 1452
    :cond_4
    invoke-virtual {v1, p2}, Lcom/android/launcher2/Folder;->setFolderIcon(Landroid/view/View;)V

    .line 1454
    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v9, -0x65

    cmp-long v0, v2, v9

    if-nez v0, :cond_5

    .line 1455
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 1458
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    move v5, v4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIII)V

    .line 1459
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Folder;->onOpen(Z)V

    goto :goto_1
.end method

.method private pickShortcut()V
    .locals 4

    .prologue
    .line 1630
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1631
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1632
    const-string v1, "android.intent.extra.TITLE"

    const v2, 0x7f0a000e

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1634
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1635
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 301
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 302
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 303
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 309
    if-eqz v1, :cond_2

    .line 311
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 317
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 312
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 314
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 304
    :catch_1
    move-exception v2

    .line 309
    :goto_1
    if-eqz v0, :cond_0

    .line 311
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 312
    :catch_2
    move-exception v2

    goto :goto_0

    .line 306
    :catch_3
    move-exception v2

    .line 309
    :goto_2
    if-eqz v0, :cond_0

    .line 311
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 312
    :catch_4
    move-exception v2

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 311
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 314
    :cond_1
    :goto_4
    throw v2

    .line 312
    :catch_5
    move-exception v3

    goto :goto_4

    .line 309
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 306
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 304
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1247
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1248
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1250
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1252
    return-void
.end method

.method private setWallpaperDimension()V
    .locals 7

    .prologue
    .line 355
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 357
    .local v4, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 358
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    move v2, v5

    .line 360
    .local v2, isPortrait:Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v3, v5

    .line 361
    .local v3, width:I
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v1, v5

    .line 362
    .local v1, height:I
    :goto_2
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 363
    return-void

    .line 358
    .end local v1           #height:I
    .end local v2           #isPortrait:Z
    .end local v3           #width:I
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    .line 360
    .restart local v2       #isPortrait:Z
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v3, v5

    goto :goto_1

    .line 361
    .restart local v3       #width:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v1, v5

    goto :goto_2
.end method

.method private setupAnimations()V
    .locals 1

    .prologue
    .line 627
    const v0, 0x7f04000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

    .line 628
    const v0, 0x7f04000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZoneEditingExit:Landroid/view/animation/Animation;

    .line 629
    const v0, 0x7f040013

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    .line 630
    const v0, 0x7f040014

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    .line 631
    const v0, 0x7f04001b

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetEditingEnter:Landroid/view/animation/Animation;

    .line 632
    const v0, 0x7f04001c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetEditingExit:Landroid/view/animation/Animation;

    .line 633
    return-void
.end method

.method private setupViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 571
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 573
    .local v0, dragController:Lcom/android/launcher2/DragController;
    const v3, 0x7f07003d

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragLayer;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 574
    const v3, 0x7f07003e

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Background;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Lcom/android/launcher2/Background;

    .line 575
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/DragLayer;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 576
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/DragLayer;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 578
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v4, 0x7f070043

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DeleteZone;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    .line 580
    const v3, 0x7f070041

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/WidgetThumbnailView;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    .line 581
    new-instance v3, Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    invoke-direct {v3, p0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    .line 582
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 583
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/WidgetThumbnailView;->setAdapter(Lcom/android/launcher2/ThumbnailViewAdapter;)V

    .line 584
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/WidgetThumbnailView;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 586
    const v3, 0x7f070046

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ErrorBar;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    .line 588
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v4, 0x7f07003f

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Workspace;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 589
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 590
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 592
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v4, 0x7f070040

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/WorkspaceThumbnailView;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    .line 594
    invoke-virtual {v2, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 595
    invoke-virtual {v2, v0}, Lcom/android/launcher2/Workspace;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 596
    invoke-virtual {v2, p0}, Lcom/android/launcher2/Workspace;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 597
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setThumbnailView(Lcom/android/launcher2/WorkspaceThumbnailView;)V

    .line 599
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/DeleteZone;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 600
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/DeleteZone;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 602
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v4, 0x7f070042

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HotSeats;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    .line 603
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/HotSeats;->setLaucher(Lcom/android/launcher2/Launcher;)V

    .line 604
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/HotSeats;->setDragController(Lcom/android/launcher2/DragController;)V

    .line 606
    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController;->setDragScoller(Lcom/android/launcher2/DragScroller;)V

    .line 607
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->setDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 608
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->setScrollView(Landroid/view/View;)V

    .line 609
    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 612
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 613
    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 614
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 616
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupAnimations()V

    .line 618
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 619
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_guide_tips_editing_mode"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    new-instance v3, Landroid/widget/GuidePopupWindow;

    invoke-direct {v3, p0}, Landroid/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

    .line 621
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

    const v4, 0x7f0a005b

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/GuidePopupWindow;->setGuideText(Ljava/lang/String;)V

    .line 622
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 624
    :cond_0
    return-void
.end method

.method private showAddDialog(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .locals 1
    .parameter "cellInfo"

    .prologue
    const/4 v0, 0x1

    .line 1625
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1626
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showDialog(I)V

    .line 1627
    return-void
.end method

.method private showEditPanel(ZZ)V
    .locals 6
    .parameter "show"
    .parameter "quickMode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1566
    if-nez p1, :cond_1

    move v1, v5

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->showStatusBar(Z)V

    .line 1568
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    if-eqz p1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeleteZone;->setVisibility(I)V

    .line 1569
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDeleteZoneEditingEnter:Landroid/view/animation/Animation;

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1571
    if-eqz p2, :cond_4

    .line 1593
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v1, v3

    .line 1566
    goto :goto_0

    :cond_2
    move v2, v4

    .line 1568
    goto :goto_1

    .line 1569
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDeleteZoneEditingExit:Landroid/view/animation/Animation;

    goto :goto_2

    .line 1574
    :cond_4
    if-eqz p1, :cond_5

    .line 1575
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Lcom/android/launcher2/Background;

    invoke-virtual {v1}, Lcom/android/launcher2/Background;->setEnterEditingMode()V

    .line 1580
    :goto_4
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    :goto_5
    invoke-virtual {v1, v2}, Lcom/android/launcher2/HotSeats;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1581
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_7

    move v2, v4

    :goto_6
    invoke-virtual {v1, v2}, Lcom/android/launcher2/HotSeats;->setVisibility(I)V

    .line 1582
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetEditingEnter:Landroid/view/animation/Animation;

    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/launcher2/WidgetThumbnailView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1583
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    if-eqz p1, :cond_9

    move v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Lcom/android/launcher2/WidgetThumbnailView;->setVisibility(I)V

    .line 1584
    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

    if-eqz v1, :cond_a

    .line 1585
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailView:Lcom/android/launcher2/WidgetThumbnailView;

    invoke-virtual {v1, v2, v3, v3, v5}, Landroid/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 1586
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1587
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_guide_tips_editing_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1588
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 1577
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Lcom/android/launcher2/Background;

    invoke-virtual {v1}, Lcom/android/launcher2/Background;->setExitEditingMode()V

    goto :goto_4

    .line 1580
    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    goto :goto_5

    :cond_7
    move v2, v3

    .line 1581
    goto :goto_6

    .line 1582
    :cond_8
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetEditingExit:Landroid/view/animation/Animation;

    goto :goto_7

    :cond_9
    move v2, v4

    .line 1583
    goto :goto_8

    .line 1589
    :cond_a
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

    if-eqz v1, :cond_0

    .line 1590
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

    invoke-virtual {v1}, Landroid/widget/GuidePopupWindow;->dismiss()V

    .line 1591
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

    goto :goto_3
.end method

.method private showStatusBar(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1558
    .local v1, launcherWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1559
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1562
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1563
    return-void

    .line 1559
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    goto :goto_0
.end method

.method private sortDesktopItems()V
    .locals 0

    .prologue
    .line 989
    return-void
.end method

.method private startWallpaper()V
    .locals 3

    .prologue
    .line 1230
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1231
    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.WallpaperSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1240
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 3

    .prologue
    .line 1333
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 1334
    .local v1, item:Lcom/android/launcher2/ItemInfo;
    invoke-virtual {v1}, Lcom/android/launcher2/ItemInfo;->unbind()V

    goto :goto_0

    .line 1336
    .end local v1           #item:Lcom/android/launcher2/ItemInfo;
    :cond_0
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    const-string v3, "launcher.preferences"

    .line 320
    const/4 v1, 0x0

    .line 322
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 323
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 324
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 325
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 326
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8

    .line 340
    if-eqz v2, :cond_2

    .line 342
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 348
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 343
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 345
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 327
    :catch_1
    move-exception v3

    .line 340
    :goto_1
    if-eqz v1, :cond_0

    .line 342
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 343
    :catch_2
    move-exception v3

    goto :goto_0

    .line 329
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 331
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    if-eqz v1, :cond_0

    .line 342
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 343
    :catch_4
    move-exception v3

    goto :goto_0

    .line 332
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 340
    :goto_3
    if-eqz v1, :cond_0

    .line 342
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    .line 343
    :catch_6
    move-exception v3

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_1

    .line 342
    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 345
    :cond_1
    :goto_5
    throw v3

    .line 343
    :catch_7
    move-exception v4

    goto :goto_5

    .line 340
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_4

    .line 332
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 329
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_9
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 327
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_a
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method

.method private writeProcHandle(Ljava/lang/String;Z)V
    .locals 2
    .parameter "path"
    .parameter "isEnable"

    .prologue
    .line 2057
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2058
    .local v0, fos:Ljava/io/FileOutputStream;
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/launcher2/Launcher;->ENABLE_TOUCH_IMPROVE:[B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2059
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 2063
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 2058
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :cond_0
    sget-object v1, Lcom/android/launcher2/Launcher;->DISABLE_TOUCH_IMPROVE:[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2061
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2060
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method addAppWidget(Lcom/android/launcher2/LauncherAppWidgetProviderInfo;)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x0

    const-string v8, "appWidgetId"

    .line 1012
    iget-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1013
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 1014
    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayout;->widgetFrameToCell(II)[I

    move-result-object v1

    .line 1017
    aget v2, v1, v4

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-direct {p0, v2, v1, v4}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1018
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 1056
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1024
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 1032
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1033
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1034
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    invoke-virtual {p0, v2, v7}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ErrorBar;->showError(I)V

    goto :goto_0

    .line 1038
    :cond_1
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1039
    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 1041
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1042
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    const-string v5, "appWidgetId"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 1047
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v7, v0, v4}, Lcom/android/launcher2/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1050
    :cond_2
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method addEmptyFolder(Lcom/android/launcher2/UserFolderInfo;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 1118
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    .line 1119
    if-nez p1, :cond_2

    .line 1120
    invoke-direct {p0, v9}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v8

    .line 1121
    if-nez v8, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    new-instance v1, Lcom/android/launcher2/UserFolderInfo;

    invoke-direct {v1}, Lcom/android/launcher2/UserFolderInfo;-><init>()V

    .line 1124
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1127
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v4

    iget v6, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v7, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FolderIcon;

    .line 1136
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v4, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v5, v8, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v8

    move v6, v9

    move v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    move-object v0, v1

    .line 1139
    :goto_1
    sget-object v1, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method addGadget(Lcom/android/launcher2/gadget/GadgetInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v4, -0x1

    .line 1060
    iget v1, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->findSlot(IIZ)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v9

    .line 1061
    .local v9, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v9, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    iget v1, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    if-eq v1, v4, :cond_2

    iget v1, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    if-eq v1, v4, :cond_2

    .line 1064
    iget v1, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput v1, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 1065
    iget v1, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v1, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 1069
    :cond_2
    const/16 v1, 0x65

    invoke-static {p0, p1, v1}, Lcom/android/launcher2/gadget/GadgetFactory;->createGadget(Landroid/app/Activity;Lcom/android/launcher2/gadget/GadgetInfo;I)Lcom/android/launcher2/gadget/Gadget;

    move-result-object v10

    .line 1070
    .local v10, gadget:Lcom/android/launcher2/gadget/Gadget;
    if-eqz v10, :cond_0

    .line 1073
    const-wide/16 v3, -0x64

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    iget v7, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v8, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    .line 1077
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onCreate()V

    .line 1079
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object v0, v10

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    iget v3, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v6, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    .line 1082
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    .line 1084
    iget v1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1085
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onEditNormal()V

    goto :goto_0
.end method

.method addItem(Lcom/android/launcher2/ItemInfo;Z)V
    .locals 9
    .parameter "info"
    .parameter "insert"

    .prologue
    const/4 v6, 0x1

    .line 1985
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1986
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HotSeats;->pushItem(Lcom/android/launcher2/ItemInfo;)Z

    .line 1993
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1987
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 1988
    check-cast p1, Lcom/android/launcher2/ShortcutInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher;->addShortcut(Lcom/android/launcher2/ShortcutInfo;Z)V

    goto :goto_0

    .line 1989
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget v4, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v8, 0x0

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_0
.end method

.method addLiveFolder(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    .line 1107
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1108
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1110
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->addEmptyFolder(Lcom/android/launcher2/UserFolderInfo;)V

    .line 1115
    :goto_0
    return-void

    .line 1113
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method addShortcut(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1957
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->addShortcut(Lcom/android/launcher2/ShortcutInfo;Z)V

    .line 1958
    return-void
.end method

.method addShortcut(Lcom/android/launcher2/ShortcutInfo;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const-string v4, "Launcher"

    .line 1996
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->getParentFolderIcon(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1997
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->getParentFolderInfo(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderInfo;

    move-result-object v2

    .line 1998
    if-eqz v2, :cond_3

    instance-of v1, v2, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v1, :cond_3

    .line 1999
    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/android/launcher2/UserFolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 2000
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    .line 2001
    if-eqz v1, :cond_2

    .line 2002
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIcon;->loadItemIcons()V

    .line 2006
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 2007
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v4

    if-ne v4, v2, :cond_0

    .line 2008
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 2012
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ApplicationsMessage;->updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V

    .line 2020
    :goto_1
    return-void

    .line 2004
    :cond_2
    const-string v1, "Launcher"

    const-string v1, "Can\'t find folder icon by tag"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2014
    :cond_3
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find user folder of id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2017
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v8, v7

    move v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_1
.end method

.method public bindAppMessage(Lcom/android/launcher2/ShortcutIcon;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "icon"
    .parameter "componentName"

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/ApplicationsMessage;->addApplication(Lcom/android/launcher2/ShortcutIcon;Landroid/content/ComponentName;)V

    .line 2038
    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 12
    .parameter

    .prologue
    const-string v11, "Launcher"

    .line 1850
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1852
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAppWidget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1856
    iget v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1857
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 1858
    if-nez v2, :cond_0

    .line 1860
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAppWidget: appWidgetId has not been bound to a provider yet,ignore it."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :goto_0
    return-void

    .line 1865
    :cond_0
    const-string v3, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindAppWidget: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " belongs to component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v3, p0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1870
    iget-object v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1871
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1873
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget v4, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v6, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v7, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 1876
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 1878
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1881
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bound widget id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1945
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 1946
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/Launcher$3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1954
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2028
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 2029
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 2030
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/HotSeats;->removeItems(Ljava/util/ArrayList;)V

    .line 2031
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 2032
    .local v1, ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    iget-object v3, v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/ApplicationsMessage;->removeApplication(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2034
    .end local v1           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_0
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1840
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1841
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1842
    return-void
.end method

.method public bindGadget(Lcom/android/launcher2/gadget/GadgetInfo;)V
    .locals 11
    .parameter "item"

    .prologue
    .line 1892
    const/16 v1, 0x65

    invoke-static {p0, p1, v1}, Lcom/android/launcher2/gadget/GadgetFactory;->createGadget(Landroid/app/Activity;Lcom/android/launcher2/gadget/GadgetInfo;I)Lcom/android/launcher2/gadget/Gadget;

    move-result-object v10

    .line 1893
    .local v10, gadget:Lcom/android/launcher2/gadget/Gadget;
    if-nez v10, :cond_1

    .line 1911
    :cond_0
    :goto_0
    return-void

    .line 1895
    :cond_1
    instance-of v1, v10, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1896
    move-object v0, v10

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 1898
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1899
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onCreate()V

    .line 1901
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 1903
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 1905
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 1908
    invoke-interface {v10}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    goto :goto_0
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1807
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v1, :cond_0

    .line 1834
    :goto_0
    return-void

    .line 1809
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    move v10, p2

    .line 1811
    :goto_1
    if-ge v10, p3, :cond_2

    .line 1812
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    move-object v6, v0

    .line 1813
    iget-wide v2, v6, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1814
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    :cond_1
    iget v2, v6, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 1811
    :goto_2
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    .line 1820
    :pswitch_0
    invoke-virtual {p0, v6, v9}, Lcom/android/launcher2/Launcher;->addItem(Lcom/android/launcher2/ItemInfo;Z)V

    goto :goto_2

    .line 1823
    :pswitch_1
    const v2, 0x7f03001e

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    move-object v0, v6

    check-cast v0, Lcom/android/launcher2/LiveFolderInfo;

    move-object v8, v0

    invoke-static {v2, p0, v3, v8}, Lcom/android/launcher2/LiveFolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/LiveFolderInfo;)Lcom/android/launcher2/LiveFolderIcon;

    move-result-object v2

    .line 1827
    iget-wide v3, v6, Lcom/android/launcher2/ItemInfo;->screenId:J

    iget v5, v6, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v8, v7

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    goto :goto_2

    .line 1833
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->requestLayout()V

    goto :goto_0

    .line 1816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public closeAnyFolder()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1312
    const/4 v2, 0x0

    .line 1313
    .local v2, r:Z
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder;

    .line 1314
    .local v0, f:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1315
    if-nez v2, :cond_1

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    move v2, v3

    :goto_1
    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 1318
    .end local v0           #f:Lcom/android/launcher2/Folder;
    :cond_3
    return v2
.end method

.method closeFolder(Lcom/android/launcher2/Folder;)Z
    .locals 1
    .parameter "folder"

    .prologue
    .line 1292
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    move-result v0

    return v0
.end method

.method closeFolder(Lcom/android/launcher2/Folder;Z)Z
    .locals 4
    .parameter "folder"
    .parameter "allowAnimation"

    .prologue
    const/4 v2, 0x0

    .line 1296
    if-nez p1, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return v2

    .line 1299
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1300
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 1301
    instance-of v2, p1, Lcom/android/launcher2/DropTarget;

    if-eqz v2, :cond_2

    .line 1303
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/DropTarget;

    move-object v2, v0

    invoke-virtual {v3, v2}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 1305
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/launcher2/Folder;->onClose(Z)V

    .line 1306
    const/4 v2, 0x1

    goto :goto_0
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 790
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 798
    return-void

    .line 792
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;
    .locals 2
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, ii:Lcom/android/launcher2/ItemIcon;
    instance-of v1, p2, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 638
    check-cast p2, Lcom/android/launcher2/ShortcutInfo;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->createShortcutIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;

    move-result-object v0

    .line 643
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {v0, p0}, Lcom/android/launcher2/ItemIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    :cond_1
    return-object v0

    .line 640
    .restart local p2
    :cond_2
    instance-of v1, p2, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v1, :cond_0

    .line 641
    check-cast p2, Lcom/android/launcher2/UserFolderInfo;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->createUserFolderIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1256
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1257
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1274
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    move v0, v2

    .line 1259
    goto :goto_1

    .line 1261
    :sswitch_1
    const-string v0, "debug.launcher2.dumpstate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->dumpState()V

    move v0, v2

    .line 1263
    goto :goto_1

    .line 1267
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1268
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 1270
    goto :goto_1

    .line 1257
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 1268
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher"

    .line 2069
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWorkspaceLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWaitingForResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedInstanceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDesktopItems.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFolders.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 2077
    const-string v0, "Launcher"

    const-string v0, "END launcher2 dump state"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    return-void
.end method

.method findGadget(J)Lcom/android/launcher2/gadget/Gadget;
    .locals 5
    .parameter "itemId"

    .prologue
    .line 1090
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/gadget/Gadget;

    .line 1091
    .local v1, g:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/gadget/GadgetInfo;

    iget-wide v3, p0, Lcom/android/launcher2/ItemInfo;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    move-object v3, v1

    .line 1096
    .end local v1           #g:Lcom/android/launcher2/gadget/Gadget;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finishBindingItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1919
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1920
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1924
    :cond_0
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1928
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v0}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1929
    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1932
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 1934
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationsMessage;->requareUpdateMessages()V

    .line 1936
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v0}, Lcom/android/launcher2/HotSeats;->finishBinding()V

    .line 1937
    return-void
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 1767
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEditingState()I
    .locals 1

    .prologue
    .line 1517
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    return v0
.end method

.method public getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;
    .locals 5
    .parameter "fi"

    .prologue
    const/4 v4, 0x0

    .line 1969
    if-nez p1, :cond_0

    move-object v0, v4

    .line 1977
    .end local p0
    :goto_0
    return-object v0

    .line 1972
    .restart local p0
    :cond_0
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1973
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/FolderIcon;

    move-object v0, p0

    goto :goto_0

    .line 1974
    .restart local p0
    :cond_1
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1975
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HotSeats;->getItemIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/FolderIcon;

    move-object v0, p0

    goto :goto_0

    .restart local p0
    :cond_2
    move-object v0, v4

    .line 1977
    goto :goto_0
.end method

.method getIconCache()Lcom/android/launcher2/IconCache;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    return-object v0
.end method

.method public getParentFolderIcon(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderIcon;
    .locals 1
    .parameter "si"

    .prologue
    .line 1981
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->getParentFolderInfo(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getFolderIcon(Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderIcon;

    move-result-object v0

    return-object v0
.end method

.method public getParentFolderInfo(Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/FolderInfo;
    .locals 4
    .parameter "si"

    .prologue
    .line 1961
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1963
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/FolderInfo;

    move-object v0, p0

    .line 1965
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTouchTranslator()Lcom/android/launcher2/DragController$TouchTranslator;
    .locals 2

    .prologue
    .line 1549
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1550
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentCellScreen()Lcom/android/launcher2/CellScreen;

    move-result-object v0

    .line 1552
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method public isInEditing()Z
    .locals 2

    .prologue
    .line 1513
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 367
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 375
    if-ne p2, v6, :cond_3

    .line 376
    sparse-switch p1, :sswitch_data_0

    .line 419
    :cond_0
    :goto_0
    :sswitch_0
    if-eq p1, v8, :cond_1

    const/4 v5, 0x7

    if-eq p1, v5, :cond_1

    if-eq p1, v7, :cond_1

    const/16 v5, 0x65

    if-eq p1, v5, :cond_1

    const/16 v5, 0xa

    if-ne p1, v5, :cond_2

    if-nez p2, :cond_2

    .line 424
    :cond_1
    iput-boolean v7, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 426
    :cond_2
    return-void

    .line 378
    :sswitch_1
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v5}, Lcom/android/launcher2/DragController;->clearLastDragInfo()V

    .line 379
    invoke-virtual {p0, p3}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 382
    :sswitch_2
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->completeAddShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 385
    :sswitch_3
    invoke-virtual {p0, p3}, Lcom/android/launcher2/Launcher;->addLiveFolder(Landroid/content/Intent;)V

    goto :goto_0

    .line 388
    :sswitch_4
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->completeAddLiveFolder(Landroid/content/Intent;)V

    goto :goto_0

    .line 391
    :sswitch_5
    invoke-direct {p0, p3}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 397
    :sswitch_6
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 398
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 399
    invoke-static {v1}, Lcom/android/launcher2/gadget/GadgetFactory;->getGadgetItemId(Landroid/os/Bundle;)J

    move-result-wide v3

    .line 400
    .local v3, itemId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 402
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Launcher;->findGadget(J)Lcom/android/launcher2/gadget/Gadget;

    move-result-object v2

    .line 403
    .local v2, gadget:Lcom/android/launcher2/gadget/Gadget;
    if-eqz v2, :cond_0

    .line 404
    invoke-interface {v2, v1}, Lcom/android/launcher2/gadget/Gadget;->updateConfig(Landroid/os/Bundle;)V

    goto :goto_0

    .line 410
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v3           #itemId:J
    :cond_3
    if-ne p1, v8, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 413
    const-string v5, "appWidgetId"

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 414
    .local v0, appWidgetId:I
    if-eq v0, v6, :cond_0

    .line 415
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v5, v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 376
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x7 -> :sswitch_1
        0x8 -> :sswitch_3
        0xa -> :sswitch_0
        0x65 -> :sswitch_6
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1288
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1344
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1345
    .local v4, tag:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_2

    .line 1346
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1363
    .end local v4           #tag:Ljava/lang/Object;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1348
    .restart local v4       #tag:Ljava/lang/Object;
    .restart local p1
    :cond_1
    move-object v0, v4

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v1, v0

    .line 1349
    .local v1, info:Lcom/android/launcher2/ShortcutInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v5, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1350
    .local v2, intent:Landroid/content/Intent;
    new-array v3, v11, [I

    .line 1351
    .local v3, pos:[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1352
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v3, v8

    aget v7, v3, v10

    aget v8, v3, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v3, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1354
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 1356
    iget v5, v1, Lcom/android/launcher2/ShortcutInfo;->mIconType:I

    if-ne v11, v5, :cond_0

    .line 1357
    invoke-virtual {v1, p0}, Lcom/android/launcher2/ShortcutInfo;->loadContactInfo(Landroid/content/Context;)V

    .line 1358
    check-cast p1, Lcom/android/launcher2/ShortcutIcon;

    .end local p1
    invoke-virtual {p1, p0, v1}, Lcom/android/launcher2/ShortcutIcon;->updateInfo(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_0

    .line 1360
    .end local v1           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pos:[I
    .restart local p1
    :cond_2
    instance-of v5, v4, Lcom/android/launcher2/FolderInfo;

    if-eqz v5, :cond_0

    .line 1361
    check-cast v4, Lcom/android/launcher2/FolderInfo;

    .end local v4           #tag:Ljava/lang/Object;
    invoke-direct {p0, v4, p1}, Lcom/android/launcher2/Launcher;->handleFolderClick(Lcom/android/launcher2/FolderInfo;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x100

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    const-string v3, "Launcher"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 213
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x10001

    const/high16 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 215
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 217
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 220
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 221
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v3}, Lcom/android/launcher2/IconCache;->updateDefaultIcon()V

    .line 222
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v3}, Lcom/android/launcher2/IconCache;->flush()V

    .line 223
    new-instance v3, Lcom/android/launcher2/DragController;

    invoke-direct {v3, p0}, Lcom/android/launcher2/DragController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 225
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->registerContentObservers()V

    .line 227
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 228
    new-instance v3, Lcom/android/launcher2/LauncherAppWidgetHost;

    const/16 v4, 0x400

    invoke-direct {v3, p0, p0, v4}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Lcom/android/launcher2/Launcher;I)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 230
    new-instance v3, Lcom/android/launcher2/ApplicationsMessage;

    invoke-direct {v3, p0}, Lcom/android/launcher2/ApplicationsMessage;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    .line 236
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    .line 237
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setWallpaperDimension()V

    .line 239
    const v3, 0x7f03001b

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 240
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupViews()V

    .line 246
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 249
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 250
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 252
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    .local v2, screenIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 262
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1608
    packed-switch p1, :pswitch_data_0

    .line 1613
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1610
    :pswitch_0
    new-instance v0, Lcom/android/launcher2/Launcher$CreateShortcut;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$CreateShortcut;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1608
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 875
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 904
    :goto_0
    return v0

    .line 879
    :cond_0
    const v0, 0x7f0a0020

    invoke-interface {p1, v1, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 881
    const/4 v0, 0x3

    const v1, 0x7f0a0011

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x57

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 884
    const/4 v0, 0x4

    const v1, 0x7f0a0012

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 887
    const/4 v0, 0x5

    const v1, 0x7f0a0013

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020065

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 890
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 894
    const/4 v1, 0x6

    const v2, 0x7f0a0015

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 898
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher2/LauncherPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 900
    const v1, 0x7f0a0022

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108040e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x4c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move v0, v4

    .line 904
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 838
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 840
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 842
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 844
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->unbindDesktopItems()V

    .line 846
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 847
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mScreenChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 849
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    .line 851
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 852
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 853
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWallpaperChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 854
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationsMessage;->destory()V

    .line 855
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 534
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 535
    .local v1, handled:Z
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    .line 536
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 538
    .local v0, gotKey:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v2

    .line 554
    .end local v0           #gotKey:Z
    :goto_0
    return v2

    .line 550
    :cond_0
    const/16 v2, 0x52

    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 554
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1463
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 1495
    :goto_0
    return v1

    .line 1467
    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_1

    .line 1468
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 1471
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 1474
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v0, :cond_2

    move v1, v2

    .line 1475
    goto :goto_0

    .line 1478
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1479
    iget-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1481
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    .line 1484
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    :cond_3
    :goto_2
    move v1, v2

    .line 1495
    goto :goto_0

    .line 1481
    :cond_4
    const/16 v1, 0x8

    goto :goto_1

    .line 1487
    :cond_5
    iget-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/Folder;

    if-nez v1, :cond_3

    .line 1489
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 1491
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x40

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 802
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 805
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeSystemDialogs()V

    .line 816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher2/Launcher;->mLastPausedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 820
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    goto :goto_0

    .line 822
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_3

    move v0, v5

    .line 826
    :goto_1
    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isDefaultScreenShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    goto :goto_0

    :cond_3
    move v0, v4

    .line 824
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    const/4 v1, 0x1

    .line 955
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 984
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 957
    :pswitch_0
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v0, v3, :cond_1

    .line 958
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->addItems()V

    :cond_0
    :goto_1
    move v0, v1

    .line 966
    goto :goto_0

    .line 959
    :cond_1
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v0, v2, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->sortDesktopItems()V

    goto :goto_1

    .line 963
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    goto :goto_1

    .line 968
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    move v0, v1

    .line 969
    goto :goto_0

    .line 971
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move v0, v1

    .line 972
    goto :goto_0

    .line 974
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 975
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    :goto_2
    move v0, v1

    .line 981
    goto :goto_0

    .line 976
    :cond_3
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-eq v0, v2, :cond_4

    .line 977
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    goto :goto_2

    .line 979
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    goto :goto_2

    .line 955
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 456
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 457
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mLastPausedTime:J

    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->enableTouchImprove(Z)V

    .line 460
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1618
    .line 1622
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 909
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 910
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    move v0, v3

    .line 911
    :goto_0
    iget v1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v1}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    .line 913
    :goto_1
    iget v2, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v2}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 916
    :goto_2
    if-eqz v0, :cond_6

    .line 917
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 922
    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->findSingleSlot(Z)Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 923
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuAddInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v0, :cond_5

    move v0, v3

    :goto_3
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 937
    :cond_0
    :goto_4
    if-nez v2, :cond_8

    move v0, v3

    :goto_5
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 938
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspacePreview:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-eq v0, v6, :cond_9

    .line 939
    :cond_1
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x42

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 942
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 950
    :goto_6
    return v3

    :cond_2
    move v0, v5

    .line 910
    goto :goto_0

    :cond_3
    move v1, v5

    .line 911
    goto :goto_1

    :cond_4
    move v2, v5

    .line 913
    goto :goto_2

    :cond_5
    move v0, v5

    .line 923
    goto :goto_3

    .line 924
    :cond_6
    if-eqz v1, :cond_7

    .line 925
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 929
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4

    .line 930
    :cond_7
    if-eqz v2, :cond_0

    .line 931
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x53

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 935
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4

    :cond_8
    move v0, v5

    .line 937
    goto :goto_5

    .line 944
    :cond_9
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 947
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_6
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 431
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    .line 434
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeExpectedForActivityResult:Z

    .line 435
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 436
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v0}, Lcom/android/launcher2/ApplicationsMessage;->requareUpdateMessages()V

    .line 437
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->updateWallpaper()V

    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->enableTouchImprove(Z)V

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->scrollToDefault()V

    .line 440
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 523
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 998
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 999
    return v1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 514
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onStart()V

    .line 515
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 516
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 517
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 499
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 500
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->onStop()V

    .line 501
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher2/DragLayer;->updateWallpaperOffset()V

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 508
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 509
    return-void

    .line 504
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 505
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "Launcher"

    const-string v2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onWorkspaceDropExternalComplate()V
    .locals 1

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

    invoke-virtual {v0}, Landroid/widget/GuidePopupWindow;->dismiss()V

    .line 1598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mEditingGuideWindow:Landroid/widget/GuidePopupWindow;

    .line 1600
    :cond_0
    return-void
.end method

.method processShortcut(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1100
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1101
    return-void
.end method

.method public reloadWidgetPreview()V
    .locals 2

    .prologue
    .line 775
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetThumbnailViewAdapter:Lcom/android/launcher2/WidgetThumbnailViewAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetThumbnailViewAdapter;->reloadWidgets()V

    .line 779
    return-void

    .line 776
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "launcherInfo"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 750
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 751
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/FolderInfo;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 1143
    sget-object v0, Lcom/android/launcher2/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    return-void
.end method

.method public removeGadget(Lcom/android/launcher2/ItemInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 758
    iget v4, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 759
    const/4 v2, 0x0

    .line 760
    .local v2, gadget:Lcom/android/launcher2/gadget/Gadget;
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/gadget/Gadget;

    .line 761
    .local v1, g:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 762
    move-object v2, v1

    .line 766
    .end local v1           #g:Lcom/android/launcher2/gadget/Gadget;
    :cond_1
    if-eqz v2, :cond_2

    .line 767
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 768
    invoke-interface {v2}, Lcom/android/launcher2/gadget/Gadget;->onDestroy()V

    .line 771
    .end local v2           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public scrollToDefault()V
    .locals 2

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    .line 444
    .local v0, cs:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 445
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 446
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 447
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 449
    :cond_0
    return-void
.end method

.method public setEditingState(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1521
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne p1, v0, :cond_1

    .line 1546
    :cond_0
    :goto_0
    return-void

    .line 1523
    :cond_1
    iget v0, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPrivacyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1528
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1543
    :goto_1
    iput p1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    .line 1544
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    if-eq p1, v4, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/android/launcher2/ErrorBar;->setMargins(IIII)V

    goto :goto_0

    .line 1530
    :pswitch_0
    const/16 v0, 0x9

    iget v1, p0, Lcom/android/launcher2/Launcher;->mEditingState:I

    if-ne v0, v1, :cond_3

    move v0, v2

    :goto_3
    invoke-direct {p0, v3, v0}, Lcom/android/launcher2/Launcher;->showEditPanel(ZZ)V

    .line 1531
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 1532
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Workspace;->setEditMode(ZZ)V

    goto :goto_1

    :cond_3
    move v0, v3

    .line 1530
    goto :goto_3

    .line 1535
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Launcher;->showEditPanel(ZZ)V

    .line 1536
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 1537
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Workspace;->setEditMode(ZZ)V

    goto :goto_1

    .line 1540
    :pswitch_2
    invoke-direct {p0, v2, v2}, Lcom/android/launcher2/Launcher;->showEditPanel(ZZ)V

    goto :goto_1

    .line 1544
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2

    .line 1528
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method showError(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mErrorBar:Lcom/android/launcher2/ErrorBar;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ErrorBar;->showError(I)V

    .line 783
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDeleteZone:Lcom/android/launcher2/DeleteZone;

    invoke-virtual {v0}, Lcom/android/launcher2/DeleteZone;->onShowError()V

    .line 784
    return-void
.end method

.method public showPreview(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1499
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    :goto_0
    return-void

    .line 1502
    :cond_0
    if-eqz p1, :cond_1

    .line 1503
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Lcom/android/launcher2/Background;

    invoke-virtual {v0}, Lcom/android/launcher2/Background;->setEnterPreviewMode()V

    .line 1507
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/launcher2/HotSeats;->setVisibility(I)V

    .line 1508
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingExit:Landroid/view/animation/Animation;

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/launcher2/HotSeats;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1509
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->showPreview(Z)V

    goto :goto_0

    .line 1505
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayerBackground:Lcom/android/launcher2/Background;

    invoke-virtual {v0}, Lcom/android/launcher2/Background;->setExitPreviewMode()V

    goto :goto_1

    .line 1507
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 1508
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseatEditingEnter:Landroid/view/animation/Animation;

    goto :goto_3
.end method

.method startActivity(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1366
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1368
    :try_start_0
    instance-of v1, p2, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 1369
    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v1, v0

    .line 1370
    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutInfo;->onLaunch()V

    .line 1371
    invoke-static {p0, v1}, Lcom/android/launcher2/LauncherModel;->updateItemFlagsInDatabaseDelayed(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 1372
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/ApplicationsMessage;->onLaunchApplication(Landroid/content/ComponentName;)V

    .line 1373
    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1374
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)Z

    .line 1377
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    :goto_0
    return-void

    .line 1378
    :catch_0
    move-exception v1

    .line 1379
    const v2, 0x7f0a001e

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1380
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher cannot start this activity(app2sd?)tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0a0007

    const/4 v1, 0x0

    .line 1387
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1388
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1397
    :goto_0
    return-void

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1391
    :catch_1
    move-exception v0

    .line 1392
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1393
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startBinding()V
    .locals 4

    .prologue
    .line 1777
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->notifyGadgetStateChanged(I)V

    .line 1778
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1780
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1781
    .local v2, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    .line 1782
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1784
    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 1782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1798
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotSeats:Lcom/android/launcher2/HotSeats;

    invoke-virtual {v3}, Lcom/android/launcher2/HotSeats;->startBinding()V

    .line 1799
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 863
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    move-object v1, v0

    .line 867
    :goto_0
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 869
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 871
    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method public updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mApplicationsMessage:Lcom/android/launcher2/ApplicationsMessage;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ApplicationsMessage;->updateFolderMessage(Lcom/android/launcher2/FolderInfo;)V

    .line 2042
    return-void
.end method

.method public updateWallpaperOffset(FFFF)V
    .locals 1
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher2/DragLayer;->updateWallpaperOffset(FFFF)V

    .line 1758
    return-void
.end method
