.class public interface abstract Lcom/android/browser/util/ReflectUtil$InvokeMethodCallback;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/util/ReflectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InvokeMethodCallback"
.end annotation


# virtual methods
.method public abstract invoke(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method
