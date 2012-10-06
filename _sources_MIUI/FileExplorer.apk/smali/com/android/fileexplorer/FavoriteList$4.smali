.class Lcom/android/fileexplorer/FavoriteList$4;
.super Ljava/lang/Object;
.source "FavoriteList.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 162
    iput-object p1, p0, Lcom/android/fileexplorer/FavoriteList$4;->this$0:Lcom/android/fileexplorer/FavoriteList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, -0x1

    .line 166
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 167
    .local v1, itemId:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 168
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move v2, v3

    .line 170
    .local v2, position:I
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 178
    const/4 v3, 0x0

    .line 181
    :goto_1
    return v3

    .end local v2           #position:I
    :cond_0
    move v2, v4

    .line 168
    goto :goto_0

    .line 172
    .restart local v2       #position:I
    :pswitch_0
    if-eq v2, v4, :cond_1

    .line 173
    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteList$4;->this$0:Lcom/android/fileexplorer/FavoriteList;

    #calls: Lcom/android/fileexplorer/FavoriteList;->deleteFavorite(I)V
    invoke-static {v3, v2}, Lcom/android/fileexplorer/FavoriteList;->access$100(Lcom/android/fileexplorer/FavoriteList;I)V

    .line 181
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 170
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
