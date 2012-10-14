.class Lcom/android/contacts/ViewContactActivity$3;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ViewContactActivity;->bindMiliaoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactActivity;

.field final synthetic val$entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$3;->this$0:Lcom/android/contacts/ViewContactActivity;

    iput-object p2, p0, Lcom/android/contacts/ViewContactActivity$3;->val$entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-string v4, "ViewContact"

    .line 493
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.channel.NAME_CARD_XT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "account"

    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity$3;->val$entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    iget-object v3, v3, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v2, "ViewContact"

    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity$3;->val$entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    iget-object v3, v3, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity$3;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-virtual {v2, v1}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 498
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ViewContact"

    const-string v2, "miliao not handle this intent"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v2, "ViewContact"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
