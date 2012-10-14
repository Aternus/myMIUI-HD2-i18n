.class Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;
.super Ljava/lang/Object;
.source "PlayerActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityElement"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "idA"
    .parameter "intentA"
    .parameter "viewA"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->this$0:Lcom/miui/player/drawerActivityGroup/PlayerActivityStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->id:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->intent:Landroid/content/Intent;

    .line 29
    iput-object p4, p0, Lcom/miui/player/drawerActivityGroup/PlayerActivityStack$ActivityElement;->view:Landroid/view/View;

    .line 30
    return-void
.end method
