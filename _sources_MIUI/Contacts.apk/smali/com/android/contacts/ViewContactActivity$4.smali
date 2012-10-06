.class Lcom/android/contacts/ViewContactActivity$4;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 505
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$4;->this$0:Lcom/android/contacts/ViewContactActivity;

    iput-object p2, p0, Lcom/android/contacts/ViewContactActivity$4;->val$entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "ViewContact"

    .line 509
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 510
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 527
    :cond_0
    :goto_0
    return v4

    .line 511
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 512
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 515
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.channel.COMPOSE_MESSAGE_XT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "account"

    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity$4;->val$entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    iget-object v3, v3, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity$4;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-virtual {v2, v1}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 520
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ViewContact"

    const-string v2, "miliao not handle this intent"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v2, "ViewContact"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 524
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
