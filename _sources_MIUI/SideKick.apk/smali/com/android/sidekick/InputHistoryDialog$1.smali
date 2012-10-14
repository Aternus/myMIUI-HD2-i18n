.class Lcom/android/sidekick/InputHistoryDialog$1;
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
    .line 36
    iput-object p1, p0, Lcom/android/sidekick/InputHistoryDialog$1;->this$0:Lcom/android/sidekick/InputHistoryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 39
    return-void
.end method
