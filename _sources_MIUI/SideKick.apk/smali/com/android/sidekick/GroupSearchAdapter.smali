.class Lcom/android/sidekick/GroupSearchAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "GroupSearchAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;,
        Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;,
        Lcom/android/sidekick/GroupSearchAdapter$OnConfirmDeleteListener;,
        Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private mContext:Landroid/content/Context;

.field mCurrentDeleteItem:Lcom/android/sidekick/ResultItem;

.field mCurrentQuery:Ljava/lang/CharSequence;

.field private mDeleteRecentListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mFirstItem:Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

.field private mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

.field private mItemLeftPadding:F

.field private mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusListener:Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;Ljava/util/WeakHashMap;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, outsideDrawablesCache:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    const v0, 0x7f030006

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 69
    iput-boolean v2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mClosed:Z

    .line 75
    iput-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mCurrentDeleteItem:Lcom/android/sidekick/ResultItem;

    .line 78
    iput-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mCurrentQuery:Ljava/lang/CharSequence;

    .line 701
    iput-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mFirstItem:Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

    .line 116
    iput-object p1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mStatusListener:Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;

    .line 118
    new-instance v0, Lcom/android/sidekick/GroupCorpus;

    iget-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/sidekick/GroupCorpus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    .line 120
    iput-object p3, p0, Lcom/android/sidekick/GroupSearchAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 122
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    new-instance v1, Lcom/android/sidekick/GroupSearchAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/sidekick/GroupSearchAdapter$1;-><init>(Lcom/android/sidekick/GroupSearchAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    .line 135
    new-instance v0, Lcom/android/sidekick/GroupSearchAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/sidekick/GroupSearchAdapter$2;-><init>(Lcom/android/sidekick/GroupSearchAdapter;)V

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mDeleteRecentListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 152
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mItemLeftPadding:F

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/sidekick/GroupSearchAdapter;)Lcom/android/sidekick/GroupCorpus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sidekick/GroupSearchAdapter;)Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mStatusListener:Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;

    return-object v0
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "resourceUri"

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 486
    .local v0, cached:Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    .line 487
    const/4 v1, 0x0

    .line 490
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "component"

    .prologue
    const/4 v6, 0x0

    const-string v7, "SuggestionsAdapter"

    .line 546
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 549
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 555
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 556
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 557
    const-string v4, "SuggestionsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid icon resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 561
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v4

    .line 550
    :catch_0
    move-exception v2

    .line 551
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SuggestionsAdapter"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 552
    goto :goto_0

    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v4, v1

    .line 561
    goto :goto_0
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "component"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 529
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, componentIconKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/sidekick/GroupSearchAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 532
    iget-object v5, p0, Lcom/android/sidekick/GroupSearchAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 533
    .local v0, cached:Landroid/graphics/drawable/Drawable$ConstantState;
    iget-object v5, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v5, p2}, Lcom/android/sidekick/GroupCorpus;->getSearchableContext(Landroid/database/Cursor;)Landroid/content/Context;

    move-result-object v3

    .line 534
    .local v3, providerContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move-object v5, v6

    .line 542
    .end local v0           #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v3           #providerContext:Landroid/content/Context;
    :goto_0
    return-object v5

    .line 534
    .restart local v0       #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v3       #providerContext:Landroid/content/Context;
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    .line 538
    .end local v0           #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v3           #providerContext:Landroid/content/Context;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/sidekick/GroupSearchAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 540
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_3

    move-object v4, v6

    .line 541
    .local v4, toCache:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_1
    iget-object v5, p0, Lcom/android/sidekick/GroupSearchAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    .line 542
    goto :goto_0

    .line 540
    .end local v4           #toCache:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    move-object v4, v5

    goto :goto_1
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "cursor"

    .prologue
    .line 501
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v4, p1}, Lcom/android/sidekick/GroupCorpus;->getIntentComponentName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, c:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 503
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 504
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 505
    invoke-direct {p0, v1, p1}, Lcom/android/sidekick/GroupSearchAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 506
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 524
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v4

    .line 510
    .restart local v1       #component:Landroid/content/ComponentName;
    :cond_0
    const-string v4, "SuggestionsAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad component name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_1
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v4, p1}, Lcom/android/sidekick/GroupCorpus;->getSearchableInfo(Landroid/database/Cursor;)Landroid/app/SearchableInfo;

    move-result-object v3

    .line 516
    .local v3, si:Landroid/app/SearchableInfo;
    if-eqz v3, :cond_2

    .line 517
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/android/sidekick/GroupSearchAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 518
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    move-object v4, v2

    .line 519
    goto :goto_0

    .line 524
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0
.end method

