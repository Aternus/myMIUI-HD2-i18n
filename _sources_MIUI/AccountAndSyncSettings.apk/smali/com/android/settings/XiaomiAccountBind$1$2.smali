.class Lcom/android/settings/XiaomiAccountBind$1$2;
.super Ljava/lang/Object;
.source "XiaomiAccountBind.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/XiaomiAccountBind$1;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/XiaomiAccountBind$1;

.field final synthetic val$urltobrowse:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/XiaomiAccountBind$1;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/XiaomiAccountBind$1$2;->this$1:Lcom/android/settings/XiaomiAccountBind$1;

    iput-object p2, p0, Lcom/android/settings/XiaomiAccountBind$1$2;->val$urltobrowse:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/settings/XiaomiAccountBind$1$2;->val$urltobrowse:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountBind$1$2;->this$1:Lcom/android/settings/XiaomiAccountBind$1;

    iget-object v1, v1, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    invoke-virtual {v1, v0}, Lcom/android/settings/XiaomiAccountBind;->startActivity(Landroid/content/Intent;)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/XiaomiAccountBind$1$2;->this$1:Lcom/android/settings/XiaomiAccountBind$1;

    iget-object v1, v1, Lcom/android/settings/XiaomiAccountBind$1;->this$0:Lcom/android/settings/XiaomiAccountBind;

    invoke-virtual {v1}, Lcom/android/settings/XiaomiAccountBind;->finish()V

    .line 166
    return-void
.end method
