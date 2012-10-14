.class Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;
.super Ljava/lang/Object;
.source "AccountExpiredAlertActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-class v7, Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    const-string v6, "username"

    const-string v5, "showDetail"

    .line 45
    .line 47
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    const-class v2, Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string v1, "username"

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->val$account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "showDetail"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-virtual {v1, v0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v0, v0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-virtual {v0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->finish()V

    .line 66
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_1
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    if-eqz v4, :cond_1

    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    const-class v2, Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string v1, "username"

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->val$account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "showDetail"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-virtual {v1, v0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v0, v0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-virtual {v0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->finish()V

    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    .line 51
    :try_start_2
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    if-eqz v4, :cond_2

    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    const-class v2, Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string v1, "username"

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->val$account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "showDetail"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-virtual {v1, v0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v0, v0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-virtual {v0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->finish()V

    goto :goto_0

    .line 52
    :catch_2
    move-exception v0

    .line 53
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    if-eqz v4, :cond_3

    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    const-class v2, Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string v1, "username"

    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->val$account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "showDetail"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-virtual {v1, v0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v0, v0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-virtual {v0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->finish()V

    goto/16 :goto_0

    .line 55
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_4

    .line 56
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v2, v2, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    const-class v3, Lcom/miui/cloudservice/authenticator/AddAccountActivity;

    invoke-direct {v1, v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string v2, "username"

    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v2, v2, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v2, "showDetail"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v2, v2, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-virtual {v2, v1}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    :cond_4
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2$1;->this$1:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$2;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-virtual {v1}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->finish()V

    throw v0
.end method
