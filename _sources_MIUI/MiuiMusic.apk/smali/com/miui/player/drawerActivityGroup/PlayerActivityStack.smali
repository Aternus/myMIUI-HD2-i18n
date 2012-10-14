.class public Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;
.super Ljava/lang/Object;
.source "PlayerActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PlayerActivityStack"


# instance fields
.field private final mActivityManager:Landroid/app/LocalActivityManager;

.field private final mChildStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainerView:Landroid/view/ViewGroup;

.field private sIncrementActivityID:I


# direct methods
.method public constructor <init>(Landroid/app/LocalActivityManager;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "activityManager"
    .parameter "container"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->sIncrementActivityID:I

    .line 40
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mActivityManager:Landroid/app/LocalActivityManager;

    .line 41
    iput-object p2, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mContainerView:Landroid/view/ViewGroup;

    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    .line 43
    return-void
.end method

.method private generateNewId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 175
    iget v0, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->sIncrementActivityID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->sIncrementActivityID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pushInternal(Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;)V
    .locals 8
    .parameter "id"
    .parameter "intent"
    .parameter "convertView"

    .prologue
    const/4 v6, 0x0

    const-string v7, "finished_child_flag"

    .line 144
    const-string v5, "finished_child_flag"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 145
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v5, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v4

    .line 147
    .local v4, w:Landroid/view/Window;
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v5, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 150
    .local v1, newIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v5, "finished_child_flag"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mActivityManager:Landroid/app/LocalActivityManager;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 153
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->resumeTop()V

    .line 170
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 158
    .local v3, newView:Landroid/view/View;
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 160
    if-eq p3, v3, :cond_2

    .line 161
    if-eqz p3, :cond_1

    .line 162
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v5, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    :cond_1
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    :cond_2
    new-instance v2, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;-><init>(Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;)V

    .line 169
    .local v2, newTop:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public clearAboveBottom(I)Z
    .locals 4
    .parameter "count"

    .prologue
    const/4 v3, 0x1

    .line 77
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 87
    :goto_0
    return v1

    .line 81
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;

    .line 83
    .local v0, top:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mActivityManager:Landroid/app/LocalActivityManager;

    iget-object v2, v0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    goto :goto_1

    .end local v0           #top:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    :cond_1
    move v1, v3

    .line 87
    goto :goto_0
.end method

.method public isBottom()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isTopActivity(Landroid/app/Activity;)Z
    .locals 4
    .parameter "a"

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, ret:Z
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;

    .line 68
    .local v1, top:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    iget-object v2, v1, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3}, Landroid/app/LocalActivityManager;->getCurrentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v2}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 73
    .end local v1           #top:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    :cond_0
    :goto_0
    return v0

    .line 69
    .restart local v1       #top:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public peekIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;

    .line 124
    .local v1, top:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v2, v1, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->intent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 127
    .end local v1           #top:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    return-object v0
.end method

.method public pop()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;

    .line 111
    .local v0, oldTop:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 112
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mActivityManager:Landroid/app/LocalActivityManager;

    iget-object v2, v0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->id:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 114
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->resumeTop()V

    .line 118
    .end local v0           #oldTop:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v1, "PlayerActivityStack"

    const-string v2, "pop with empty stack"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public push(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 96
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;

    .line 98
    .local v1, top:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    iget-object v2, v1, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->view:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .end local v1           #top:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->generateNewId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, newId:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->pushInternal(Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;)V

    .line 103
    return-void
.end method

.method public resumeTop()V
    .locals 4

    .prologue
    .line 49
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->mChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;

    .line 51
    .local v0, newTop:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    iget-object v1, v0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->intent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->view:Landroid/view/View;

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->pushInternal(Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;)V

    .line 55
    .end local v0           #newTop:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v1, "PlayerActivityStack"

    const-string v2, "resumeTop with empty stack"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
