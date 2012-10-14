.class public Lcom/android/sidekick/GroupCorpus;
.super Ljava/lang/Object;
.source "GroupCorpus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sidekick/GroupCorpus$RowIDComparator;
    }
.end annotation


# static fields
.field private static final COMPONENT_APPLICATIONS:Landroid/content/ComponentName;

.field private static final COMPONENT_CONTACTS:Landroid/content/ComponentName;

.field private static final COMPONENT_FILES:Landroid/content/ComponentName;

.field private static final COMPONENT_MESSAGES:Landroid/content/ComponentName;

.field private static final mCursorColumnIndex:[I

.field private static final mMatrixCursorCols:[Ljava/lang/String;

.field private static sDefaultEnabledComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field private mDefaultMultiIconComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledSearchComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledSearchables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInRecentMode:Z

.field private mInited:Z

.field private mQueryLimit:I

.field private mRecentMerger:Lcom/android/sidekick/FlexMatrixCursor$Merger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/sidekick/FlexMatrixCursor$Merger",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRowContentComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRowUsageCountComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchComponentComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchManager:Landroid/app/SearchManager;

.field mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

.field private mUrlColor:Landroid/content/res/ColorStateList;

.field private mWebSearchEngine:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-string v0, "com.android.providers.applications/com.android.providers.applications.ApplicationLauncher"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/sidekick/GroupCorpus;->COMPONENT_APPLICATIONS:Landroid/content/ComponentName;

    .line 58
    const-string v0, "com.android.contacts/com.android.contacts.SearchResultsActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/sidekick/GroupCorpus;->COMPONENT_CONTACTS:Landroid/content/ComponentName;

    .line 60
    const-string v0, "com.android.mms/com.android.mms.ui.SearchActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/sidekick/GroupCorpus;->COMPONENT_MESSAGES:Landroid/content/ComponentName;

    .line 62
    const-string v0, "com.android.fileexplorer/com.android.fileexplorer.SearchActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/sidekick/GroupCorpus;->COMPONENT_FILES:Landroid/content/ComponentName;

    .line 65
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_background_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_component"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "suggest_intent_view_file"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "__index_by_si"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "__status"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "__usage_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/android/sidekick/GroupCorpus;->sDefaultEnabledComponents:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchComponents:Ljava/util/List;

    .line 107
    iput-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mDefaultMultiIconComponents:Ljava/util/List;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/sidekick/GroupCorpus;->mQueryLimit:I

    .line 291
    new-instance v0, Lcom/android/sidekick/GroupCorpus$1;

    invoke-direct {v0, p0}, Lcom/android/sidekick/GroupCorpus$1;-><init>(Lcom/android/sidekick/GroupCorpus;)V

    iput-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mRowUsageCountComparator:Ljava/util/Comparator;

    .line 322
    new-instance v0, Lcom/android/sidekick/GroupCorpus$2;

    invoke-direct {v0, p0}, Lcom/android/sidekick/GroupCorpus$2;-><init>(Lcom/android/sidekick/GroupCorpus;)V

    iput-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mRowContentComparator:Ljava/util/Comparator;

    .line 343
    new-instance v0, Lcom/android/sidekick/GroupCorpus$3;

    invoke-direct {v0, p0}, Lcom/android/sidekick/GroupCorpus$3;-><init>(Lcom/android/sidekick/GroupCorpus;)V

    iput-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mSearchComponentComparator:Ljava/util/Comparator;

    .line 353
    new-instance v0, Lcom/android/sidekick/GroupCorpus$4;

    invoke-direct {v0, p0}, Lcom/android/sidekick/GroupCorpus$4;-><init>(Lcom/android/sidekick/GroupCorpus;)V

    iput-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mRecentMerger:Lcom/android/sidekick/FlexMatrixCursor$Merger;

    .line 130
    iput-object p1, p0, Lcom/android/sidekick/GroupCorpus;->mContext:Landroid/content/Context;

    .line 131
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mSearchManager:Landroid/app/SearchManager;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sidekick/GroupCorpus;->mInited:Z

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/sidekick/GroupCorpus;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/sidekick/GroupCorpus;->checkCursorRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/sidekick/GroupCorpus;[Ljava/lang/Object;I)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/sidekick/GroupCorpus;->getRowColumnInteger([Ljava/lang/Object;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method private checkCursorRow(Ljava/lang/Object;)Z
    .locals 3
    .parameter "row"

    .prologue
    const/4 v2, 0x0

    .line 596
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 597
    if-eqz p1, :cond_0

    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    sget-object v1, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 599
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 597
    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v2

    .line 599
    goto :goto_0
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 517
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 518
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 519
    .local v6, colorValue:Landroid/util/TypedValue;
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x1010267

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 521
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 524
    .end local v6           #colorValue:Landroid/util/TypedValue;
    :cond_0
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 525
    .local v7, text:Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/android/sidekick/GroupCorpus;->mUrlColor:Landroid/content/res/ColorStateList;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 528
    return-object v7
.end method

.method private getRecent()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    return-object v0
.end method

.method private getRowColumnInteger([Ljava/lang/Object;I)Ljava/lang/Integer;
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 610
    aget-object v0, p1, p2

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 611
    aget-object p0, p1, p2

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    move-object v0, p0

    .line 613
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSearchableInfoRecentFilename(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/sidekick/GroupCorpus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "search_recent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSearchablesIndex(Landroid/content/ComponentName;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchables:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/sidekick/GroupCorpus;->getSearchablesIndex(Ljava/util/List;Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method private getSearchablesIndex(Ljava/util/List;Landroid/content/ComponentName;)I
    .locals 4
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")I"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, searchables:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchableInfo;>;"
    const/4 v0, 0x0

    .line 401
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchableInfo;

    .line 402
    .local v2, si:Landroid/app/SearchableInfo;
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    .line 407
    .end local v2           #si:Landroid/app/SearchableInfo;
    :goto_1
    return v3

    .line 405
    .restart local v2       #si:Landroid/app/SearchableInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    .end local v2           #si:Landroid/app/SearchableInfo;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getSuggestions(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9
    .parameter "constraint"

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v4, Lcom/android/sidekick/FlexMatrixCursor;

    sget-object v5, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lcom/android/sidekick/FlexMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 433
    .local v4, mc:Lcom/android/sidekick/FlexMatrixCursor;
    const/4 v0, 0x0

    .line 435
    .local v0, colVals:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchables:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 436
    iget-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mSearchManager:Landroid/app/SearchManager;

    iget-object v5, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchables:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/sidekick/GroupCorpus;->mQueryLimit:I

    invoke-virtual {v6, v5, v7, v8}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 437
    invoke-direct {p0, v1}, Lcom/android/sidekick/GroupCorpus;->loadCursorColumnIndex(Landroid/database/Cursor;)V

    .line 438
    if-nez v1, :cond_0

    .line 435
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    :cond_0
    if-nez v0, :cond_1

    .line 442
    sget-object v5, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    array-length v5, v5

    new-array v0, v5, [Ljava/lang/Object;

    .line 444
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 445
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 446
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    sget-object v5, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_2

    .line 447
    invoke-direct {p0, v1, v3}, Lcom/android/sidekick/GroupCorpus;->loadCursorColumnValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v3

    .line 446
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 449
    :cond_2
    const/16 v5, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 450
    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 451
    invoke-virtual {v4, v0}, Lcom/android/sidekick/FlexMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 452
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 455
    .end local v3           #j:I
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 457
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/sidekick/GroupCorpus;->makeOrder(Lcom/android/sidekick/FlexMatrixCursor;)V

    .line 458
    return-object v4
.end method

.method public static indexOfDefaultEnabledComponent(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 655
    sget-object v1, Lcom/android/sidekick/GroupCorpus;->sDefaultEnabledComponents:Ljava/util/List;

    if-nez v1, :cond_0

    .line 656
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/android/sidekick/GroupCorpus;->sDefaultEnabledComponents:Ljava/util/List;

    .line 657
    sget-object v1, Lcom/android/sidekick/GroupCorpus;->sDefaultEnabledComponents:Ljava/util/List;

    sget-object v2, Lcom/android/sidekick/GroupCorpus;->COMPONENT_APPLICATIONS:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    sget-object v1, Lcom/android/sidekick/GroupCorpus;->sDefaultEnabledComponents:Ljava/util/List;

    sget-object v2, Lcom/android/sidekick/GroupCorpus;->COMPONENT_CONTACTS:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    sget-object v1, Lcom/android/sidekick/GroupCorpus;->sDefaultEnabledComponents:Ljava/util/List;

    sget-object v2, Lcom/android/sidekick/GroupCorpus;->COMPONENT_MESSAGES:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_0
    sget-object v1, Lcom/android/sidekick/GroupCorpus;->sDefaultEnabledComponents:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 662
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 663
    sget-object v1, Lcom/android/sidekick/GroupCorpus;->COMPONENT_FILES:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    const/16 v1, 0x31

    .line 669
    :goto_0
    return v1

    .line 666
    :cond_1
    const/16 v1, 0x32

    goto :goto_0

    :cond_2
    move v1, v0

    .line 669
    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/sidekick/GroupCorpus;->loadSearchSettings()V

    .line 137
    invoke-direct {p0}, Lcom/android/sidekick/GroupCorpus;->loadLocalSearchables()V

    .line 138
    invoke-direct {p0}, Lcom/android/sidekick/GroupCorpus;->loadSearchRecent()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sidekick/GroupCorpus;->mInited:Z

    .line 140
    return-void
.end method

.method private loadCursorColumnIndex(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 461
    if-eqz p1, :cond_0

    .line 462
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/4 v1, 0x0

    const-string v2, "suggest_text_1"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 464
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/4 v1, 0x1

    const-string v2, "suggest_text_2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 466
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/4 v1, 0x2

    const-string v2, "suggest_text_2_url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 468
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 470
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/4 v1, 0x4

    const-string v2, "suggest_icon_2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 472
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/4 v1, 0x5

    const-string v2, "suggest_background_color"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 474
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/4 v1, 0x6

    const-string v2, "suggest_intent_action"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 476
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/4 v1, 0x7

    const-string v2, "suggest_intent_data"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 478
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/16 v1, 0x8

    const-string v2, "suggest_intent_data_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 480
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/16 v1, 0x9

    const-string v2, "suggest_intent_component"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 482
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/16 v1, 0xa

    const-string v2, "suggest_intent_query"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 484
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/16 v1, 0xb

    const-string v2, "suggest_intent_extra_data"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 486
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    const/16 v1, 0xc

    const-string v2, "suggest_intent_view_file"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 489
    :cond_0
    return-void
.end method

.method private loadCursorColumnValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 2
    .parameter "c"
    .parameter "colIndex"

    .prologue
    .line 492
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 498
    :goto_0
    return-object v0

    .line 495
    :cond_0
    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc

    if-ne p2, v0, :cond_2

    .line 496
    :cond_1
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    aget v0, v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_2
    sget-object v0, Lcom/android/sidekick/GroupCorpus;->mCursorColumnIndex:[I

    aget v0, v0, p2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadLocalSearchables()V
    .locals 7

    .prologue
    .line 374
    iget-object v5, p0, Lcom/android/sidekick/GroupCorpus;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v5}, Landroid/app/SearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v3

    .line 375
    .local v3, searchables:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchableInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchables:Ljava/util/List;

    .line 376
    const/4 v2, -0x1

    .line 377
    .local v2, index:I
    iget-object v5, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchComponents:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchComponents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 378
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchableInfo;

    .line 379
    .local v4, si:Landroid/app/SearchableInfo;
    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v5}, Lcom/android/sidekick/GroupCorpus;->indexOfDefaultEnabledComponent(Landroid/content/ComponentName;)I

    move-result v2

    .line 380
    const/16 v5, 0x32

    if-eq v2, v5, :cond_1

    .line 381
    iget-object v5, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchables:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #si:Landroid/app/SearchableInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchComponents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 386
    .local v0, cn:Landroid/content/ComponentName;
    invoke-direct {p0, v3, v0}, Lcom/android/sidekick/GroupCorpus;->getSearchablesIndex(Ljava/util/List;Landroid/content/ComponentName;)I

    move-result v2

    .line 387
    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    .line 388
    iget-object v5, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_4
    iget-object v5, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchables:Ljava/util/List;

    iget-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mSearchComponentComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 393
    :cond_5
    return-void
.end method

.method private loadSearchRecent()V
    .locals 9

    .prologue
    .line 193
    new-instance v6, Lcom/android/sidekick/FlexMatrixCursor;

    sget-object v7, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/sidekick/FlexMatrixCursor;-><init>([Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    .line 194
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v3, loadedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v6, 0x32

    if-ge v1, v6, :cond_2

    .line 197
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/sidekick/GroupCorpus;->getSearchableInfoRecentFilename(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/sidekick/SimpleParcelFile;->newReader(Ljava/lang/String;)Lcom/android/sidekick/SimpleParcelFile$Reader;

    move-result-object v4

    .line 198
    .local v4, reader:Lcom/android/sidekick/SimpleParcelFile$Reader;
    invoke-virtual {v4}, Lcom/android/sidekick/SimpleParcelFile$Reader;->getString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, componentNameStr:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 195
    .end local v0           #componentNameStr:Ljava/lang/String;
    .end local v4           #reader:Lcom/android/sidekick/SimpleParcelFile$Reader;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .restart local v0       #componentNameStr:Ljava/lang/String;
    .restart local v4       #reader:Lcom/android/sidekick/SimpleParcelFile$Reader;
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/sidekick/GroupCorpus;->getSearchablesIndex(Landroid/content/ComponentName;)I

    move-result v2

    .line 203
    .local v2, index:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v4}, Lcom/android/sidekick/SimpleParcelFile$Reader;->getInteger()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 209
    .local v5, version:Ljava/lang/Integer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    array-length v7, v7

    if-ne v6, v7, :cond_0

    .line 211
    :goto_2
    iget-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    invoke-direct {p0, v4, v2}, Lcom/android/sidekick/GroupCorpus;->readNewRow(Lcom/android/sidekick/SimpleParcelFile$Reader;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/sidekick/FlexMatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 214
    .end local v0           #componentNameStr:Ljava/lang/String;
    .end local v2           #index:I
    .end local v4           #reader:Lcom/android/sidekick/SimpleParcelFile$Reader;
    .end local v5           #version:Ljava/lang/Integer;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/android/sidekick/GroupCorpus;->sortSearchRecent()V

    .line 219
    iget-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    invoke-direct {p0, v6}, Lcom/android/sidekick/GroupCorpus;->makeOrder(Lcom/android/sidekick/FlexMatrixCursor;)V

    .line 220
    return-void

    .line 215
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private loadSearchSettings()V
    .locals 8

    .prologue
    .line 144
    :try_start_0
    iget-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 145
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 146
    .local v0, components:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchComponents:Ljava/util/List;

    .line 147
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 148
    .local v5, str:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 149
    .local v3, name:Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 152
    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 153
    iget-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchComponents:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v0           #components:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #name:Landroid/content/ComponentName;
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    .end local v5           #str:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 173
    .local v1, e:Ljava/lang/NullPointerException;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchComponents:Ljava/util/List;

    .line 176
    .end local v1           #e:Ljava/lang/NullPointerException;
    :goto_1
    return-void

    .line 157
    .restart local v0       #components:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #preferences:Landroid/content/SharedPreferences;
    :cond_1
    :try_start_1
    const-string v6, "infinite"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/sidekick/GroupCorpus;->mQueryLimit:I

    .line 165
    :cond_2
    :goto_2
    const-string v6, "baidu"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 166
    iget-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mWebSearchEngine:Ljava/lang/String;

    goto :goto_1

    .line 159
    :cond_3
    const-string v6, "thirty"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 160
    const/16 v6, 0x1e

    iput v6, p0, Lcom/android/sidekick/GroupCorpus;->mQueryLimit:I

    goto :goto_2

    .line 161
    :cond_4
    const-string v6, "ten"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 162
    const/16 v6, 0xa

    iput v6, p0, Lcom/android/sidekick/GroupCorpus;->mQueryLimit:I

    goto :goto_2

    .line 169
    :cond_5
    iget-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sidekick/GroupCorpus;->mWebSearchEngine:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private makeOrder(Lcom/android/sidekick/FlexMatrixCursor;)V
    .locals 12
    .parameter "c"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/16 v9, 0xf

    .line 234
    if-eqz p1, :cond_2

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, id:I
    const/4 v2, -0x1

    .line 237
    .local v2, index:I
    const/4 v3, 0x0

    .line 238
    .local v3, previous:[Ljava/lang/Object;
    const/4 v6, 0x1

    .line 239
    .local v6, single:Z
    invoke-virtual {p1}, Lcom/android/sidekick/FlexMatrixCursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 241
    :goto_0
    invoke-virtual {p1}, Lcom/android/sidekick/FlexMatrixCursor;->getCurrentRow()[Ljava/lang/Object;

    move-result-object v4

    .line 242
    .local v4, row:[Ljava/lang/Object;
    const/16 v7, 0xd

    add-int/lit8 v1, v0, 0x1

    .end local v0           #id:I
    .local v1, id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    .line 243
    const/16 v7, 0xe

    invoke-virtual {p1, v7}, Lcom/android/sidekick/FlexMatrixCursor;->getInt(I)I

    move-result v5

    .line 244
    .local v5, sindex:I
    if-eq v5, v2, :cond_4

    .line 245
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v9

    .line 246
    move v2, v5

    .line 247
    if-eqz v3, :cond_0

    .line 248
    if-eqz v6, :cond_3

    move v7, v11

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v9

    .line 250
    :cond_0
    const/4 v6, 0x1

    .line 255
    :goto_2
    move-object v3, v4

    .line 256
    invoke-virtual {p1}, Lcom/android/sidekick/FlexMatrixCursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_6

    move v0, v1

    .line 258
    .end local v1           #id:I
    .end local v4           #row:[Ljava/lang/Object;
    .end local v5           #sindex:I
    .restart local v0       #id:I
    :cond_1
    if-eqz v3, :cond_2

    .line 259
    if-eqz v6, :cond_5

    move v7, v11

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v9

    .line 262
    .end local v0           #id:I
    .end local v2           #index:I
    .end local v3           #previous:[Ljava/lang/Object;
    .end local v6           #single:Z
    :cond_2
    return-void

    .restart local v1       #id:I
    .restart local v2       #index:I
    .restart local v3       #previous:[Ljava/lang/Object;
    .restart local v4       #row:[Ljava/lang/Object;
    .restart local v5       #sindex:I
    .restart local v6       #single:Z
    :cond_3
    move v7, v10

    .line 248
    goto :goto_1

    .line 252
    :cond_4
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v9

    .line 253
    const/4 v6, 0x0

    goto :goto_2

    .end local v1           #id:I
    .end local v4           #row:[Ljava/lang/Object;
    .end local v5           #sindex:I
    .restart local v0       #id:I
    :cond_5
    move v7, v10

    .line 259
    goto :goto_3

    .end local v0           #id:I
    .restart local v1       #id:I
    .restart local v4       #row:[Ljava/lang/Object;
    .restart local v5       #sindex:I
    :cond_6
    move v0, v1

    .end local v1           #id:I
    .restart local v0       #id:I
    goto :goto_0
.end method

.method private readNewRow(Lcom/android/sidekick/SimpleParcelFile$Reader;I)[Ljava/lang/Object;
    .locals 4
    .parameter "reader"
    .parameter "searchInfoIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    sget-object v2, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/Object;

    .line 225
    .local v1, row:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    sget-object v2, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/android/sidekick/SimpleParcelFile$Reader;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    const/16 v2, 0xe

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 229
    const/16 v2, 0x10

    invoke-virtual {p1}, Lcom/android/sidekick/SimpleParcelFile$Reader;->getInteger()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 230
    return-object v1
.end method

.method private saveSearchRecent()V
    .locals 6

    .prologue
    .line 265
    iget-boolean v4, p0, Lcom/android/sidekick/GroupCorpus;->mInited:Z

    if-nez v4, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 270
    invoke-direct {p0, v1}, Lcom/android/sidekick/GroupCorpus;->getSearchableInfoRecentFilename(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/sidekick/SimpleParcelFile;->newWriter(Ljava/lang/String;)Lcom/android/sidekick/SimpleParcelFile$Writer;

    move-result-object v3

    .line 271
    .local v3, writer:Lcom/android/sidekick/SimpleParcelFile$Writer;
    iget-object v4, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchables:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/sidekick/SimpleParcelFile$Writer;->putString(Ljava/lang/String;)V

    .line 272
    sget-object v4, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Lcom/android/sidekick/SimpleParcelFile$Writer;->putInteger(I)V

    .line 273
    iget-object v4, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    invoke-virtual {v4}, Lcom/android/sidekick/FlexMatrixCursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 274
    :goto_2
    iget-object v4, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    invoke-virtual {v4}, Lcom/android/sidekick/FlexMatrixCursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_4

    .line 275
    iget-object v4, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/android/sidekick/FlexMatrixCursor;->getInt(I)I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 276
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    sget-object v4, Lcom/android/sidekick/GroupCorpus;->mMatrixCursorCols:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    .line 277
    iget-object v4, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    invoke-virtual {v4, v2}, Lcom/android/sidekick/FlexMatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/sidekick/SimpleParcelFile$Writer;->putString(Ljava/lang/String;)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 279
    :cond_2
    iget-object v4, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/sidekick/FlexMatrixCursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/sidekick/SimpleParcelFile$Writer;->putInteger(I)V

    .line 281
    .end local v2           #j:I
    :cond_3
    iget-object v4, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    invoke-virtual {v4}, Lcom/android/sidekick/FlexMatrixCursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 286
    .end local v3           #writer:Lcom/android/sidekick/SimpleParcelFile$Writer;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 287
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #writer:Lcom/android/sidekick/SimpleParcelFile$Writer;
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lcom/android/sidekick/SimpleParcelFile$Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private sortSearchRecent()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    iget-object v1, p0, Lcom/android/sidekick/GroupCorpus;->mRowUsageCountComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/android/sidekick/FlexMatrixCursor;->sort(Ljava/util/Comparator;)V

    .line 320
    :cond_0
    return-void
.end method


# virtual methods
.method addSearchRecent(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 367
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/sidekick/FlexMatrixCursor;

    if-eqz v2, :cond_0

    .line 368
    move-object v0, p1

    check-cast v0, Lcom/android/sidekick/FlexMatrixCursor;

    move-object v1, v0

    .line 369
    .local v1, fc:Lcom/android/sidekick/FlexMatrixCursor;
    iget-object v2, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    invoke-virtual {v1}, Lcom/android/sidekick/FlexMatrixCursor;->getCurrentRow()[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sidekick/GroupCorpus;->mRowContentComparator:Ljava/util/Comparator;

    iget-object v5, p0, Lcom/android/sidekick/GroupCorpus;->mRecentMerger:Lcom/android/sidekick/FlexMatrixCursor$Merger;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/sidekick/FlexMatrixCursor;->mergeRow([Ljava/lang/Object;Ljava/util/Comparator;Lcom/android/sidekick/FlexMatrixCursor$Merger;)V

    .line 371
    .end local v1           #fc:Lcom/android/sidekick/FlexMatrixCursor;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/android/sidekick/GroupCorpus;->saveSearchRecent()V

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sidekick/GroupCorpus;->mInited:Z

    .line 593
    return-void
.end method

.method createBrowseIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "query"

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/sidekick/GroupCorpus;->mWebSearchEngine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    return-object v0
.end method

.method public deleteRecentItem(I)Z
    .locals 3
    .parameter "itemId"

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/sidekick/GroupCorpus;->inRecentMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x0

    .line 635
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    iget-object v1, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    new-instance v2, Lcom/android/sidekick/GroupCorpus$RowIDComparator;

    invoke-direct {v2, p0, p1}, Lcom/android/sidekick/GroupCorpus$RowIDComparator;-><init>(Lcom/android/sidekick/GroupCorpus;I)V

    invoke-virtual {v1, v2}, Lcom/android/sidekick/FlexMatrixCursor;->findRow(Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sidekick/FlexMatrixCursor;->deleteRow([Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getColumnStatus(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 586
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method getIcon1(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 546
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIcon2(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 550
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentAction(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 570
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/sidekick/GroupCorpus;->getSearchableInfo(Landroid/database/Cursor;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 574
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getIntentComponentName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 566
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIntentData(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 554
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, data:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/sidekick/GroupCorpus;->getSearchableInfo(Landroid/database/Cursor;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v1

    .line 558
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getIntentDataID(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 578
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentExtraData(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 582
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentViewAsFile(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 639
    if-eqz p1, :cond_0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 642
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getQuery(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 562
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecentCount()I
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mSearchRecent:Lcom/android/sidekick/FlexMatrixCursor;

    invoke-virtual {v0}, Lcom/android/sidekick/FlexMatrixCursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method getSearchableContext(Landroid/database/Cursor;)Landroid/content/Context;
    .locals 3
    .parameter "c"

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/android/sidekick/GroupCorpus;->getSearchableInfo(Landroid/database/Cursor;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 510
    .local v0, si:Landroid/app/SearchableInfo;
    if-nez v0, :cond_0

    .line 511
    const/4 v1, 0x0

    .line 513
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/sidekick/GroupCorpus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/sidekick/GroupCorpus;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/SearchableInfo;->getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method getSearchableInfo(Landroid/database/Cursor;)Landroid/app/SearchableInfo;
    .locals 2
    .parameter "c"

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    const/4 v0, 0x0

    .line 505
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mEnabledSearchables:Ljava/util/List;

    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/SearchableInfo;

    move-object v0, p0

    goto :goto_0
.end method

.method getText1(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getText2(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 536
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 538
    invoke-direct {p0, v0}, Lcom/android/sidekick/GroupCorpus;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    :goto_0
    return-object v0

    .line 540
    :cond_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public inRecentMode()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/android/sidekick/GroupCorpus;->mInRecentMode:Z

    return v0
.end method

.method public isMultiIconComponent(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mDefaultMultiIconComponents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 647
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mDefaultMultiIconComponents:Ljava/util/List;

    .line 648
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mDefaultMultiIconComponents:Ljava/util/List;

    sget-object v1, Lcom/android/sidekick/GroupCorpus;->COMPONENT_APPLICATIONS:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mDefaultMultiIconComponents:Ljava/util/List;

    sget-object v1, Lcom/android/sidekick/GroupCorpus;->COMPONENT_FILES:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/sidekick/GroupCorpus;->mDefaultMultiIconComponents:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/sidekick/GroupCorpus;->getSearchableInfo(Landroid/database/Cursor;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/android/sidekick/GroupCorpus;->mInited:Z

    if-nez v0, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/android/sidekick/GroupCorpus;->init()V

    .line 685
    :cond_0
    return-void
.end method

.method public query(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/android/sidekick/GroupCorpus;->mInited:Z

    if-nez v0, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/android/sidekick/GroupCorpus;->init()V

    .line 414
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sidekick/GroupCorpus;->mInRecentMode:Z

    .line 416
    invoke-direct {p0}, Lcom/android/sidekick/GroupCorpus;->getRecent()Landroid/database/Cursor;

    move-result-object v0

    .line 419
    :goto_0
    return-object v0

    .line 418
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sidekick/GroupCorpus;->mInRecentMode:Z

    .line 419
    invoke-direct {p0, p1}, Lcom/android/sidekick/GroupCorpus;->getSuggestions(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method reloadSearchSettings()V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/android/sidekick/GroupCorpus;->init()V

    .line 675
    return-void
.end method
