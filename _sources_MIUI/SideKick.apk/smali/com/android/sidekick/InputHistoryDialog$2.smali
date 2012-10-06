.class Lcom/android/sidekick/InputHistoryDialog$2;
.super Ljava/lang/Object;
.source "InputHistoryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sidekick/InputHistoryDialog;-><init>(Landroid/content/Context;Lcom/android/sidekick/InputHistoryAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sidekick/InputHistoryDialog;


# direct methods
.method constructor <init>(Lcom/android/sidekick/InputHistoryDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/sidekick/InputHistoryDialog$2;->this$0:Lcom/android/sidekick/InputHistoryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryDialog$2;->this$0:Lcom/android/sidekick/InputHistoryDialog;

    #getter for: Lcom/android/sidekick/InputHistoryDialog;->mAdapter:Lcom/android/sidekick/InputHistoryAdapter;
    invoke-static {v0}, Lcom/android/sidekick/InputHistoryDialog;->access$000(Lcom/android/sidekick/InputHistoryDialog;)Lcom/android/sidekick/InputHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/sidekick/InputHistoryAdapter;->clearHistory()V

    .line 33
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryDialog$2;->this$0:Lcom/android/sidekick/InputHistoryDialog;

    invoke-virtual {v0}, Lcom/android/sidekick/InputHistoryDialog;->dismiss()V

    .line 34
    return-void
.end method
