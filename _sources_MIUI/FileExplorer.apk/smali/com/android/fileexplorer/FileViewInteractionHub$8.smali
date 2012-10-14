.class Lcom/android/fileexplorer/FileViewInteractionHub$8;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewInteractionHub;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x0

    .line 646
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v6}, Lcom/android/fileexplorer/FileViewInteractionHub;->isInSelection()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v6}, Lcom/android/fileexplorer/FileViewInteractionHub;->isMoveState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V
    invoke-static {v6, v9}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$600(Lcom/android/fileexplorer/FileViewInteractionHub;Z)V

    .line 651
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 653
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-static {}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->getInstance()Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    move-result-object v1

    .line 654
    .local v1, databaseHelper:Lcom/android/fileexplorer/FavoriteDatabaseHelper;
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    #getter for: Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;
    invoke-static {v6}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$200(Lcom/android/fileexplorer/FileViewInteractionHub;)Lcom/android/fileexplorer/IFileInteractionListener;

    move-result-object v6

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v6, v7}, Lcom/android/fileexplorer/IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v2

    .line 655
    .local v2, file:Lcom/android/fileexplorer/FileInfo;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 656
    iget-object v6, v2, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->isFavorite(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f060042

    move v5, v6

    .line 658
    .local v5, stringId:I
    :goto_1
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v7, 0x65

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v6, p1, v7, v9, v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1300(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 661
    .end local v5           #stringId:I
    :cond_2
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v7, 0x68

    const v8, 0x7f06002d

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v6, p1, v7, v9, v8}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1300(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 664
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v7, 0x6a

    const v8, 0x7f060037

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v6, p1, v7, v9, v8}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1300(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 665
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/4 v7, 0x7

    const v8, 0x7f060040

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v6, p1, v7, v9, v8}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1300(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 666
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v7, 0x8

    const v8, 0x7f06003d

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v6, p1, v7, v9, v8}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1300(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 667
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v7, 0x9

    const v8, 0x7f060030

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v6, p1, v7, v9, v8}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1300(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 668
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/16 v7, 0xa

    const v8, 0x7f060035

    #calls: Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V
    invoke-static {v6, p1, v7, v9, v8}, Lcom/android/fileexplorer/FileViewInteractionHub;->access$1300(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V

    .line 670
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub$8;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v6}, Lcom/android/fileexplorer/FileViewInteractionHub;->canPaste()Z

    move-result v6

    if-nez v6, :cond_0

    .line 671
    const/16 v6, 0x69

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 672
    .local v4, menuItem:Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 673
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 656
    .end local v4           #menuItem:Landroid/view/MenuItem;
    :cond_3
    const v6, 0x7f060033

    move v5, v6

    goto :goto_1
.end method
