.class Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;
.super Ljava/lang/Object;
.source "CreatorDialog.java"

# interfaces
.implements Lcom/miui/player/ui/CreatorDialog$DialogBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/CreatorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistBuilder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;->mContext:Landroid/content/Context;

    .line 124
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "name"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/miui/player/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    const v4, 0x7f08002e

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, ret:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/player/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionName()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const-string v5, "name"

    .line 149
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v5, v2, v11

    .line 152
    .local v2, cols:[Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v9, "name != \'\' AND list_type=0"

    .line 156
    .local v9, whereclause:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v3, "name != \'\' AND list_type=0"

    const/4 v4, 0x0

    const-string v10, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 160
    .local v7, suggestedname:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 161
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$PlaylistBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f08002a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, template:Ljava/lang/String;
    invoke-static {v8, v6, v11}, Lcom/miui/player/MusicUtils;->getSuggestionName(Ljava/lang/String;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 166
    .end local v8           #template:Ljava/lang/String;
    :cond_0
    return-object v7
.end method
