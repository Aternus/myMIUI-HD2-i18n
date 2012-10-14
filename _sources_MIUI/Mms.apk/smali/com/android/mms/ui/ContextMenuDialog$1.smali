.class Lcom/android/mms/ui/ContextMenuDialog$1;
.super Landroid/widget/BaseAdapter;
.source "ContextMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ContextMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ContextMenuDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ContextMenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/mms/ui/ContextMenuDialog$1;->this$0:Lcom/android/mms/ui/ContextMenuDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog$1;->this$0:Lcom/android/mms/ui/ContextMenuDialog;

    #getter for: Lcom/android/mms/ui/ContextMenuDialog;->mMenuTitles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ContextMenuDialog;->access$000(Lcom/android/mms/ui/ContextMenuDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ContextMenuDialog$1;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog$1;->this$0:Lcom/android/mms/ui/ContextMenuDialog;

    #getter for: Lcom/android/mms/ui/ContextMenuDialog;->mMenuTitles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ContextMenuDialog;->access$000(Lcom/android/mms/ui/ContextMenuDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/ContextMenuDialog$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, v:Landroid/widget/TextView;
    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 75
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 82
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ContextMenuDialog$1;->this$0:Lcom/android/mms/ui/ContextMenuDialog;

    #getter for: Lcom/android/mms/ui/ContextMenuDialog;->mMenuTitles:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/ContextMenuDialog;->access$000(Lcom/android/mms/ui/ContextMenuDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-object v2

    .line 77
    .restart local p0
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ContextMenuDialog$1;->this$0:Lcom/android/mms/ui/ContextMenuDialog;

    #getter for: Lcom/android/mms/ui/ContextMenuDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/ContextMenuDialog;->access$100(Lcom/android/mms/ui/ContextMenuDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 79
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090021

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .end local v2           #v:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .restart local v2       #v:Landroid/widget/TextView;
    goto :goto_0
.end method
