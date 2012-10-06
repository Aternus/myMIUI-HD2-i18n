.class Lcom/android/browser/ui/MiRenWebViewCore$3;
.super Ljava/lang/Object;
.source "MiRenWebViewCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenWebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$3;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$3;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    #calls: Lcom/android/browser/ui/MiRenWebViewCore;->processNextError()V
    invoke-static {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->access$400(Lcom/android/browser/ui/MiRenWebViewCore;)V

    .line 1153
    return-void
.end method
