.class Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface$1;
.super Ljava/lang/Object;
.source "ForumTypeDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;->onIdentityDetected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;

.field final synthetic val$_generator:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface$1;->this$1:Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;

    iput-object p2, p0, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface$1;->val$_generator:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface$1;->this$1:Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;

    iget-object v0, v0, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumTypeDetector;

    iget-object v1, p0, Lcom/android/browser/controller/ForumTypeDetector$ForumJSInterface$1;->val$_generator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/ForumTypeDetector;->onIdentityDetected(Ljava/lang/String;)V

    .line 101
    return-void
.end method
