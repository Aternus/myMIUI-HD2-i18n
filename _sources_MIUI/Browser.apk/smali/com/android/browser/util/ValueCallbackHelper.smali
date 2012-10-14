.class public Lcom/android/browser/util/ValueCallbackHelper;
.super Ljava/lang/Object;
.source "ValueCallbackHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onReceiveValue(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .parameter "uploadMessage"
    .parameter "result"

    .prologue
    .line 8
    check-cast p0, Landroid/webkit/ValueCallback;

    .end local p0
    invoke-interface {p0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 9
    return-void
.end method
