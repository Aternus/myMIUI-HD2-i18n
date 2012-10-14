.class Lcom/miui/player/ui/UpgradeActivity$1;
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

.field final synthetic val$remoteVersion:I

.field final synthetic val$serverUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/UpgradeActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/player/ui/UpgradeActivity$1;->this$0:Lcom/miui/player/ui/UpgradeActivity;

    iput-object p2, p0, Lcom/miui/player/ui/UpgradeActivity$1;->val$serverUrl:Ljava/lang/String;

    iput p3, p0, Lcom/miui/player/ui/UpgradeActivity$1;->val$remoteVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/player/ui/UpgradeActivity$1;->this$0:Lcom/miui/player/ui/UpgradeActivity;

    iget-object v1, p0, Lcom/miui/player/ui/UpgradeActivity$1;->this$0:Lcom/miui/player/ui/UpgradeActivity;

    iget-object v2, p0, Lcom/miui/player/ui/UpgradeActivity$1;->val$serverUrl:Ljava/lang/String;

    iget v3, p0, Lcom/miui/player/ui/UpgradeActivity$1;->val$remoteVersion:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/player/ui/UpgradeActivity;->startDownload(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 55
    return-void
.end method
