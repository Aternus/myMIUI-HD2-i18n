.class public Lcom/android/sidekick/InputHistoryDialog;
.super Landroid/app/Dialog;
.source "InputHistoryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field private mAdapter:Lcom/android/sidekick/InputHistoryAdapter;

.field private mAlertDialog:Landroid/app/Dialog;

.field private mList:Landroid/widget/ExpandableListView;

.field private mSelectedQuery:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/sidekick/InputHistoryAdapter;)V
    .locals 3
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 24
    const v0, 0x7f080009

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mSelectedQuery:Ljava/lang/CharSequence;

    .line 25
    iput-object p2, p0, Lcom/android/sidekick/InputHistoryDialog;->mAdapter:Lcom/android/sidekick/InputHistoryAdapter;

    .line 27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/sidekick/InputHistoryDialog$2;

    invoke-direct {v2, p0}, Lcom/android/sidekick/InputHistoryDialog$2;-><init>(Lcom/android/sidekick/InputHistoryDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/sidekick/InputHistoryDialog$1;

    invoke-direct {v2, p0}, Lcom/android/sidekick/InputHistoryDialog$1;-><init>(Lcom/android/sidekick/InputHistoryDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mAlertDialog:Landroid/app/Dialog;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/sidekick/InputHistoryDialog;)Lcom/android/sidekick/InputHistoryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mAdapter:Lcom/android/sidekick/InputHistoryAdapter;

    return-object v0
.end method


# virtual methods
.method getSelectQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mSelectedQuery:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mAdapter:Lcom/android/sidekick/InputHistoryAdapter;

    invoke-virtual {v0, p3, p4}, Lcom/android/sidekick/InputHistoryAdapter;->getChildLabel(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mSelectedQuery:Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p0}, Lcom/android/sidekick/InputHistoryDialog;->dismiss()V

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mAdapter:Lcom/android/sidekick/InputHistoryAdapter;

    invoke-virtual {v0}, Lcom/android/sidekick/InputHistoryAdapter;->getGroupCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 79
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/sidekick/InputHistoryDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 47
    .local v1, window:Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 48
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/android/sidekick/InputHistoryDialog;->setContentView(I)V

    .line 49
    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/android/sidekick/InputHistoryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/android/sidekick/InputHistoryDialog;->mList:Landroid/widget/ExpandableListView;

    .line 50
    iget-object v2, p0, Lcom/android/sidekick/InputHistoryDialog;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/sidekick/InputHistoryDialog;->mAdapter:Lcom/android/sidekick/InputHistoryAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 51
    iget-object v2, p0, Lcom/android/sidekick/InputHistoryDialog;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 53
    const v2, 0x7f09000a

    invoke-virtual {p0, v2}, Lcom/android/sidekick/InputHistoryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 56
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mAdapter:Lcom/android/sidekick/InputHistoryAdapter;

    invoke-virtual {v0}, Lcom/android/sidekick/InputHistoryAdapter;->loadHistory()V

    .line 64
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mAdapter:Lcom/android/sidekick/InputHistoryAdapter;

    invoke-virtual {v0}, Lcom/android/sidekick/InputHistoryAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 67
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryDialog;->mAdapter:Lcom/android/sidekick/InputHistoryAdapter;

    invoke-virtual {v0}, Lcom/android/sidekick/InputHistoryAdapter;->destory()V

    .line 72
    return-void
.end method
