.class Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLastOutgoingCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

.field final synthetic this$0:Lcom/android/phone/CallLogAsync;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->mCallback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

    .line 198
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 193
    check-cast p1, [Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->doInBackground([Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Ljava/lang/String;
    .locals 9
    .parameter "list"

    .prologue
    .line 206
    array-length v2, p1

    .line 207
    .local v2, count:I
    const-string v6, ""

    .line 209
    .local v6, number:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    :try_start_0
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 211
    .local v0, args:Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v7, v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/provider/CallLog$Calls;->getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 209
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 213
    .end local v0           #args:Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 214
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v7, "CallLogAsync"

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v3           #e:Ljava/lang/RuntimeException;
    :cond_0
    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 193
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    #calls: Lcom/android/phone/CallLogAsync;->assertUiThread()V
    invoke-static {v0}, Lcom/android/phone/CallLogAsync;->access$100(Lcom/android/phone/CallLogAsync;)V

    .line 224
    iget-object v0, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->mCallback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

    invoke-interface {v0, p1}, Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;->lastOutgoingCall(Ljava/lang/String;)V

    .line 225
    return-void
.end method
