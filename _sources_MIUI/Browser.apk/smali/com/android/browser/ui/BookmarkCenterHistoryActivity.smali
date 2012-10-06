.class public Lcom/android/browser/ui/BookmarkCenterHistoryActivity;
.super Landroid/app/ExpandableListActivity;
.source "BookmarkCenterHistoryActivity.java"


# static fields
.field private static final MENU_CLEAR:I = 0x65


# instance fields
.field private mAdapter:Lcom/android/browser/controller/HistoryAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ui/BookmarkCenterHistoryActivity;)Lcom/android/browser/controller/HistoryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->mAdapter:Lcom/android/browser/controller/HistoryAdapter;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->setContentView(I)V

    .line 39
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 40
    .local v0, list:Landroid/widget/ExpandableListView;
    new-instance v1, Lcom/android/browser/controller/HistoryAdapter;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/browser/controller/HistoryAdapter;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->mAdapter:Lcom/android/browser/controller/HistoryAdapter;

    .line 41
    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->mAdapter:Lcom/android/browser/controller/HistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 43
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 46
    :cond_0
    new-instance v1, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$1;-><init>(Lcom/android/browser/ui/BookmarkCenterHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 69
    const/16 v1, 0x65

    const v2, 0x7f0900cf

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 70
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 71
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 31
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterHistoryActivity;->mAdapter:Lcom/android/browser/controller/HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/HistoryAdapter;->destroy()V

    .line 32
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 78
    .local v1, id:I
    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09000f

    new-instance v3, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$2;

    invoke-direct {v3, p0}, Lcom/android/browser/ui/BookmarkCenterHistoryActivity$2;-><init>(Lcom/android/browser/ui/BookmarkCenterHistoryActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    const v2, 0x7f090012

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const v2, 0x7f0900d0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 93
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
