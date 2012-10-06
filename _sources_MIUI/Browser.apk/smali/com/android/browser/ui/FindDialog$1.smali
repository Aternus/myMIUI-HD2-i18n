.class Lcom/android/browser/ui/FindDialog$1;
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
    .line 56
    iput-object p1, p0, Lcom/android/browser/ui/FindDialog$1;->this$0:Lcom/android/browser/ui/FindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog$1;->this$0:Lcom/android/browser/ui/FindDialog;

    #calls: Lcom/android/browser/ui/FindDialog;->findNext()V
    invoke-static {v0}, Lcom/android/browser/ui/FindDialog;->access$000(Lcom/android/browser/ui/FindDialog;)V

    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog$1;->this$0:Lcom/android/browser/ui/FindDialog;

    iget-object v1, p0, Lcom/android/browser/ui/FindDialog$1;->this$0:Lcom/android/browser/ui/FindDialog;

    #getter for: Lcom/android/browser/ui/FindDialog;->mIth:I
    invoke-static {v1}, Lcom/android/browser/ui/FindDialog;->access$100(Lcom/android/browser/ui/FindDialog;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/browser/ui/FindDialog$1;->this$0:Lcom/android/browser/ui/FindDialog;

    #getter for: Lcom/android/browser/ui/FindDialog;->mFound:I
    invoke-static {v2}, Lcom/android/browser/ui/FindDialog;->access$200(Lcom/android/browser/ui/FindDialog;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/android/browser/ui/FindDialog;->mIth:I
    invoke-static {v0, v1}, Lcom/android/browser/ui/FindDialog;->access$102(Lcom/android/browser/ui/FindDialog;I)I

    .line 60
    iget-object v0, p0, Lcom/android/browser/ui/FindDialog$1;->this$0:Lcom/android/browser/ui/FindDialog;

    #calls: Lcom/android/browser/ui/FindDialog;->setMatchesFound()V
    invoke-static {v0}, Lcom/android/browser/ui/FindDialog;->access$300(Lcom/android/browser/ui/FindDialog;)V

    .line 61
    return-void
.end method
