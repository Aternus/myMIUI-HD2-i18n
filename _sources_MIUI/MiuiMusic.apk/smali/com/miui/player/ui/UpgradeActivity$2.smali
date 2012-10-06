.class Lcom/miui/player/ui/UpgradeActivity$2;
.super Ljava/lang/Object;
.source "UpgradeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/UpgradeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/UpgradeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/player/ui/UpgradeActivity$2;->this$0:Lcom/miui/player/ui/UpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/player/ui/UpgradeActivity$2;->this$0:Lcom/miui/player/ui/UpgradeActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/UpgradeActivity;->finish()V

    .line 63
    return-void
.end method
