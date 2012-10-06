.class Lcom/android/fileexplorer/FileCategoryActivity$1;
.super Ljava/lang/Object;
.source "FileCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileCategoryActivity;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryActivity$1;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 230
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 236
    invoke-static {}, Lcom/android/fileexplorer/FileCategoryActivity;->access$200()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 237
    .local v0, f:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    if-eqz v0, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity$1;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    #calls: Lcom/android/fileexplorer/FileCategoryActivity;->onCategorySelected(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V
    invoke-static {v2, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->access$300(Lcom/android/fileexplorer/FileCategoryActivity;Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V

    .line 243
    .end local v0           #f:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    :cond_0
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity$1;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    #calls: Lcom/android/fileexplorer/FileCategoryActivity;->onOperationInstall()V
    invoke-static {v2}, Lcom/android/fileexplorer/FileCategoryActivity;->access$100(Lcom/android/fileexplorer/FileCategoryActivity;)V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x7f08003b
        :pswitch_0
    .end packed-switch
.end method
