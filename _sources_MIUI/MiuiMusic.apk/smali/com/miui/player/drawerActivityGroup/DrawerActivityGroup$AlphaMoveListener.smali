.class Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$AlphaMoveListener;
.super Ljava/lang/Object;
.source "DrawerActivityGroup.java"

# interfaces
.implements Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaMoveListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;


# direct methods
.method private constructor <init>(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$AlphaMoveListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$AlphaMoveListener;-><init>(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)V

    return-void
.end method


# virtual methods
.method public move(II)V
    .locals 3
    .parameter "marginTop"
    .parameter "total"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$AlphaMoveListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mMainFrame:Lcom/miui/player/ui/view/AlphaFrameLayout;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$200(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/ui/view/AlphaFrameLayout;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/AlphaFrameLayout;->setAlpha(F)V

    .line 127
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$AlphaMoveListener;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mMainFrame:Lcom/miui/player/ui/view/AlphaFrameLayout;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->access$200(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)Lcom/miui/player/ui/view/AlphaFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/ui/view/AlphaFrameLayout;->invalidate()V

    .line 128
    return-void
.end method
