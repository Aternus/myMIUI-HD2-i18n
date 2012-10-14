.class public Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TrackBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/TrackBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/TrackBrowserAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/model/TrackBrowserAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/TrackBrowserAdapter;

    .line 152
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 153
    return-void
.end method


# virtual methods
.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;
    .locals 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"
    .parameter "async"
    .parameter "wrap"

    .prologue
    .line 156
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/TrackBrowserAdapter;

    #getter for: Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;
    invoke-static {v2}, Lcom/miui/player/model/TrackBrowserAdapter;->access$000(Lcom/miui/player/model/TrackBrowserAdapter;)Lcom/miui/player/model/BrowserSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 157
    .local v6, context:Landroid/content/Context;
    if-eqz p6, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "100"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 162
    .local v5, limituri:Landroid/net/Uri;
    new-instance v4, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;

    invoke-direct {v4, p0}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;-><init>(Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;)V

    .line 163
    .local v4, args:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    iput-object p1, v4, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    .line 164
    iput-object p2, v4, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    .line 165
    move-object/from16 v0, p3

    move-object v1, v4

    iput-object v0, v1, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p4

    move-object v1, v4

    iput-object v0, v1, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 167
    move-object/from16 v0, p5

    move-object v1, v4

    iput-object v0, v1, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    .line 168
    move/from16 v0, p7

    move-object v1, v4

    iput-boolean v0, v1, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->wrap:Z

    .line 169
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/TrackBrowserAdapter;

    const/4 v3, 0x0

    iput v3, v2, Lcom/miui/player/model/TrackBrowserAdapter;->mToken:I

    .line 170
    iget-object v2, p0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/TrackBrowserAdapter;

    iget v3, v2, Lcom/miui/player/model/TrackBrowserAdapter;->mToken:I

    move-object v2, p0

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v6           #context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 180
    .end local v4           #args:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    .end local v5           #limituri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 174
    .restart local v6       #context:Landroid/content/Context;
    :cond_0
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

    .line 176
    .local v12, c:Landroid/database/Cursor;
    if-eqz p7, :cond_1

    if-eqz p5, :cond_1

    .line 177
    move-object v0, v12

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    :cond_1
    move-object v2, v12

    .line 180
    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 186
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 187
    move-object v0, p2

    check-cast v0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;

    move-object v9, v0

    .line 188
    .local v9, args:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    iget-boolean v1, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->wrap:Z

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 192
    :cond_0
    if-eq p1, v2, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v3, 0x64

    if-ne v1, v3, :cond_2

    .line 193
    iget-object v4, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v5, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v6, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    iget-object v7, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v8, v9, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v9           #args:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/TrackBrowserAdapter;

    iput p1, v1, Lcom/miui/player/model/TrackBrowserAdapter;->mToken:I

    .line 201
    iget-object v1, p0, Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler;->this$0:Lcom/miui/player/model/TrackBrowserAdapter;

    #getter for: Lcom/miui/player/model/TrackBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;
    invoke-static {v1}, Lcom/miui/player/model/TrackBrowserAdapter;->access$000(Lcom/miui/player/model/TrackBrowserAdapter;)Lcom/miui/player/model/BrowserSource;

    move-result-object v1

    if-nez p1, :cond_3

    :goto_1
    invoke-interface {v1, p3, v2}, Lcom/miui/player/model/BrowserSource;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    .line 203
    return-void

    .line 196
    .restart local v9       #args:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    .line 201
    .end local v9           #args:Lcom/miui/player/model/TrackBrowserAdapter$TrackQueryHandler$QueryArgs;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
