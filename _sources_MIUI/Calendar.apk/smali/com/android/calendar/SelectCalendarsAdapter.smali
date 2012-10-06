.class public Lcom/android/calendar/SelectCalendarsAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "SelectCalendarsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;,
        Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;
    }
.end annotation


# static fields
.field private static final ACCOUNT_COLUMN:I = 0x1

.field private static final ACCOUNT_SELECTION:Ljava/lang/String; = "_sync_account=? AND _sync_account_type=?"

.field private static final CALENDARS_ORDERBY:Ljava/lang/String; = "\"primary\" DESC,displayName COLLATE NOCASE"

.field private static final CHANGES_SIZE:I = 0x2

.field private static final COLLATE_NOCASE:Ljava/lang/String; = " COLLATE NOCASE"

.field private static final COLOR_COLUMN:I = 0x4

.field private static final ID_COLUMN:I = 0x0

.field private static final IS_PRIMARY:Ljava/lang/String; = "\"primary\""

.field private static final MIN_UPDATE_TOKEN:I = 0x3e8

.field private static final NAME_COLUMN:I = 0x3

.field private static final OWNER_COLUMN:I = 0x2

.field private static final PRIMARY_COLUMN:I = 0x7

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final REFRESH_DELAY:I = 0x1388

.field private static final REFRESH_DURATION:I = 0xea60

.field private static final SELECTED_COLUMN:I = 0x5

.field private static final SELECTED_INDEX:I = 0x0

.field private static final SYNCED_COLUMN:I = 0x6

.field private static final SYNCED_INDEX:I = 0x1

