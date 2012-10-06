.class Lcom/android/fileexplorer/FavoriteList$3;
.super Ljava/lang/Object;
.source "FavoriteList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FavoriteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FavoriteList;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FavoriteList;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/fileexplorer/FavoriteList$3;->this$0:Lcom/android/fileexplorer/FavoriteList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 156
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 158
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/16 v2, 0x64

    const v3, 0x7f060042

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteList$3;->this$0:Lcom/android/fileexplorer/FavoriteList;

    #getter for: Lcom/android/fileexplorer/FavoriteList;->menuItemClick:Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-static {v3}, Lcom/android/fileexplorer/FavoriteList;->access$000(Lcom/android/fileexplorer/FavoriteList;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 159
    return-void
.end method
