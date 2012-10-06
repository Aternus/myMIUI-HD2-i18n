.class Lcom/android/browser/controller/ReadingModeController$3;
.super Landroid/os/AsyncTask;
.source "ReadingModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ReadingModeController;->getNextPageFromHost(Ljava/net/URI;Lcom/android/browser/controller/ReadingModeController$ReadingData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ReadingModeController;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ReadingModeController;Ljava/net/URL;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    iput-object p2, p0, Lcom/android/browser/controller/ReadingModeController$3;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 638
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/ReadingModeController$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 14
    .parameter "params"

    .prologue
    .line 642
    const/4 v9, 0x0

    .line 644
    .local v9, responseStream:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController$3;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 645
    .local v4, cookie:Ljava/lang/String;
    const/4 v5, 0x0

    .line 646
    .local v5, extraHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$900(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #extraHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 648
    .restart local v5       #extraHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Referer"

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/controller/ReadingModeController;->access$900(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_0
    new-instance v6, Lcom/android/browser/common/Network$HttpHeaderInfo;

    invoke-direct {v6}, Lcom/android/browser/common/Network$HttpHeaderInfo;-><init>()V

    .line 652
    .local v6, info:Lcom/android/browser/common/Network$HttpHeaderInfo;
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController$3;->val$url:Ljava/net/URL;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mUserAgent:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeController;->access$1000(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Lcom/android/browser/common/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/browser/common/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v9

    .line 653
    iget-object v0, v6, Lcom/android/browser/common/Network$HttpHeaderInfo;->ContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/common/Network;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 654
    .local v12, charset:Ljava/lang/String;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 655
    .local v10, bos:Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$1100(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/util/WMLParserSax;

    move-result-object v0

    if-nez v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    new-instance v1, Lcom/android/browser/util/WMLParserSax;

    invoke-direct {v1}, Lcom/android/browser/util/WMLParserSax;-><init>()V

    #setter for: Lcom/android/browser/controller/ReadingModeController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeController;->access$1102(Lcom/android/browser/controller/ReadingModeController;Lcom/android/browser/util/WMLParserSax;)Lcom/android/browser/util/WMLParserSax;

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$1100(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/util/WMLParserSax;

    move-result-object v7

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/browser/util/WMLParserSax;->parseWML(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;Lcom/android/browser/util/WMLParserSax$ProgressListener;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5

    .line 669
    if-eqz v9, :cond_2

    .line 671
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    move-object v0, v10

    .line 677
    .end local v4           #cookie:Ljava/lang/String;
    .end local v5           #extraHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #info:Lcom/android/browser/common/Network$HttpHeaderInfo;
    .end local v10           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v12           #charset:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 672
    .restart local v4       #cookie:Ljava/lang/String;
    .restart local v5       #extraHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #info:Lcom/android/browser/common/Network$HttpHeaderInfo;
    .restart local v10       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #charset:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 673
    .local v13, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error to close stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 661
    .end local v4           #cookie:Ljava/lang/String;
    .end local v5           #extraHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #info:Lcom/android/browser/common/Network$HttpHeaderInfo;
    .end local v10           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v12           #charset:Ljava/lang/String;
    .end local v13           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    move-object v13, v0

    .line 662
    .restart local v13       #e:Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load wap site error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 669
    if-eqz v9, :cond_3

    .line 671
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 677
    .end local v13           #e:Ljava/io/IOException;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 672
    .restart local v13       #e:Ljava/io/IOException;
    :catch_2
    move-exception v13

    .line 673
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error to close stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 663
    .end local v13           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    move-object v13, v0

    .line 664
    .local v13, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_4
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load wap site error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 669
    if-eqz v9, :cond_3

    .line 671
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 672
    :catch_4
    move-exception v13

    .line 673
    .local v13, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error to close stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 665
    .end local v13           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    move-object v13, v0

    .line 666
    .local v13, e:Lorg/xml/sax/SAXException;
    :try_start_6
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load wap site error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 669
    if-eqz v9, :cond_3

    .line 671
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 672
    :catch_6
    move-exception v13

    .line 673
    .local v13, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error to close stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 669
    .end local v13           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 671
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 674
    :cond_4
    :goto_3
    throw v0

    .line 672
    :catch_7
    move-exception v13

    .line 673
    .restart local v13       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/browser/controller/ReadingModeController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error to close stream:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .parameter "bos"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mCanceled:Z
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$300(Lcom/android/browser/controller/ReadingModeController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    if-nez p1, :cond_2

    .line 687
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    iget-object v1, v1, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/browser/controller/ReadingModeController;->onReadingDataReady(Lcom/android/browser/model/ReadingModePageDataProvider;Z)V

    goto :goto_0

    .line 690
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, wapHtml:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$1200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController$3;->this$0:Lcom/android/browser/controller/ReadingModeController;

    #getter for: Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->access$1200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController$3;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController$3;->val$url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/ui/MiRenWebViewBase;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
