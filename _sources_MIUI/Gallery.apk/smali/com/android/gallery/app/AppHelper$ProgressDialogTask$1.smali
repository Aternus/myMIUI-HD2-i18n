.class Lcom/android/gallery/app/AppHelper$ProgressDialogTask$1;
.super Ljava/lang/Object;
.source "AppHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/app/AppHelper$ProgressDialogTask;-><init>(Landroid/app/ProgressDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/app/AppHelper$ProgressDialogTask;


# direct methods
.method constructor <init>(Lcom/android/gallery/app/AppHelper$ProgressDialogTask;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    .local p0, this:Lcom/android/gallery/app/AppHelper$ProgressDialogTask$1;,"Lcom/android/gallery/app/AppHelper$ProgressDialogTask.1;"
    iput-object p1, p0, Lcom/android/gallery/app/AppHelper$ProgressDialogTask$1;->this$0:Lcom/android/gallery/app/AppHelper$ProgressDialogTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 305
    .local p0, this:Lcom/android/gallery/app/AppHelper$ProgressDialogTask$1;,"Lcom/android/gallery/app/AppHelper$ProgressDialogTask.1;"
    iget-object v0, p0, Lcom/android/gallery/app/AppHelper$ProgressDialogTask$1;->this$0:Lcom/android/gallery/app/AppHelper$ProgressDialogTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery/app/AppHelper$ProgressDialogTask;->cancel(Z)Z

    .line 306
    return-void
.end method
