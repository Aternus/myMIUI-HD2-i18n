.class Lcom/android/mms/ui/MmsTabActivity$1;
.super Ljava/lang/Object;
.source "MmsTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsTabActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "exit_animation_in"

    const/high16 v2, 0x10a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string v1, "exit_animation_out"

    const v2, 0x7f040002

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 45
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity$1;->this$0:Lcom/android/mms/ui/MmsTabActivity;

    const v2, 0x7f040003

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MmsTabActivity;->overridePendingTransition(II)V

    .line 46
    return-void
.end method
