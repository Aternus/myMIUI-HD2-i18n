.class Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchHistoryListVisibleChanged;
.super Ljava/lang/Object;
.source "OnlineMusicSearchActivity.java"

# interfaces
.implements Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHistoryListVisibleChanged"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/OnlineMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchHistoryListVisibleChanged;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/OnlineMusicSearchActivity;Lcom/miui/player/ui/OnlineMusicSearchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchHistoryListVisibleChanged;-><init>(Lcom/miui/player/ui/OnlineMusicSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onVisibleChanged(Z)V
    .locals 4
    .parameter "isVisible"

    .prologue
    const/4 v3, 0x0

    .line 130
    if-eqz p1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchHistoryListVisibleChanged;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchHistoryListVisibleChanged;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    iget-object v1, v1, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mOnlineStatusBarController:Lcom/miui/player/helper/controller/OnlineStatusBarController;

    invoke-virtual {v1, v3}, Lcom/miui/player/helper/controller/OnlineStatusBarController;->setVisible(Z)V

    .line 133
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchHistoryListVisibleChanged;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    #getter for: Lcom/miui/player/ui/OnlineMusicBaseActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->access$400(Lcom/miui/player/ui/OnlineMusicSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    .line 134
    .local v0, editList:Landroid/widget/EditableListView;
    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 141
    .end local v0           #editList:Landroid/widget/EditableListView;
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicSearchActivity$SearchHistoryListVisibleChanged;->this$0:Lcom/miui/player/ui/OnlineMusicSearchActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/OnlineMusicSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
