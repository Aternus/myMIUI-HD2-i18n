.class Lcom/miui/player/helper/FolderProvider$FolderItem;
.super Ljava/lang/Object;
.source "FolderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/FolderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderItem"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public playlistId:I

.field public sortKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "nameA"
    .parameter "pathA"
    .parameter "sortKeyA"

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput p1, p0, Lcom/miui/player/helper/FolderProvider$FolderItem;->playlistId:I

    .line 309
    iput-object p2, p0, Lcom/miui/player/helper/FolderProvider$FolderItem;->name:Ljava/lang/String;

    .line 310
    iput-object p3, p0, Lcom/miui/player/helper/FolderProvider$FolderItem;->path:Ljava/lang/String;

    .line 311
    iput-object p4, p0, Lcom/miui/player/helper/FolderProvider$FolderItem;->sortKey:Ljava/lang/String;

    .line 312
    return-void
.end method
