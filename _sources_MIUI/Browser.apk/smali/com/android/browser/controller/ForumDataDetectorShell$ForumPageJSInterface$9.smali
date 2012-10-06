.class Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;
.super Ljava/lang/Object;
.source "ForumDataDetectorShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->addNormalThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

.field final synthetic val$author:Ljava/lang/String;

.field final synthetic val$icon:Ljava/lang/String;

.field final synthetic val$lastpost:Ljava/lang/String;

.field final synthetic val$link:Ljava/lang/String;

.field final synthetic val$nums:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iput-object p2, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$link:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$icon:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$author:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$nums:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$lastpost:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    #getter for: Lcom/android/browser/controller/ForumDataDetectorShell;->mController:Lcom/android/browser/controller/ForumController;
    invoke-static {v0}, Lcom/android/browser/controller/ForumDataDetectorShell;->access$100(Lcom/android/browser/controller/ForumDataDetectorShell;)Lcom/android/browser/controller/ForumController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$link:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$author:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$nums:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;->val$lastpost:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/controller/ForumController;->addNewNormalThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method
