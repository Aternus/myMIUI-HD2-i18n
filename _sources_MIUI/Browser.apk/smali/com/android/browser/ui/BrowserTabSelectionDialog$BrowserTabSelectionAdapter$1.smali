.class Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter$1;
.super Ljava/lang/Object;
.source "BrowserTabSelectionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;

.field final synthetic val$currentPosition:I


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter$1;->this$1:Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;

    iput p2, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter$1;->val$currentPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter$1;->this$1:Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;

    iget-object v0, v0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    #getter for: Lcom/android/browser/ui/BrowserTabSelectionDialog;->_tabselectionlistener:Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;
    invoke-static {v0}, Lcom/android/browser/ui/BrowserTabSelectionDialog;->access$100(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;

    move-result-object v1

    iget-object v0, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter$1;->this$1:Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;

    iget-object v0, v0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    #getter for: Lcom/android/browser/ui/BrowserTabSelectionDialog;->_webviews:Ljava/util/List;
    invoke-static {v0}, Lcom/android/browser/ui/BrowserTabSelectionDialog;->access$200(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter$1;->val$currentPosition:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ui/MiRenWebView;

    invoke-interface {v1, v0}, Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;->onCloseTab(Lcom/android/browser/ui/MiRenWebView;)V

    .line 107
    iget-object v0, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter$1;->this$1:Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;

    iget-object v0, v0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    #getter for: Lcom/android/browser/ui/BrowserTabSelectionDialog;->_dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/browser/ui/BrowserTabSelectionDialog;->access$300(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 108
    return-void
.end method
