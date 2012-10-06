.class Lcom/android/browser/controller/Tab$OnBarconLongClickListener$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/Tab$OnBarconLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/Tab$OnBarconLongClickListener;

.field final synthetic val$data:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/Tab$OnBarconLongClickListener;Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener$1;->this$1:Lcom/android/browser/controller/Tab$OnBarconLongClickListener;

    iput-object p2, p0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener$1;->val$data:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 175
    packed-switch p2, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener$1;->val$data:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener$1;->this$1:Lcom/android/browser/controller/Tab$OnBarconLongClickListener;

    iget-object v0, v0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener$1;->val$data:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;

    iget-object v1, v1, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->openEditHomeItemDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener$1;->this$1:Lcom/android/browser/controller/Tab$OnBarconLongClickListener;

    iget-object v0, v0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener$1;->val$data:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;

    iget-object v1, v1, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->deleteHomeQuickAccessItem(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener$1;->this$1:Lcom/android/browser/controller/Tab$OnBarconLongClickListener;

    iget-object v0, v0, Lcom/android/browser/controller/Tab$OnBarconLongClickListener;->this$0:Lcom/android/browser/controller/Tab;

    #getter for: Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/controller/Tab;->access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/model/NavigationHomeDataLoader;->getInstance(Landroid/content/Context;)Lcom/android/browser/model/NavigationHomeDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/model/NavigationHomeDataLoader;->notifyChanged()V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
