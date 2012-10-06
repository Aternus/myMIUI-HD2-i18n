.class Lcom/android/mms/ui/QuickSmsActivity$4;
.super Ljava/lang/Object;
.source "QuickSmsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 102
    iput-object p1, p0, Lcom/android/mms/ui/QuickSmsActivity$4;->this$0:Lcom/android/mms/ui/QuickSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 105
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/QuickSmsActivity$4;->this$0:Lcom/android/mms/ui/QuickSmsActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/mms/ui/QuickSmsActivity;->exit(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/QuickSmsActivity;->access$000(Lcom/android/mms/ui/QuickSmsActivity;Z)V

    .line 108
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
