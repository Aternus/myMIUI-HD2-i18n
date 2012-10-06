.class public Lcom/miui/player/helper/DrawableProvider$AlbumComputer;
.super Ljava/lang/Object;
.source "DrawableProvider.java"

# interfaces
.implements Lcom/miui/player/helper/LRUCache$ValueComputer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/DrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumComputer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/player/helper/LRUCache$ValueComputer",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/DrawableProvider;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/DrawableProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    .local p0, this:Lcom/miui/player/helper/DrawableProvider$AlbumComputer;,"Lcom/miui/player/helper/DrawableProvider<TT;>.AlbumComputer;"
    iput-object p1, p0, Lcom/miui/player/helper/DrawableProvider$AlbumComputer;->this$0:Lcom/miui/player/helper/DrawableProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ignoreCount(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 283
    .local p0, this:Lcom/miui/player/helper/DrawableProvider$AlbumComputer;,"Lcom/miui/player/helper/DrawableProvider<TT;>.AlbumComputer;"
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider$AlbumComputer;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #calls: Lcom/miui/player/helper/DrawableProvider;->isDefauleDrawable(Landroid/graphics/drawable/Drawable;)Z
    invoke-static {v0, p1}, Lcom/miui/player/helper/DrawableProvider;->access$500(Lcom/miui/player/helper/DrawableProvider;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic ignoreCount(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    .local p0, this:Lcom/miui/player/helper/DrawableProvider$AlbumComputer;,"Lcom/miui/player/helper/DrawableProvider<TT;>.AlbumComputer;"
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/DrawableProvider$AlbumComputer;->ignoreCount(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
