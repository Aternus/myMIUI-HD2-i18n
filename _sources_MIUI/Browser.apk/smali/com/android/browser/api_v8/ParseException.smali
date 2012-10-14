.class public Lcom/android/browser/api_v8/ParseException;
.super Ljava/lang/RuntimeException;
.source "ParseException.java"


# static fields
.field private static final serialVersionUID:J = -0x459d47a63b206c06L


# instance fields
.field public response:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/browser/api_v8/ParseException;->response:Ljava/lang/String;

    .line 35
    return-void
.end method
