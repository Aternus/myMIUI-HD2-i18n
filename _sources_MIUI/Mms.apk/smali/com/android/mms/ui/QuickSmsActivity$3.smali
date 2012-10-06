.class Lcom/android/mms/ui/QuickSmsActivity$3;
.super Ljava/lang/Object;
.source "QuickSmsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/QuickSmsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/QuickSmsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/QuickSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/mms/ui/QuickSmsActivity$3;->this$0:Lcom/android/mms/ui/QuickSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/QuickSmsActivity$3;->this$0:Lcom/android/mms/ui/QuickSmsActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/QuickSmsActivity;->exit(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/QuickSmsActivity;->access$000(Lcom/android/mms/ui/QuickSmsActivity;Z)V

    .line 98
    return-void
.end method
