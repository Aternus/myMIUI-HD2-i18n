.class Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;
.super Ljava/lang/Thread;
.source "ContactPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPhotoThread"
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lcom/android/contacts/ContactPickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactPickerActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->mCanceled:Z

    .line 588
    const-string v0, "ContactPickerActivity"

    const-string v1, "SetPhotoThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method private getPhoto(Ljava/util/zip/ZipFile;Lcom/android/contacts/ui/ContactPhotoItem;J)[B
    .locals 10
    .parameter "zipFile"
    .parameter "photo"
    .parameter "contactId"

    .prologue
    const-string v9, "ContactPickerActivity"

    .line 666
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 668
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 669
    .local v5, src:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 670
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p2}, Lcom/android/contacts/ui/ContactPhotoItem;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 671
    .local v3, entry:Ljava/util/zip/ZipEntry;
    const-string v6, "ContactPickerActivity"

    invoke-virtual {p2}, Lcom/android/contacts/ui/ContactPhotoItem;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 674
    if-nez v5, :cond_0

    .line 675
    const/4 v6, 0x0

    .line 706
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v6

    .line 678
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    :cond_0
    const/16 v6, 0x8c

    const/16 v7, 0x8c

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 679
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 681
    invoke-virtual {p2}, Lcom/android/contacts/ui/ContactPhotoItem;->getStorageType()Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    move-result-object v6

    sget-object v7, Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;->FROM_NAME:Lcom/android/contacts/ui/ContactPhotoItem$StorageTypeEnum;

    if-ne v6, v7, :cond_1

    .line 682
    iget-object v6, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    iget-object v6, v6, Lcom/android/contacts/ContactPickerActivity;->mContactIdNameMap:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 683
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 684
    const/16 v6, 0x8c

    const/16 v7, 0x8c

    iget-object v8, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mColor:I
    invoke-static {v8}, Lcom/android/contacts/ContactPickerActivity;->access$300(Lcom/android/contacts/ContactPickerActivity;)I

    move-result v8

    invoke-static {v1, v4, v6, v7, v8}, Lcom/android/internal/util/GraphicsUtils;->createNameBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 691
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 692
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 693
    const/16 v6, 0x8c

    const/16 v7, 0x8c

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 694
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 697
    :cond_2
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 698
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 706
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    .line 700
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 701
    .local v2, e:Ljava/util/zip/ZipException;
    const-string v6, "ContactPickerActivity"

    invoke-virtual {v2}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 702
    .end local v2           #e:Ljava/util/zip/ZipException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 703
    .local v2, e:Ljava/io/IOException;
    const-string v6, "ContactPickerActivity"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->mCanceled:Z

    .line 663
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 711
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->mCanceled:Z

    .line 713
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 715
    iget-object v0, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactPickerActivity;->access$202(Lcom/android/contacts/ContactPickerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 718
    :cond_0
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const-string v13, "ContactPickerActivity"

    .line 594
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    iget-object v10, v10, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 595
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v10}, Lcom/android/contacts/ContactPickerActivity;->finish()V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v10}, Lcom/android/contacts/ContactPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 601
    .local v8, uri:Landroid/net/Uri;
    if-nez v8, :cond_2

    .line 602
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v10}, Lcom/android/contacts/ContactPickerActivity;->finish()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 653
    .end local v8           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 654
    .local v1, e:Ljava/util/zip/ZipException;
    const-string v10, "ContactPickerActivity"

    invoke-virtual {v1}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    .end local v1           #e:Ljava/util/zip/ZipException;
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, path:Ljava/lang/String;
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 608
    .local v9, zipFile:Ljava/util/zip/ZipFile;
    const/4 v10, 0x0

    invoke-static {v9, v4, v10}, Lcom/android/contacts/ContactsUtils;->getPhotoList(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 610
    .local v5, photoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ui/ContactPhotoItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 611
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v10}, Lcom/android/contacts/ContactPickerActivity;->finish()V
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 655
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #photoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ui/ContactPhotoItem;>;"
    .end local v8           #uri:Landroid/net/Uri;
    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v10

    move-object v1, v10

    .line 656
    .local v1, e:Ljava/io/IOException;
    const-string v10, "ContactPickerActivity"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #photoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ui/ContactPhotoItem;>;"
    .restart local v8       #uri:Landroid/net/Uri;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    :cond_3
    const/4 v6, 0x0

    .line 616
    .local v6, photoIndex:I
    :try_start_2
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    iget-object v10, v10, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 618
    .local v3, id:Ljava/lang/Long;
    iget-boolean v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->mCanceled:Z

    if-nez v10, :cond_0

    .line 622
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v10}, Lcom/android/contacts/ContactPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/android/contacts/ContactsUtils;->queryForAllRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;

    move-result-object v7

    .line 623
    .local v7, rawContactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v14

    if-le v6, v10, :cond_5

    .line 624
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v6, v10

    .line 627
    :cond_5
    const-string v10, "ContactPickerActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "index is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/ui/ContactPhotoItem;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->getPhoto(Ljava/util/zip/ZipFile;Lcom/android/contacts/ui/ContactPhotoItem;J)[B

    move-result-object v0

    .line 629
    .local v0, bytes:[B
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #calls: Lcom/android/contacts/ContactPickerActivity;->setContactPhoto(Ljava/util/ArrayList;[B)V
    invoke-static {v10, v7, v0}, Lcom/android/contacts/ContactPickerActivity;->access$100(Lcom/android/contacts/ContactPickerActivity;Ljava/util/ArrayList;[B)V

    .line 631
    add-int/lit8 v6, v6, 0x1

    .line 633
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 634
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_1

    .line 638
    .end local v0           #bytes:[B
    .end local v3           #id:Ljava/lang/Long;
    .end local v7           #rawContactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_6
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    .line 640
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 641
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    #getter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/contacts/ContactPickerActivity;->access$200(Lcom/android/contacts/ContactPickerActivity;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->dismiss()V

    .line 642
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    const/4 v11, 0x0

    #setter for: Lcom/android/contacts/ContactPickerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10, v11}, Lcom/android/contacts/ContactPickerActivity;->access$202(Lcom/android/contacts/ContactPickerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 644
    iget-object v10, p0, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;->this$0:Lcom/android/contacts/ContactPickerActivity;

    new-instance v11, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread$1;

    invoke-direct {v11, p0}, Lcom/android/contacts/ContactPickerActivity$SetPhotoThread$1;-><init>(Lcom/android/contacts/ContactPickerActivity$SetPhotoThread;)V

    invoke-virtual {v10, v11}, Lcom/android/contacts/ContactPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
