.class Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1$1;
.super Ljava/lang/Object;
.source "MiRenWebViewCore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1923
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1$1;->this$2:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 1928
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1929
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1$1;->this$2:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;

    iget-object v4, v4, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->val$src:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1930
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "video/mp4"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1931
    iget-object v4, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1$1;->this$2:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;

    iget-object v4, v4, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

    iget-object v4, v4, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v4, v4, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1932
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1933
    .local v1, e:Landroid/content/ActivityNotFoundException;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1$1;->this$2:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;

    iget-object v4, v4, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

    iget-object v4, v4, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v4, v4, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1934
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090106

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090011

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1936
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
