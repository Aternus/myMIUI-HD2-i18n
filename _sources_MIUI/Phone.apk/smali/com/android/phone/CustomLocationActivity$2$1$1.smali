.class Lcom/android/phone/CustomLocationActivity$2$1$1;
.super Ljava/lang/Thread;
.source "CustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CustomLocationActivity$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/phone/CustomLocationActivity$2$1;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/CustomLocationActivity$2$1;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/phone/CustomLocationActivity$2$1$1;->this$2:Lcom/android/phone/CustomLocationActivity$2$1;

    iput-object p2, p0, Lcom/android/phone/CustomLocationActivity$2$1$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 89
    iget-object v2, p0, Lcom/android/phone/CustomLocationActivity$2$1$1;->this$2:Lcom/android/phone/CustomLocationActivity$2$1;

    iget-object v2, v2, Lcom/android/phone/CustomLocationActivity$2$1;->val$ids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 90
    .local v1, id:Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/phone/CustomLocationActivity$2$1$1;->this$2:Lcom/android/phone/CustomLocationActivity$2$1;

    iget-object v2, v2, Lcom/android/phone/CustomLocationActivity$2$1;->this$1:Lcom/android/phone/CustomLocationActivity$2;

    iget-object v2, v2, Lcom/android/phone/CustomLocationActivity$2;->this$0:Lcom/android/phone/CustomLocationActivity;

    invoke-virtual {v2}, Lcom/android/phone/CustomLocationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v1           #id:Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CustomLocationActivity$2$1$1;->this$2:Lcom/android/phone/CustomLocationActivity$2$1;

    iget-object v2, v2, Lcom/android/phone/CustomLocationActivity$2$1;->this$1:Lcom/android/phone/CustomLocationActivity$2;

    iget-object v2, v2, Lcom/android/phone/CustomLocationActivity$2;->this$0:Lcom/android/phone/CustomLocationActivity;

    new-instance v3, Lcom/android/phone/CustomLocationActivity$2$1$1$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CustomLocationActivity$2$1$1$1;-><init>(Lcom/android/phone/CustomLocationActivity$2$1$1;)V

    invoke-virtual {v2, v3}, Lcom/android/phone/CustomLocationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    iget-object v2, p0, Lcom/android/phone/CustomLocationActivity$2$1$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 104
    return-void
.end method
