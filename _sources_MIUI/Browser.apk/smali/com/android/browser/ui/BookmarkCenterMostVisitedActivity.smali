.class public Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;
.super Landroid/app/Activity;
.source "BookmarkCenterMostVisitedActivity.java"


# static fields
.field private static final MENU_CLEAR:I = 0x65


# instance fields
.field private mAdapter:Lcom/android/browser/controller/BookmarkAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;)Lcom/android/browser/controller/BookmarkAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->mAdapter:Lcom/android/browser/controller/BookmarkAdapter;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->setContentView(I)V

    .line 31
    const v1, 0x7f0d000a

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 32
    .local v0, list:Landroid/widget/ListView;
    new-instance v1, Lcom/android/browser/controller/BookmarkAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/browser/controller/BookmarkAdapter;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->mAdapter:Lcom/android/browser/controller/BookmarkAdapter;

    .line 33
    iget-object v1, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->mAdapter:Lcom/android/browser/controller/BookmarkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    new-instance v1, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$1;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$1;-><init>(Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 64
    const/16 v1, 0x65

    const v2, 0x7f0900cf

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 65
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 66
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;->mAdapter:Lcom/android/browser/controller/BookmarkAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkAdapter;->destroy()V

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 73
    .local v1, id:I
    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 74
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09000f

    new-instance v3, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$2;

    invoke-direct {v3, p0}, Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity$2;-><init>(Lcom/android/browser/ui/BookmarkCenterMostVisitedActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    const v2, 0x7f090012

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    const v2, 0x7f0900d0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 88
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
