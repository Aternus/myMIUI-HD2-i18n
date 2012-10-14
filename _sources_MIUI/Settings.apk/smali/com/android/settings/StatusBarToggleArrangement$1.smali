.class Lcom/android/settings/StatusBarToggleArrangement$1;
.super Ljava/lang/Object;
.source "StatusBarToggleArrangement.java"

# interfaces
.implements Landroid/util/ToggleManager$OnToggleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/StatusBarToggleArrangement;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/StatusBarToggleArrangement;


# direct methods
.method constructor <init>(Lcom/android/settings/StatusBarToggleArrangement;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/StatusBarToggleArrangement$1;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement$1;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    new-instance v1, Lcom/android/settings/StatusBarToggleArrangement$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/StatusBarToggleArrangement$1$1;-><init>(Lcom/android/settings/StatusBarToggleArrangement$1;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/StatusBarToggleArrangement;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method
