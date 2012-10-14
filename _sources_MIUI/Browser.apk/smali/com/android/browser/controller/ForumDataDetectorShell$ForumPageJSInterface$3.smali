.class Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$3;
.super Ljava/lang/Object;
.source "ForumDataDetectorShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

.field final synthetic val$_navBar:Ljava/lang/String;

.field final synthetic val$_searchBtn:Ljava/lang/String;

.field final synthetic val$_userMenu:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$3;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iput-object p2, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$3;->val$_userMenu:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$3;->val$_navBar:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$3;->val$_searchBtn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$3;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$3;->val$_userMenu:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$3;->val$_navBar:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$3;->val$_searchBtn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/controller/ForumDataDetectorShell;->setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method
