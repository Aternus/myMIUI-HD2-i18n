.class Lcom/android/browser/ui/BrowserTabSelectionDialog$1;
.super Ljava/lang/Object;
.source "BrowserTabSelectionDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BrowserTabSelectionDialog;->prepareDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BrowserTabSelectionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$1;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$1;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    #getter for: Lcom/android/browser/ui/BrowserTabSelectionDialog;->_tabselectionlistener:Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;
    invoke-static {v0}, Lcom/android/browser/ui/BrowserTabSelectionDialog;->access$100(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;->onNewTab()V

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$1;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    #getter for: Lcom/android/browser/ui/BrowserTabSelectionDialog;->_dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/browser/ui/BrowserTabSelectionDialog;->access$300(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 50
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$1;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    #getter for: Lcom/android/browser/ui/BrowserTabSelectionDialog;->_tabselectionlistener:Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;
    invoke-static {v0}, Lcom/android/browser/ui/BrowserTabSelectionDialog;->access$100(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;

    move-result-object v1

    iget-object v0, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$1;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    #getter for: Lcom/android/browser/ui/BrowserTabSelectionDialog;->_webviews:Ljava/util/List;
    invoke-static {v0}, Lcom/android/browser/ui/BrowserTabSelectionDialog;->access$200(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    sub-int v2, p3, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ui/MiRenWebView;

    invoke-interface {v1, v0}, Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;->onSwitchToTab(Lcom/android/browser/ui/MiRenWebView;)V

    goto :goto_0
.end method
