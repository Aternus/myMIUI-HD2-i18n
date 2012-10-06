.class Lcom/android/browser/ui/MiRenImageView$MyHandler;
.super Landroid/os/Handler;
.source "MiRenImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenImageView;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/ui/MiRenImageView$MyHandler;->this$0:Lcom/android/browser/ui/MiRenImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 155
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/android/browser/ui/MiRenImageView;->MESSAGE_IMAGE_LOAD_COMPLETE:I

    if-ne v4, v5, :cond_1

    .line 157
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 158
    .local v0, b:Landroid/os/Bundle;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 159
    .local v3, loadedUrl:Ljava/lang/String;
    const/4 v2, 0x0

    .line 161
    .local v2, icon:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v4, Lcom/android/browser/ui/MiRenImageView;->IMAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 165
    :goto_0
    if-eqz v2, :cond_1

    .line 166
    iget-object v4, p0, Lcom/android/browser/ui/MiRenImageView$MyHandler;->this$0:Lcom/android/browser/ui/MiRenImageView;

    #getter for: Lcom/android/browser/ui/MiRenImageView;->mImageUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/browser/ui/MiRenImageView;->access$100(Lcom/android/browser/ui/MiRenImageView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/android/browser/ui/MiRenImageView$MyHandler;->this$0:Lcom/android/browser/ui/MiRenImageView;

    invoke-virtual {v4, v2}, Lcom/android/browser/ui/MiRenImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    :cond_0
    invoke-static {}, Lcom/android/browser/ui/MiRenImageView;->access$200()Ljava/lang/Integer;

    move-result-object v4

    monitor-enter v4

    .line 170
    :try_start_1
    sget-object v5, Lcom/android/browser/ui/MiRenImageView;->mIconMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v3           #loadedUrl:Ljava/lang/String;
    :cond_1
    return-void

    .line 162
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v2       #icon:Landroid/graphics/Bitmap;
    .restart local v3       #loadedUrl:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 163
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/browser/ui/MiRenImageView;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OutOfMemoryError in downloadImageSync"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