.method private getDrawable(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .parameter "uri"
    .parameter "cursor"

    .prologue
    const/4 v11, 0x0

    const-string v7, "Error closing icon stream for "

    const-string v12, "SuggestionsAdapter"

    .line 447
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, scheme:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v7, p2}, Lcom/android/sidekick/GroupCorpus;->getSearchableInfo(Landroid/database/Cursor;)Landroid/app/SearchableInfo;

    move-result-object v5

    .line 449
    .local v5, si:Landroid/app/SearchableInfo;
    if-nez v5, :cond_0

    move-object v7, v11

    .line 480
    .end local v4           #scheme:Ljava/lang/String;
    .end local v5           #si:Landroid/app/SearchableInfo;
    :goto_0
    return-object v7

    .line 452
    .restart local v4       #scheme:Ljava/lang/String;
    .restart local v5       #si:Landroid/app/SearchableInfo;
    :cond_0
    iget-object v7, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v7, p2}, Lcom/android/sidekick/GroupCorpus;->getSearchableContext(Landroid/database/Cursor;)Landroid/content/Context;

    move-result-object v2

    .line 453
    .local v2, providerContext:Landroid/content/Context;
    const-string v7, "android.resource"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 455
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 458
    .local v3, r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_1
    iget-object v7, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v8, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_0

    .line 459
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 460
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resource does not exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 478
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #providerContext:Landroid/content/Context;
    .end local v3           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v4           #scheme:Ljava/lang/String;
    .end local v5           #si:Landroid/app/SearchableInfo;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 479
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v7, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v11

    .line 480
    goto :goto_0

    .line 464
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v2       #providerContext:Landroid/content/Context;
    .restart local v4       #scheme:Ljava/lang/String;
    .restart local v5       #si:Landroid/app/SearchableInfo;
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 465
    .local v6, stream:Ljava/io/InputStream;
    if-nez v6, :cond_2

    .line 466
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 469
    :cond_2
    const/4 v7, 0x0

    :try_start_4
    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 472
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 473
    :catch_2
    move-exception v0

    .line 474
    .local v0, ex:Ljava/io/IOException;
    :try_start_6
    const-string v8, "SuggestionsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error closing icon stream for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 471
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 472
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 475
    :goto_1
    :try_start_8
    throw v7

    .line 473
    :catch_3
    move-exception v0

    .line 474
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v8, "SuggestionsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error closing icon stream for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "drawableId"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    .line 408
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v6, v9

    .line 441
    :goto_0
    return-object v6

    .line 413
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 415
    .local v4, resourceId:I
    iget-object v6, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v6, p2}, Lcom/android/sidekick/GroupCorpus;->getSearchableContext(Landroid/database/Cursor;)Landroid/content/Context;

    move-result-object v3

    .line 416
    .local v3, providerContext:Landroid/content/Context;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, drawableUri:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/sidekick/GroupSearchAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 420
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    move-object v6, v0

    .line 421
    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 426
    invoke-direct {p0, v1, v0}, Lcom/android/sidekick/GroupSearchAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    .line 427
    goto :goto_0

    .line 428
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableUri:Ljava/lang/String;
    .end local v3           #providerContext:Landroid/content/Context;
    .end local v4           #resourceId:I
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 430
    .local v2, nfe:Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/android/sidekick/GroupSearchAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 431
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    move-object v6, v0

    .line 432
    goto :goto_0

    .line 434
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 435
    .local v5, uri:Landroid/net/Uri;
    invoke-direct {p0, v5, p2}, Lcom/android/sidekick/GroupSearchAdapter;->getDrawable(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 436
    invoke-direct {p0, p1, v0}, Lcom/android/sidekick/GroupSearchAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object v6, v0

    .line 437
    goto :goto_0

    .line 438
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 440
    .local v2, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon resource not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 441
    goto :goto_0
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 323
    iget-object v2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v2, p1}, Lcom/android/sidekick/GroupCorpus;->getIcon1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/sidekick/GroupSearchAdapter;->getDrawableFromResourceValue(Ljava/lang/String;Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 325
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 328
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/sidekick/GroupSearchAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v1, p1}, Lcom/android/sidekick/GroupCorpus;->getIcon2(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/sidekick/GroupSearchAdapter;->getDrawableFromResourceValue(Ljava/lang/String;Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private makeHighLight(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .parameter "text"
    .parameter "highLight"

    .prologue
    .line 290
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 291
    .local v5, spanner:Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    .local v4, sp:I
    const/4 v2, 0x0

    .local v2, pp:I
    const/4 v0, 0x0

    .line 293
    .local v0, ep:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v0, v6, :cond_3

    .line 305
    :cond_2
    :goto_1
    return-object v5

    .line 297
    :cond_3
    move v4, v0

    .line 298
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ep:I
    .local v1, ep:I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v3, v2, 0x1

    .end local v2           #pp:I
    .local v3, pp:I
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_4

    move v0, v1

    .end local v1           #ep:I
    .restart local v0       #ep:I
    move v2, v3

    .end local v3           #pp:I
    .restart local v2       #pp:I
    goto :goto_2

    .end local v0           #ep:I
    .end local v2           #pp:I
    .restart local v1       #ep:I
    .restart local v3       #pp:I
    :cond_4
    move v0, v1

    .end local v1           #ep:I
    .restart local v0       #ep:I
    move v2, v3

    .line 299
    .end local v3           #pp:I
    .restart local v2       #pp:I
    :cond_5
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    iget-object v7, p0, Lcom/android/sidekick/GroupSearchAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f080005

    invoke-direct {v6, v7, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v4, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 301
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt v2, v6, :cond_0

    goto :goto_1
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "v"
    .parameter "drawable"

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/sidekick/GroupSearchAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 338
    return-void
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .parameter "v"
    .parameter "drawable"
    .parameter "goneForNull"

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    if-nez p2, :cond_1

    .line 344
    if-eqz p3, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    :goto_1
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 354
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "v"
    .parameter "text"
    .parameter "highLight"

    .prologue
    .line 309
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    :goto_1
    return-void

    .line 312
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/sidekick/GroupSearchAdapter;->makeHighLight(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "resourceUri"
    .parameter "drawable"

    .prologue
    .line 494
    if-eqz p2, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const v9, 0x7f020018

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

    .line 238
    .local v2, views:Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v4, p3}, Lcom/android/sidekick/GroupCorpus;->getText1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sidekick/GroupSearchAdapter;->mCurrentQuery:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/sidekick/GroupSearchAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 241
    :cond_0
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v3, p3}, Lcom/android/sidekick/GroupCorpus;->getText2(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, text2:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 245
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 246
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 247
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 255
    :cond_1
    :goto_0
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1, v8}, Lcom/android/sidekick/GroupSearchAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 258
    .end local v1           #text2:Ljava/lang/CharSequence;
    :cond_2
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 259
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Lcom/android/sidekick/GroupSearchAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v3, v4, v7}, Lcom/android/sidekick/GroupSearchAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 262
    :cond_3
    iget-object v3, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v3, p3}, Lcom/android/sidekick/GroupCorpus;->isMultiIconComponent(Landroid/database/Cursor;)Z

    move-result v0

    .line 264
    .local v0, isMultiIcon:Z
    iget-object v3, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v3, p3}, Lcom/android/sidekick/GroupCorpus;->getColumnStatus(Landroid/database/Cursor;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 286
    :goto_1
    iget v3, p0, Lcom/android/sidekick/GroupSearchAdapter;->mItemLeftPadding:F

    float-to-int v3, v3

    invoke-virtual {p1, v3, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 287
    return-void

    .line 250
    .end local v0           #isMultiIcon:Z
    .restart local v1       #text2:Ljava/lang/CharSequence;
    :cond_4
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 252
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 267
    .end local v1           #text2:Ljava/lang/CharSequence;
    .restart local v0       #isMultiIcon:Z
    :pswitch_0
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 268
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    invoke-direct {p0, p3}, Lcom/android/sidekick/GroupSearchAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/android/sidekick/GroupSearchAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 270
    :cond_5
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 268
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/sidekick/GroupSearchAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 273
    :pswitch_1
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    .line 274
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    invoke-direct {p0, p3}, Lcom/android/sidekick/GroupSearchAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_3
    invoke-direct {p0, v3, v4}, Lcom/android/sidekick/GroupSearchAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 276
    :cond_7
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_8
    move-object v4, v8

    .line 274
    goto :goto_3

    .line 279
    :pswitch_2
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    .line 280
    iget-object v3, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-direct {p0, p3}, Lcom/android/sidekick/GroupSearchAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_4
    invoke-direct {p0, v3, v4}, Lcom/android/sidekick/GroupSearchAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 282
    :cond_9
    const v3, 0x7f02001a

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_a
    move-object v4, v8

    .line 280
    goto :goto_4

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    const-string v2, "SuggestionsAdapter"

    .line 200
    iget-boolean v1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mClosed:Z

    if-eqz v1, :cond_1

    .line 201
    const-string v1, "SuggestionsAdapter"

    const-string v1, "Tried to change cursor after adapter was closed."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SuggestionsAdapter"

    const-string v1, "error changing cursor and caching columns"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sidekick/GroupSearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 192
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupCorpus;->close()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mClosed:Z

    .line 194
    return-void
.end method

.method public configureItem(Landroid/view/View;II)V
    .locals 5
    .parameter "item"
    .parameter "position"
    .parameter "headerState"

    .prologue
    const/4 v4, 0x1

    .line 725
    if-nez p1, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mFirstItem:Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

    if-eqz v2, :cond_2

    .line 729
    iget-object v2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mFirstItem:Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

    iget-object v2, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mFirstItem:Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

    .line 733
    :cond_2
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 734
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 735
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    sub-int v2, p2, v4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p3, v4, :cond_0

    iget-object v2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v2, v0}, Lcom/android/sidekick/GroupCorpus;->getColumnStatus(Landroid/database/Cursor;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 738
    check-cast v1, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

    .end local v1           #tag:Ljava/lang/Object;
    iput-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mFirstItem:Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

    .line 739
    iget-object v2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mFirstItem:Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

    iget-object v2, v2, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 2
    .parameter "header"
    .parameter "position"
    .parameter "alpha"

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 706
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 707
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-direct {p0, v0}, Lcom/android/sidekick/GroupSearchAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 709
    :cond_0
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 360
    if-nez p1, :cond_0

    move-object v4, v5

    .line 387
    :goto_0
    return-object v4

    .line 364
    :cond_0
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v4, p1}, Lcom/android/sidekick/GroupCorpus;->getQuery(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, query:Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v4, v1

    .line 366
    goto :goto_0

    .line 369
    :cond_1
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v4, p1}, Lcom/android/sidekick/GroupCorpus;->getSearchableInfo(Landroid/database/Cursor;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 370
    .local v2, si:Landroid/app/SearchableInfo;
    if-nez v2, :cond_2

    move-object v4, v5

    .line 371
    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 375
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v4, p1}, Lcom/android/sidekick/GroupCorpus;->getIntentData(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_3

    move-object v4, v0

    .line 377
    goto :goto_0

    .line 381
    .end local v0           #data:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 382
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v4, p1}, Lcom/android/sidekick/GroupCorpus;->getText1(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, text1:Ljava/lang/String;
    if-eqz v3, :cond_4

    move-object v4, v3

    .line 384
    goto :goto_0

    .end local v3           #text1:Ljava/lang/String;
    :cond_4
    move-object v4, v5

    .line 387
    goto :goto_0
.end method

.method createCorpusIntent(Landroid/database/Cursor;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 13
    .parameter "c"
    .parameter "userQuery"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v0, p1}, Lcom/android/sidekick/GroupCorpus;->getIntentAction(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, action:Ljava/lang/String;
    const-string v0, "android.search.action.ZILCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const/4 v0, 0x0

    .line 618
    .end local v1           #action:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 596
    .restart local v1       #action:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 597
    const-string v1, "android.intent.action.SEARCH"

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v0, p1}, Lcom/android/sidekick/GroupCorpus;->getIntentData(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    .line 602
    .local v10, data:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 603
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v0, p1}, Lcom/android/sidekick/GroupCorpus;->getIntentDataID(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v12

    .line 604
    .local v12, id:Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 608
    .end local v12           #id:Ljava/lang/String;
    :cond_2
    if-nez v10, :cond_3

    const/4 v0, 0x0

    move-object v2, v0

    .line 610
    .local v2, dataUri:Landroid/net/Uri;
    :goto_1
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v0, p1}, Lcom/android/sidekick/GroupCorpus;->getIntentComponentName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 612
    .local v6, componentName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v0, p1}, Lcom/android/sidekick/GroupCorpus;->getQuery(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, query:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v0, p1}, Lcom/android/sidekick/GroupCorpus;->getIntentExtraData(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .local v3, extraData:Ljava/lang/String;
    move-object v0, p0

    move-object v5, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object v9, p1

    .line 615
    invoke-virtual/range {v0 .. v9}, Lcom/android/sidekick/GroupSearchAdapter;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 608
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v3           #extraData:Ljava/lang/String;
    .end local v4           #query:Ljava/lang/String;
    .end local v6           #componentName:Ljava/lang/String;
    :cond_3
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 617
    .end local v1           #action:Ljava/lang/String;
    .end local v10           #data:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 618
    .local v11, e:Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;
    .locals 5
    .parameter "action"
    .parameter "data"
    .parameter "extraData"
    .parameter "query"
    .parameter "userQuery"
    .parameter "componentName"
    .parameter "actionKey"
    .parameter "actionMsg"
    .parameter "c"

    .prologue
    .line 625
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 628
    if-eqz p2, :cond_0

    .line 629
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 631
    :cond_0
    if-eqz p5, :cond_1

    .line 632
    const-string v3, "user_query"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    :cond_1
    if-eqz p4, :cond_2

    .line 635
    const-string v3, "query"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    :cond_2
    if-eqz p3, :cond_3

    .line 638
    const-string v3, "intent_extra_data_key"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    :cond_3
    if-eqz p7, :cond_4

    .line 642
    const-string v3, "action_key"

    invoke-virtual {v1, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    const-string v3, "action_msg"

    invoke-virtual {v1, v3, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    :cond_4
    const/4 v0, 0x0

    .line 647
    .local v0, component:Landroid/content/ComponentName;
    if-eqz p6, :cond_5

    .line 648
    invoke-static {p6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 651
    :cond_5
    iget-object v3, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v3, p9}, Lcom/android/sidekick/GroupCorpus;->getIntentViewAsFile(Landroid/database/Cursor;)Z

    move-result v2

    .line 653
    .local v2, viewAsFile:Z
    if-nez v0, :cond_8

    if-eqz v2, :cond_8

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 654
    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaFile;->getMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    :cond_6
    :goto_0
    if-nez v0, :cond_7

    if-eqz v2, :cond_9

    .line 661
    :cond_7
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 666
    iget-object v3, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v3, p9}, Lcom/android/sidekick/GroupCorpus;->addSearchRecent(Landroid/database/Cursor;)V

    move-object v3, v1

    .line 668
    :goto_1
    return-object v3

    .line 656
    :cond_8
    if-nez v0, :cond_6

    .line 657
    invoke-virtual {p0, p9}, Lcom/android/sidekick/GroupSearchAdapter;->getDefaultSearchActivity(Landroid/database/Cursor;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 663
    :cond_9
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public createWebSearchIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .parameter "query"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sidekick/GroupCorpus;->createBrowseIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSearchActivity(Landroid/database/Cursor;)Landroid/content/ComponentName;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v1, p1}, Lcom/android/sidekick/GroupCorpus;->getSearchableInfo(Landroid/database/Cursor;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 582
    .local v0, si:Landroid/app/SearchableInfo;
    if-nez v0, :cond_0

    .line 583
    const/4 v1, 0x0

    .line 585
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method public getDeleteModeListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mDeleteRecentListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public getPinnedHeaderState(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 681
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 682
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 683
    sub-int v1, p1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v1, v0}, Lcom/android/sidekick/GroupCorpus;->isMultiIconComponent(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 698
    :goto_0
    return v1

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v1, v0}, Lcom/android/sidekick/GroupCorpus;->getColumnStatus(Landroid/database/Cursor;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    move v1, v2

    .line 698
    goto :goto_0

    :pswitch_0
    move v1, v3

    .line 690
    goto :goto_0

    .line 692
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 393
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 403
    :goto_0
    return-object v4

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions cursor threw exception."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/sidekick/GroupSearchAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v5, p3}, Lcom/android/sidekick/GroupSearchAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 398
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

    .line 400
    .local v3, views:Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;
    iget-object v1, v3, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 401
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v1           #tv:Landroid/widget/TextView;
    .end local v3           #views:Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;
    :cond_0
    move-object v4, v2

    .line 403
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;

    invoke-direct {v1, v0}, Lcom/android/sidekick/GroupSearchAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 713
    instance-of v0, p1, Lcom/android/sidekick/PinnedHeaderListView;

    if-eqz v0, :cond_0

    .line 714
    check-cast p1, Lcom/android/sidekick/PinnedHeaderListView;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/sidekick/PinnedHeaderListView;->configureHeaderView(I)V

    .line 716
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 721
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupCorpus;->onShow()V

    .line 745
    return-void
.end method

.method reloadSearchSettings()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupCorpus;->reloadSearchSettings()V

    .line 673
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 6
    .parameter "constraint"

    .prologue
    const/4 v5, 0x0

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, cursor:Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/sidekick/GroupSearchAdapter;->mCurrentQuery:Ljava/lang/CharSequence;

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mStatusListener:Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;

    invoke-interface {v2}, Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;->onStartQuery()V

    .line 178
    iget-object v2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v2, p1}, Lcom/android/sidekick/GroupCorpus;->query(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mStatusListener:Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;

    if-nez v0, :cond_0

    move v3, v5

    :goto_1
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;

    invoke-virtual {v4}, Lcom/android/sidekick/GroupCorpus;->inRecentMode()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_2
    invoke-interface {v2, v3, v4}, Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;->onEndQuery(II)V

    .line 185
    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_3
    iput-object v2, p0, Lcom/android/sidekick/GroupSearchAdapter;->mCurrentQuery:Ljava/lang/CharSequence;

    .line 186
    return-object v0

    .line 179
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 180
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "SuggestionsAdapter"

    const-string v3, "Search suggestions query threw an exception."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 182
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move-object v2, p1

    .line 185
    goto :goto_3
.end method

.method tryLeaveDeleteMode()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mCurrentDeleteItem:Lcom/android/sidekick/ResultItem;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mCurrentDeleteItem:Lcom/android/sidekick/ResultItem;

    invoke-virtual {v0}, Lcom/android/sidekick/ResultItem;->leaveDeleteMode()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter;->mCurrentDeleteItem:Lcom/android/sidekick/ResultItem;

    .line 164
    :cond_0
    return-void
.end method
