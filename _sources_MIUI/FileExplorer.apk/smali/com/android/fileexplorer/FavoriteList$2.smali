.class Lcom/android/fileexplorer/FavoriteList$2;
.super Ljava/lang/Object;
.source "FavoriteList.java"

# interfaces
.implements Lcom/android/fileexplorer/FileViewActivity$OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FavoriteList;->onFavoriteListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 128
    iput-object p1, p0, Lcom/android/fileexplorer/FavoriteList$2;->this$0:Lcom/android/fileexplorer/FavoriteList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBack()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/Util;->showTab(I)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method