.field private static final SYNC_VIS_BUTTON_RES:[I = null

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field private static mCalendarsUpdater:Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

.field private static mChildrenCursors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsDuplicateName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mRefresh:Z

.field private static final mStopRefreshing:Ljava/lang/Runnable;

.field private static mUpdateToken:I

.field private static notSyncedNotVisible:Ljava/lang/String;

.field private static syncedNotVisible:Ljava/lang/String;

.field private static syncedVisible:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/android/calendar/SelectCalendarsActivity;

.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mCalendarChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarInitialStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNumAccounts:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 55
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->SYNC_VIS_BUTTON_RES:[I

    .line 65
    new-instance v0, Lcom/android/calendar/SelectCalendarsAdapter$1;

    invoke-direct {v0}, Lcom/android/calendar/SelectCalendarsAdapter$1;-><init>()V

    sput-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->mChildrenCursors:Ljava/util/Map;

    .line 91
    const/16 v0, 0x3e8

    sput v0, Lcom/android/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    .line 96
    sput-boolean v3, Lcom/android/calendar/SelectCalendarsAdapter;->mRefresh:Z

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "_sync_account"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "selected"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "(_sync_account=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->PROJECTION:[Ljava/lang/String;

    return-void

    .line 55
    nop

    :array_0
    .array-data 0x4
        0x1at 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/calendar/SelectCalendarsActivity;)V
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "act"

    .prologue
    .line 216
    invoke-direct {p0, p2, p1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarInitialStates:Ljava/util/Map;

    .line 217
    const v1, 0x7f08001a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/SelectCalendarsAdapter;->syncedVisible:Ljava/lang/String;

    .line 218
    const v1, 0x7f08001b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/SelectCalendarsAdapter;->syncedNotVisible:Ljava/lang/String;

    .line 219
    const v1, 0x7f08001c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/SelectCalendarsAdapter;->notSyncedNotVisible:Ljava/lang/String;

    .line 221
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 223
    iput-object p3, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mActivity:Lcom/android/calendar/SelectCalendarsActivity;

    .line 224
    sget-object v1, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarsUpdater:Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;-><init>(Lcom/android/calendar/SelectCalendarsAdapter;Landroid/content/ContentResolver;)V

    sput-object v1, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarsUpdater:Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    .line 228
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mNumAccounts:I

    .line 229
    iget v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mNumAccounts:I

    if-nez v1, :cond_1

    .line 231
    const-string v1, "Calendar"

    const-string v2, "SelectCalendarsAdapter: No accounts were returned!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 235
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mActivity:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-virtual {v1}, Lcom/android/calendar/SelectCalendarsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mView:Landroid/view/View;

    .line 239
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/calendar/SelectCalendarsAdapter;->mRefresh:Z

    .line 240
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/calendar/SelectCalendarsAdapter;->mRefresh:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/android/calendar/SelectCalendarsAdapter;->mRefresh:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->mChildrenCursors:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/SelectCalendarsAdapter;)Lcom/android/calendar/SelectCalendarsActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mActivity:Lcom/android/calendar/SelectCalendarsActivity;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarsUpdater:Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/SelectCalendarsAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 279
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 283
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 307
    const/4 v13, 0x1

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, account:Ljava/lang/String;
    sget-object v12, Lcom/android/calendar/SelectCalendarsAdapter;->notSyncedNotVisible:Ljava/lang/String;

    .line 309
    .local v12, status:Ljava/lang/String;
    const/4 v11, 0x2

    .line 310
    .local v11, state:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 311
    .local v10, position:I
    const/4 v13, 0x0

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 314
    .local v5, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    move-object v13, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Boolean;

    .line 316
    .local v7, initialState:[Ljava/lang/Boolean;
    if-nez v7, :cond_0

    .line 317
    const/4 v13, 0x2

    new-array v7, v13, [Ljava/lang/Boolean;

    .line 318
    const/4 v13, 0x0

    const/4 v14, 0x5

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    :goto_0
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v7, v13

    .line 319
    const/4 v13, 0x1

    const/4 v14, 0x6

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    :goto_1
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v7, v13

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarInitialStates:Ljava/util/Map;

    move-object v13, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v13, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_0
    const/4 v13, 0x1

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 324
    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 325
    sget-object v12, Lcom/android/calendar/SelectCalendarsAdapter;->syncedVisible:Ljava/lang/String;

    .line 326
    const/4 v11, 0x0

    .line 333
    :cond_1
    :goto_2
    const v13, 0x7f0c0012

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x4

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Lcom/android/calendar/Utils;->getColorChip(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    const/4 v13, 0x3

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, name:Ljava/lang/String;
    const/4 v13, 0x2

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 337
    .local v9, owner:Ljava/lang/String;
    sget-object v13, Lcom/android/calendar/SelectCalendarsAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    sget-object v13, Lcom/android/calendar/SelectCalendarsAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 339
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " <"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 345
    :cond_2
    const v13, 0x7f0c0014

    move-object/from16 v0, p1

    move v1, v13

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/calendar/SelectCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 346
    const v13, 0x7f0c0015

    move-object/from16 v0, p1

    move v1, v13

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/calendar/SelectCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 347
    const v13, 0x7f0c0013

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/MultiStateButton;

    .line 351
    .local v4, button:Lcom/android/calendar/MultiStateButton;
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/calendar/MultiStateButton;->setTag(Ljava/lang/Object;)V

    .line 352
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 353
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/calendar/MultiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    sget-object v13, Lcom/android/calendar/SelectCalendarsAdapter;->SYNC_VIS_BUTTON_RES:[I

    invoke-virtual {v4, v13}, Lcom/android/calendar/MultiStateButton;->setButtonResources([I)V

    .line 355
    invoke-virtual {v4, v11}, Lcom/android/calendar/MultiStateButton;->setState(I)Z

    .line 356
    return-void

    .line 318
    .end local v4           #button:Lcom/android/calendar/MultiStateButton;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #owner:Ljava/lang/String;
    .restart local p2
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 319
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 328
    :cond_5
    sget-object v12, Lcom/android/calendar/SelectCalendarsAdapter;->syncedNotVisible:Ljava/lang/String;

    .line 329
    const/4 v11, 0x1

    goto/16 :goto_2
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 360
    const-string v4, "_sync_account"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 361
    .local v1, accountColumn:I
    const-string v4, "_sync_account_type"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 362
    .local v3, accountTypeColumn:I
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, account:Ljava/lang/String;
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, accountType:Ljava/lang/String;
    const/high16 v4, 0x7f0c

    invoke-static {p1, v4, v0}, Lcom/android/calendar/SelectCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 365
    const v4, 0x7f0c0001

    invoke-virtual {p0, v2}, Lcom/android/calendar/SelectCalendarsAdapter;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/calendar/SelectCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 366
    return-void
.end method

.method public cancelRefreshStopDelay()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mView:Landroid/view/View;

    sget-object v1, Lcom/android/calendar/SelectCalendarsAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method public doSaveAction()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x3e8

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 257
    sget-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarsUpdater:Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    sget v1, Lcom/android/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;->cancelOperation(I)V

    .line 258
    sget v0, Lcom/android/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    .line 261
    sget v0, Lcom/android/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    if-ge v0, v2, :cond_0

    sput v2, Lcom/android/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 264
    .local v8, changeKeys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 266
    .local v9, id:J
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Boolean;

    .line 267
    .local v7, change:[Ljava/lang/Boolean;
    aget-object v0, v7, v13

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v11, v14

    .line 268
    .local v11, newSelected:I
    :goto_1
    aget-object v0, v7, v14

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v12, v14

    .line 270
    .local v12, newSynced:I
    :goto_2
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 271
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "selected"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const-string v0, "sync_events"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    sget-object v0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarsUpdater:Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    sget v1, Lcom/android/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v11           #newSelected:I
    .end local v12           #newSynced:I
    :cond_1
    move v11, v13

    .line 267
    goto :goto_1

    .restart local v11       #newSelected:I
    :cond_2
    move v12, v13

    .line 268
    goto :goto_2

    .line 276
    .end local v7           #change:[Ljava/lang/Boolean;
    .end local v9           #id:J
    .end local v11           #newSelected:I
    :cond_3
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 7
    .parameter "groupCursor"

    .prologue
    .line 370
    const-string v5, "_sync_account"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 371
    .local v1, accountColumn:I
    const-string v5, "_sync_account_type"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 372
    .local v3, accountTypeColumn:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, account:Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, accountType:Ljava/lang/String;
    sget-object v5, Lcom/android/calendar/SelectCalendarsAdapter;->mChildrenCursors:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 376
    .local v4, childCursor:Landroid/database/Cursor;
    new-instance v5, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-direct {v5, p0, v6, v0, v2}, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;-><init>(Lcom/android/calendar/SelectCalendarsAdapter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->run()V

    .line 377
    return-object v4
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 296
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mActivity:Lcom/android/calendar/SelectCalendarsActivity;

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/calendar/SelectCalendarsActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 297
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 302
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 298
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 299
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Calendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label for account type , type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 180
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 181
    .local v1, id:J
    sget-object v7, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 182
    .local v5, uri:Landroid/net/Uri;
    sget-object v4, Lcom/android/calendar/SelectCalendarsAdapter;->syncedNotVisible:Ljava/lang/String;

    .line 184
    .local v4, status:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarInitialStates:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Boolean;

    .line 185
    .local v3, initialState:[Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    iget-object v7, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Boolean;

    .line 194
    .local v0, change:[Ljava/lang/Boolean;
    :goto_0
    aget-object v7, v0, v9

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v9

    .line 196
    sget-object v4, Lcom/android/calendar/SelectCalendarsAdapter;->syncedNotVisible:Ljava/lang/String;

    .line 208
    :goto_1
    const v7, 0x7f0c0015

    invoke-static {v6, v7, v4}, Lcom/android/calendar/SelectCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 209
    aget-object v7, v0, v9

    aget-object v8, v3, v9

    if-ne v7, v8, :cond_0

    aget-object v7, v0, v10

    aget-object v8, v3, v10

    if-ne v7, v8, :cond_0

    .line 211
    iget-object v7, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_0
    return-void

    .line 188
    .end local v0           #change:[Ljava/lang/Boolean;
    :cond_1
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Boolean;

    .line 189
    .restart local v0       #change:[Ljava/lang/Boolean;
    aget-object v7, v3, v9

    aput-object v7, v0, v9

    .line 190
    aget-object v7, v3, v10

    aput-object v7, v0, v10

    .line 191
    iget-object v7, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_2
    aget-object v7, v0, v10

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 199
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v10

    .line 200
    sget-object v4, Lcom/android/calendar/SelectCalendarsAdapter;->notSyncedNotVisible:Ljava/lang/String;

    goto :goto_1

    .line 204
    :cond_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v10

    .line 205
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v9

    .line 206
    sget-object v4, Lcom/android/calendar/SelectCalendarsAdapter;->syncedVisible:Ljava/lang/String;

    goto :goto_1
.end method

.method public startRefreshStopDelay()V
    .locals 4

    .prologue
    .line 243
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/SelectCalendarsAdapter;->mRefresh:Z

    .line 244
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter;->mView:Landroid/view/View;

    sget-object v1, Lcom/android/calendar/SelectCalendarsAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    return-void
.end method
