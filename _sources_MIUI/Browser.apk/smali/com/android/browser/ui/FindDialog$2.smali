.class Lcom/android/browser/ui/FindDialog$2;
.super Ljava/lang/Object;
.source "FindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/FindDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/FindDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/FindDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/browser/ui/FindDialog$2;->this$0:Lcom/android/browser/ui/FindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog$2;->this$0:Lcom/android/browser/ui/FindDialog;

    invoke-virtual {v0}, Lcom/android/browser/ui/FindDialog;->dismiss()V

    .line 68
    return-void
.end method
