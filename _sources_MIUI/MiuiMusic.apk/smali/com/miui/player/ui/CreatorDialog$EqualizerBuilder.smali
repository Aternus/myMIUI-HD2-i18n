.class Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;
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
    name = "EqualizerBuilder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "data"

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;->mData:Ljava/lang/String;

    .line 181
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "name"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;->mData:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/miui/player/MusicUtils;->createEqualizerConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    const v3, 0x7f08002e

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, ret:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/player/MusicUtils;->idForEqualizer(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionName()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 205
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 206
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 211
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 212
    .local v7, suggestedname:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 213
    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$EqualizerBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0800dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, template:Ljava/lang/String;
    invoke-static {v8, v6, v9}, Lcom/miui/player/MusicUtils;->getSuggestionName(Ljava/lang/String;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 218
    .end local v8           #template:Ljava/lang/String;
    :cond_0
    return-object v7
.end method
