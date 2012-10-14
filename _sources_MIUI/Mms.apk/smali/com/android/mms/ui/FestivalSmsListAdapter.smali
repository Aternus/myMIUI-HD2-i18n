.class public Lcom/android/mms/ui/FestivalSmsListAdapter;
.super Landroid/widget/CursorAdapter;
.source "FestivalSmsListAdapter.java"


# instance fields
.field private mCategoryName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "categoryName"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 34
    iput-object p1, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mCategoryName:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    return-void
.end method

.method private internalRequery()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 40
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/FestivalSmsProvider;->URI_QUERY_MESSAGES:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "body"

    aput-object v3, v2, v4

    const-string v3, "category_name=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mCategoryName:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 50
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mOrder:Ljava/util/ArrayList;

    .line 51
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mOrder:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/FestivalSmsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 55
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 115
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FestivalSmsListAdapter;->getItemMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, body:Ljava/lang/String;
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 92
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemMessage(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/FestivalSmsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 79
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 121
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x2

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 96
    iget-object v5, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030014

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 98
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 99
    .local v1, left:I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 100
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 101
    .local v2, right:I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 103
    .local v0, bottom:I
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 104
    const v5, 0x7f02008a

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    :goto_0
    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 110
    return-object v4

    .line 106
    :cond_0
    const v5, 0x7f02008b

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public requery()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->internalRequery()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f09010f

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 62
    iget-object v2, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/FestivalSmsProvider;->URI_RESET_DATABASE:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 64
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->internalRequery()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 65
    :catch_1
    move-exception v1

    .line 66
    .local v1, e2:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FestivalSmsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public shuffle()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/FestivalSmsListAdapter;->mOrder:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/mms/ui/FestivalSmsListAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method
