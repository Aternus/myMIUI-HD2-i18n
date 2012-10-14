.class Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;
.super Ljava/lang/Object;
.source "OnlineMusicSearchActivity.java"

# interfaces
.implements Lcom/miui/player/helper/controller/SearchBarController$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchCommond"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/OnlineMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/OnlineMusicSearchActivity;Lcom/miui/player/ui/OnlineMusicSearchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;-><init>(Lcom/miui/player/ui/OnlineMusicSearchActivity;)V

    return-void
.end method


# virtual methods
.method public doSearch(Ljava/lang/String;I)V
    .locals 2
    .parameter "searchInput"
    .parameter "type"

    .prologue
    .line 114
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    #setter for: Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchKey:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->access$202(Lcom/miui/player/ui/OnlineMusicSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->startSongListLoadingAsync()V

    .line 119
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    #getter for: Lcom/miui/player/ui/OnlineMusicSearchActivity;->mSearchBarController:Lcom/miui/player/helper/controller/SearchBarController;
    invoke-static {v0}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->access$300(Lcom/miui/player/ui/OnlineMusicSearchActivity;)Lcom/miui/player/helper/controller/SearchBarController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/SearchBarController;->showHistoryList(Z)V

    goto :goto_0
.end method
