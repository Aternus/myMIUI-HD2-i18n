.class public final Lcom/android/browser/util/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/util/ReflectUtil$DefaultInvokeMethodCallback;,
        Lcom/android/browser/util/ReflectUtil$InvokeMethodCallback;,
        Lcom/android/browser/util/ReflectUtil$LogFlag;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "com.android.browser.util.ReflectUtil"

    sput-object v0, Lcom/android/browser/util/ReflectUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static invokeDeclaredMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Lcom/android/browser/util/ReflectUtil$InvokeMethodCallback;)Ljava/lang/Object;
    .locals 6
    .parameter "flag"
    .parameter "clazz"
    .parameter "methodName"
    .parameter "paramTypes"
    .parameter "callback"

    .prologue
    .line 45
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/browser/util/ReflectUtil;->invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Lcom/android/browser/util/ReflectUtil$InvokeMethodCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeDeclaredMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "flag"
    .parameter "clazz"
    .parameter "methodName"
    .parameter "paramTypes"
    .parameter "receiver"
    .parameter "params"

    .prologue
    .line 39
    const/4 v1, 0x1

    new-instance v5, Lcom/android/browser/util/ReflectUtil$DefaultInvokeMethodCallback;

    invoke-direct {v5, p4, p5}, Lcom/android/browser/util/ReflectUtil$DefaultInvokeMethodCallback;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/browser/util/ReflectUtil;->invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Lcom/android/browser/util/ReflectUtil$InvokeMethodCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Lcom/android/browser/util/ReflectUtil$InvokeMethodCallback;)Ljava/lang/Object;
    .locals 6
    .parameter "flag"
    .parameter "clazz"
    .parameter "methodName"
    .parameter "paramTypes"
    .parameter "callback"

    .prologue
    .line 33
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/browser/util/ReflectUtil;->invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Lcom/android/browser/util/ReflectUtil$InvokeMethodCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "flag"
    .parameter "clazz"
    .parameter "methodName"
    .parameter "paramTypes"
    .parameter "receiver"
    .parameter "params"

    .prologue
    .line 27
    const/4 v1, 0x0

    new-instance v5, Lcom/android/browser/util/ReflectUtil$DefaultInvokeMethodCallback;

    invoke-direct {v5, p4, p5}, Lcom/android/browser/util/ReflectUtil$DefaultInvokeMethodCallback;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/browser/util/ReflectUtil;->invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Lcom/android/browser/util/ReflectUtil$InvokeMethodCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Lcom/android/browser/util/ReflectUtil$InvokeMethodCallback;)Ljava/lang/Object;
    .locals 3
    .parameter "flag"
    .parameter "isDeclared"
    .parameter "clazz"
    .parameter "methodName"
    .parameter "paramTypes"
    .parameter "callback"

    .prologue
    .line 53
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    .line 55
    .local v1, method:Ljava/lang/reflect/Method;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 56
    invoke-interface {p5, v1}, Lcom/android/browser/util/ReflectUtil$InvokeMethodCallback;->invoke(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_1
    return-object v2

    .line 53
    :cond_0
    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 58
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v0}, Lcom/android/browser/util/ReflectUtil;->logException(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Exception;)V

    .line 69
    .end local v0           #e:Ljava/lang/SecurityException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 59
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 60
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-static {p0, v0}, Lcom/android/browser/util/ReflectUtil;->logException(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Exception;)V

    goto :goto_2

    .line 61
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 62
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-static {p0, v0}, Lcom/android/browser/util/ReflectUtil;->logException(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Exception;)V

    goto :goto_2

    .line 63
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 64
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {p0, v0}, Lcom/android/browser/util/ReflectUtil;->logException(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Exception;)V

    goto :goto_2

    .line 65
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    move-object v0, v2

    .line 66
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-static {p0, v0}, Lcom/android/browser/util/ReflectUtil;->logException(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private static logException(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Exception;)V
    .locals 2
    .parameter "flag"
    .parameter "ex"

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/android/browser/util/ReflectUtil$LogFlag;->LogError:Lcom/android/browser/util/ReflectUtil$LogFlag;

    if-ne p0, v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/browser/util/ReflectUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    sget-object v0, Lcom/android/browser/util/ReflectUtil$LogFlag;->ReportToServer:Lcom/android/browser/util/ReflectUtil$LogFlag;

    if-ne p0, v0, :cond_0

    .line 108
    invoke-static {p1}, Lcom/android/browser/LogSettings;->reportExceptionAsync(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static setDeclaredField(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "flag"
    .parameter
    .parameter "fieldName"
    .parameter "receiver"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/browser/util/ReflectUtil$LogFlag;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/browser/util/ReflectUtil;->setField(Lcom/android/browser/util/ReflectUtil$LogFlag;ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public static setField(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "flag"
    .parameter
    .parameter "fieldName"
    .parameter "receiver"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/browser/util/ReflectUtil$LogFlag;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/browser/util/ReflectUtil;->setField(Lcom/android/browser/util/ReflectUtil$LogFlag;ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method private static setField(Lcom/android/browser/util/ReflectUtil$LogFlag;ZLjava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "flag"
    .parameter "isDeclared"
    .parameter
    .parameter "fieldName"
    .parameter "receiver"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/browser/util/ReflectUtil$LogFlag;",
            "Z",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v1, v2

    .line 87
    .local v1, field:Ljava/lang/reflect/Field;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 88
    invoke-virtual {v1, p4, p5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_1
    return-void

    .line 86
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 90
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v0}, Lcom/android/browser/util/ReflectUtil;->logException(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Exception;)V

    goto :goto_1

    .line 91
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 92
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-static {p0, v0}, Lcom/android/browser/util/ReflectUtil;->logException(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Exception;)V

    goto :goto_1

    .line 93
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 94
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {p0, v0}, Lcom/android/browser/util/ReflectUtil;->logException(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Exception;)V

    goto :goto_1

    .line 95
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 96
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-static {p0, v0}, Lcom/android/browser/util/ReflectUtil;->logException(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Exception;)V

    goto :goto_1
.end method
