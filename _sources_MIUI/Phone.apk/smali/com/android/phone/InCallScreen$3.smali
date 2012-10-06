.class Lcom/android/phone/InCallScreen$3;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$logNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$3;->val$logNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 727
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallArgs;

    iget-object v1, p0, Lcom/android/phone/InCallScreen$3;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$3;->val$logNumber:Ljava/lang/String;

    iget v4, p3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    const/4 v5, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v2, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V

    .line 730
    .local v0, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    new-instance v1, Lcom/android/phone/CallLogAsync;

    invoke-direct {v1}, Lcom/android/phone/CallLogAsync;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 731
    return-void
.end method
