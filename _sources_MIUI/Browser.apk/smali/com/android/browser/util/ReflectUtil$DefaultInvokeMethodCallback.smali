.class Lcom/android/browser/util/ReflectUtil$DefaultInvokeMethodCallback;
.super Ljava/lang/Object;
.source "ReflectUtil.java"

# interfaces
.implements Lcom/android/browser/util/ReflectUtil$InvokeMethodCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/util/ReflectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultInvokeMethodCallback"
.end annotation


# instance fields
.field private parameter:[Ljava/lang/Object;

.field private receiver:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "receiver"
    .parameter "params"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/browser/util/ReflectUtil$DefaultInvokeMethodCallback;->receiver:Ljava/lang/Object;

    .line 119
    iput-object p2, p0, Lcom/android/browser/util/ReflectUtil$DefaultInvokeMethodCallback;->parameter:[Ljava/lang/Object;

    .line 120
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/browser/util/ReflectUtil$DefaultInvokeMethodCallback;->receiver:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/browser/util/ReflectUtil$DefaultInvokeMethodCallback;->parameter:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
