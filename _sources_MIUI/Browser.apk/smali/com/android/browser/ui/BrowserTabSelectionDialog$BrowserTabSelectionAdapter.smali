.class Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowserTabSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/BrowserTabSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowserTabSelectionAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;


# direct methods
.method private constructor <init>(Lcom/android/browser/ui/BrowserTabSelectionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ui/BrowserTabSelectionDialog;Lcom/android/browser/ui/BrowserTabSelectionDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;-><init>(Lcom/android/browser/ui/BrowserTabSelectionDialog;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    #getter for: Lcom/android/browser/ui/BrowserTabSelectionDialog;->_webviews:Ljava/util/List;
    invoke-static {v2}, Lcom/android/browser/ui/BrowserTabSelectionDialog;->access$200(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    #getter for: Lcom/android/browser/ui/BrowserTabSelectionDialog;->_webviews:Ljava/util/List;
    invoke-static {v2}, Lcom/android/browser/ui/BrowserTabSelectionDialog;->access$200(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    .line 80
    if-nez p2, :cond_0

    .line 81
    iget-object v6, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    #getter for: Lcom/android/browser/ui/BrowserTabSelectionDialog;->_context:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/browser/ui/BrowserTabSelectionDialog;->access$400(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 86
    .local v4, tv:Landroid/widget/LinearLayout;
    :goto_0
    const v6, 0x7f0d002b

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 87
    .local v3, titleTextView:Landroid/widget/TextView;
    const v6, 0x7f0d002c

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 88
    .local v5, urlTextView:Landroid/widget/TextView;
    const v6, 0x7f0d002d

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object v0, v6

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 90
    .local v1, closeButtonView:Landroid/widget/ImageView;
    if-nez p1, :cond_1

    .line 91
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    const v6, 0x7f090008

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 102
    :goto_1
    move v2, p1

    .line 103
    .local v2, currentPosition:I
    new-instance v6, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter$1;-><init>(Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object v4

    .line 83
    .end local v1           #closeButtonView:Landroid/widget/ImageView;
    .end local v2           #currentPosition:I
    .end local v3           #titleTextView:Landroid/widget/TextView;
    .end local v4           #tv:Landroid/widget/LinearLayout;
    .end local v5           #urlTextView:Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v4, v0

    .restart local v4       #tv:Landroid/widget/LinearLayout;
    goto :goto_0

    .line 95
    .restart local v1       #closeButtonView:Landroid/widget/ImageView;
    .restart local v3       #titleTextView:Landroid/widget/TextView;
    .restart local v5       #urlTextView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v6, p0, Lcom/android/browser/ui/BrowserTabSelectionDialog$BrowserTabSelectionAdapter;->this$0:Lcom/android/browser/ui/BrowserTabSelectionDialog;

    #getter for: Lcom/android/browser/ui/BrowserTabSelectionDialog;->_webviews:Ljava/util/List;
    invoke-static {v6}, Lcom/android/browser/ui/BrowserTabSelectionDialog;->access$200(Lcom/android/browser/ui/BrowserTabSelectionDialog;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    sub-int v7, p1, v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v6}, Lcom/android/browser/ui/MiRenWebView;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
