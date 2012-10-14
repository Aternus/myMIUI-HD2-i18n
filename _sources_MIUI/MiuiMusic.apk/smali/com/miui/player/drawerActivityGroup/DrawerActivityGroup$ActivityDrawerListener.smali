.class Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;
.super Ljava/lang/Object;
.source "DrawerActivityGroup.java"

# interfaces
.implements Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityDrawerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;


# direct methods
.method private constructor <init>(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;-><init>(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)V

    return-void
.end method


# virtual methods
.method public allowSlide()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$500(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$500(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;->allowSlide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mCommitView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$700(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endSlide(Z)V
    .locals 2
    .parameter "isClose"

    .prologue
    const/4 v1, 0x0

    .line 301
    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #calls: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->removeDrawer()V
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$300(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)V

    .line 303
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mActivityStack:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$400(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;->resumeTop()V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$500(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$500(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;->endSlide(Z)V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewBg:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$600(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 312
    if-nez p1, :cond_2

    .line 313
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewBg:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$600(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mContainerViewBg:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$600(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public startSlide(Z)V
    .locals 1
    .parameter "isClose"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    invoke-virtual {v0, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->startDrawerSlide(Z)V

    .line 323
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$500(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$ActivityDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mDrawerListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$500(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;->startSlide(Z)V

    .line 326
    :cond_0
    return-void
.end method
