.class Lcom/android/settings/StatusBarToggleArrangement$1$1;
.super Ljava/lang/Object;
.source "StatusBarToggleArrangement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/StatusBarToggleArrangement$1;->OnToggleChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/StatusBarToggleArrangement$1;


# direct methods
.method constructor <init>(Lcom/android/settings/StatusBarToggleArrangement$1;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/StatusBarToggleArrangement$1$1;->this$1:Lcom/android/settings/StatusBarToggleArrangement$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleArrangement$1$1;->this$1:Lcom/android/settings/StatusBarToggleArrangement$1;

    iget-object v0, v0, Lcom/android/settings/StatusBarToggleArrangement$1;->this$0:Lcom/android/settings/StatusBarToggleArrangement;

    #getter for: Lcom/android/settings/StatusBarToggleArrangement;->mAdapter:Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;
    invoke-static {v0}, Lcom/android/settings/StatusBarToggleArrangement;->access$100(Lcom/android/settings/StatusBarToggleArrangement;)Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/StatusBarToggleArrangement$ToggleAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method
