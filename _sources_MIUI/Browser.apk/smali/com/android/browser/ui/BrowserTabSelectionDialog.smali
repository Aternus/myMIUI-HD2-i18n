.class public Lcom/android/browser/ui/BrowserTabSelectionDialog;
.super Ljava/lang/Object;
.source "BrowserTabSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;,
        Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field private _dialog:Landroid/app/AlertDialog;

.field private _listview:Landroid/widget/ListView;

.field private _tabselectionlistener:Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;

.field private _webviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/ui/MiRenWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "actionListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/ui/MiRenWebView;",
            ">;",
            "Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, webViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/ui/MiRenWebView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_webviews:Ljava/util/List;

    .line 34
    iput-object p3, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_tabselectionlistener:Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_tabselectionlistener:Lcom/android/browser/ui/BrowserTabSelectionDialog$OnTabSelectionActionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_webviews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public prepareDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_listview:Landroid/widget/ListView;

    .line 40
    iget-object v1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_listview:Landroid/widget/ListView;

    new-instance v2, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;

    invoke-direct {v2, p0, v3}, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;-><init>(Lcom/android/browser/ui/BrowserTabSelectionDialog;Lcom/android/browser/ui/BrowserTabSelectionDialog$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    iget-object v1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_listview:Landroid/widget/ListView;

    new-instance v2, Lcom/android/browser/ui/BrowserTabSelectionDialog$1;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/BrowserTabSelectionDialog$1;-><init>(Lcom/android/browser/ui/BrowserTabSelectionDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 55
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_dialog:Landroid/app/AlertDialog;

    .line 56
    iget-object v1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog;->_dialog:Landroid/app/AlertDialog;

    return-object v1
.end method
