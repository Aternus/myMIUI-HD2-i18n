.class Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SiSlPushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mBody:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;

.field private mOriginatingAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/transaction/PushReceiver;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 176
    iput-object p2, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    .line 177
    return-void
.end method

.method private appendNewLine(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private storeWapPushMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    iget-object v2, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "protocol"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v1, "body"

    iget-object v2, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 238
    return-void
.end method

.method private traverse(Lorg/w3c/dom/Node;)V
    .locals 6
    .parameter "node"

    .prologue
    .line 202
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, child:Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 203
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->traverse(Lorg/w3c/dom/Node;)V

    .line 202
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 206
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 207
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->appendNewLine(Ljava/lang/String;)V

    .line 209
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 210
    .local v0, attrs:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_2

    .line 211
    const-string v4, "href"

    invoke-interface {v0, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 212
    .local v2, hrefNode:Lorg/w3c/dom/Node;
    if-eqz v2, :cond_2

    .line 213
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, hrefValue:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 215
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->appendNewLine(Ljava/lang/String;)V

    .line 219
    .end local v2           #hrefNode:Lorg/w3c/dom/Node;
    .end local v3           #hrefValue:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 8
    .parameter "paramArrayOfIntent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 182
    const-string v4, "PushReceiver"

    const-string v5, "ReceiveWapPushTask doInBackground"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    aget-object v2, p1, v6

    .line 184
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "data"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 185
    .local v3, pushData:[B
    const-string v4, "originatingAddress"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mOriginatingAddress:Ljava/lang/String;

    .line 187
    new-instance v0, Lcom/android/mms/jwap_port/WBXMLDecoder;

    iget-object v4, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/mms/jwap_port/WBXMLDecoder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, decoder:Lcom/android/mms/jwap_port/WBXMLDecoder;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Lcom/android/mms/jwap_port/WBXMLDecoder;->decode(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 189
    .local v1, document:Lorg/w3c/dom/Document;
    if-nez v1, :cond_0

    move-object v4, v7

    .line 198
    :goto_0
    return-object v4

    .line 192
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    .line 193
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->traverse(Lorg/w3c/dom/Node;)V

    .line 194
    iget-object v4, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->storeWapPushMessage()V

    .line 196
    iget-object v4, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    :cond_1
    move-object v4, v7

    .line 198
    goto :goto_0
.end method
