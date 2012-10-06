.class public Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MusicPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/MusicPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/MusicPickerAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/model/MusicPickerAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/MusicPickerAdapter;

    .line 91
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 92
    return-void
.end method


# virtual methods
.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"
    .parameter "async"

    .prologue
    .line 96
    if-eqz p6, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "100"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 101
    .local v5, limituri:Landroid/net/Uri;
    new-instance v4, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;

    invoke-direct {v4, p0}, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;-><init>(Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;)V

    .line 102
    .local v4, args:Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;
    iput-object p1, v4, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    .line 103
    iput-object p2, v4, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    .line 104
    move-object/from16 v0, p3

    move-object v1, v4

    iput-object v0, v1, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p4

    move-object v1, v4

    iput-object v0, v1, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 106
    move-object/from16 v0, p5

    move-object v1, v4

    iput-object v0, v1, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    .line 108
    const/4 v3, 0x0

    move-object v2, p0

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x0

    .line 114
    .end local v4           #args:Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;
    .end local v5           #limituri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/MusicPickerAdapter;

    #getter for: Lcom/miui/player/model/MusicPickerAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;
    invoke-static {v2}, Lcom/miui/player/model/MusicPickerAdapter;->access$000(Lcom/miui/player/model/MusicPickerAdapter;)Lcom/miui/player/model/BrowserSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 112
    .local v6, context:Landroid/content/Context;
    move-object v0, v6

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v6 .. v11}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 114
    .local v12, c:Landroid/database/Cursor;
    move-object v0, v12

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 121
    if-eqz p2, :cond_0

    .line 122
    move-object v0, p2

    check-cast v0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;

    move-object v9, v0

    .line 123
    .local v9, args:Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;
    iget-object v1, v9, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 125
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    .line 126
    iget-object v4, v9, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v5, v9, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v6, v9, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    iget-object v7, v9, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v8, v9, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v9           #args:Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler$QueryArgs;
    :cond_0
    iget-object v1, p0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/MusicPickerAdapter;

    #calls: Lcom/miui/player/model/MusicPickerAdapter;->setPrevAudioList()V
    invoke-static {v1}, Lcom/miui/player/model/MusicPickerAdapter;->access$100(Lcom/miui/player/model/MusicPickerAdapter;)V

    .line 132
    if-eqz p3, :cond_1

    .line 133
    iget-object v1, p0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/MusicPickerAdapter;

    #getter for: Lcom/miui/player/model/MusicPickerAdapter;->mPrevAudioList:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/miui/player/model/MusicPickerAdapter;->access$300(Lcom/miui/player/model/MusicPickerAdapter;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    sub-int/2addr v3, v4

    #setter for: Lcom/miui/player/model/MusicPickerAdapter;->mMaxPickerSongs:I
    invoke-static {v1, v3}, Lcom/miui/player/model/MusicPickerAdapter;->access$202(Lcom/miui/player/model/MusicPickerAdapter;I)I

    .line 134
    iget-object v1, p0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/MusicPickerAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/MusicPickerAdapter;->isSelectAll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/MusicPickerAdapter;

    #getter for: Lcom/miui/player/model/MusicPickerAdapter;->mSelectAll:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/miui/player/model/MusicPickerAdapter;->access$400(Lcom/miui/player/model/MusicPickerAdapter;)Landroid/widget/TextView;

    move-result-object v1

    const v3, 0x7f08009b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v1, p0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/MusicPickerAdapter;

    #getter for: Lcom/miui/player/model/MusicPickerAdapter;->mMaxPickerSongs:I
    invoke-static {v1}, Lcom/miui/player/model/MusicPickerAdapter;->access$200(Lcom/miui/player/model/MusicPickerAdapter;)I

    move-result v1

    if-nez v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/MusicPickerAdapter;

    #getter for: Lcom/miui/player/model/MusicPickerAdapter;->mSelectAll:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/miui/player/model/MusicPickerAdapter;->access$400(Lcom/miui/player/model/MusicPickerAdapter;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/MusicPickerAdapter;

    #getter for: Lcom/miui/player/model/MusicPickerAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;
    invoke-static {v1}, Lcom/miui/player/model/MusicPickerAdapter;->access$000(Lcom/miui/player/model/MusicPickerAdapter;)Lcom/miui/player/model/BrowserSource;

    move-result-object v1

    if-nez p1, :cond_2

    :goto_0
    invoke-interface {v1, p3, v2}, Lcom/miui/player/model/BrowserSource;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    .line 145
    return-void

    :cond_2
    move v2, v10

    .line 144
    goto :goto_0
.end method
