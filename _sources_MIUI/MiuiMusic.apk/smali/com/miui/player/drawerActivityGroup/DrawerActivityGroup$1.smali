.class Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$1;
.super Ljava/lang/Object;
.source "DrawerActivityGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->freezeDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;


# direct methods
.method constructor <init>(Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$1;->this$0:Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method
