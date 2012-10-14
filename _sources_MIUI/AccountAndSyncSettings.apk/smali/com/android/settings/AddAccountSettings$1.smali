.class Lcom/android/settings/AddAccountSettings$1;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AddAccountSettings;
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
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AddAccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/AddAccountSettings$1;->this$0:Lcom/android/settings/AddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v3, "addAccount failed: "

    const-string v3, "AccountSettings"

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, accountAdded:Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 122
    .local v1, bundle:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 123
    const/4 v0, 0x1

    .line 124
    invoke-static {}, Lcom/android/settings/AddAccountSettings;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/android/settings/AddAccountSettings$1;->this$0:Lcom/android/settings/AddAccountSettings;

    invoke-virtual {v3}, Lcom/android/settings/AddAccountSettings;->finish()V

    .line 134
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 126
    .local v2, e:Landroid/accounts/OperationCanceledException;
    :try_start_1
    invoke-static {}, Lcom/android/settings/AddAccountSettings;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "AccountSettings"

    const-string v4, "addAccount was canceled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AddAccountSettings$1;->this$0:Lcom/android/settings/AddAccountSettings;

    invoke-virtual {v3}, Lcom/android/settings/AddAccountSettings;->finish()V

    goto :goto_0

    .line 127
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 128
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/android/settings/AddAccountSettings;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAccount failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :cond_2
    iget-object v3, p0, Lcom/android/settings/AddAccountSettings$1;->this$0:Lcom/android/settings/AddAccountSettings;

    invoke-virtual {v3}, Lcom/android/settings/AddAccountSettings;->finish()V

    goto :goto_0

    .line 129
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 130
    .local v2, e:Landroid/accounts/AuthenticatorException;
    :try_start_3
    invoke-static {}, Lcom/android/settings/AddAccountSettings;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAccount failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    :cond_3
    iget-object v3, p0, Lcom/android/settings/AddAccountSettings$1;->this$0:Lcom/android/settings/AddAccountSettings;

    invoke-virtual {v3}, Lcom/android/settings/AddAccountSettings;->finish()V

    goto :goto_0

    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/settings/AddAccountSettings$1;->this$0:Lcom/android/settings/AddAccountSettings;

    invoke-virtual {v4}, Lcom/android/settings/AddAccountSettings;->finish()V

    throw v3
.end method
