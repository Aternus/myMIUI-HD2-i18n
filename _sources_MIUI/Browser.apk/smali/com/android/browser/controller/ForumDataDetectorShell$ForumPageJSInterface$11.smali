.class Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;
.super Ljava/lang/Object;
.source "ForumDataDetectorShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->addPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

.field final synthetic val$authorID:Ljava/lang/String;

.field final synthetic val$authorIcon:Ljava/lang/String;

.field final synthetic val$authorIconOnError:Ljava/lang/String;

.field final synthetic val$authorTitle:Ljava/lang/String;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$fastReply:Ljava/lang/String;

.field final synthetic val$floor:Ljava/lang/String;

.field final synthetic val$postTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iput-object p2, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$authorIconOnError:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$content:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$authorID:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$authorIcon:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$authorTitle:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$floor:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$postTime:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$fastReply:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$authorIconOnError:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    move-object v4, v0

    .line 374
    .local v4, _authorIconOnError:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    #getter for: Lcom/android/browser/controller/ForumDataDetectorShell;->mController:Lcom/android/browser/controller/ForumController;
    invoke-static {v0}, Lcom/android/browser/controller/ForumDataDetectorShell;->access$100(Lcom/android/browser/controller/ForumDataDetectorShell;)Lcom/android/browser/controller/ForumController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$content:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$authorID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$authorIcon:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$authorTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$floor:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$postTime:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$fastReply:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/android/browser/controller/ForumController;->addPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void

    .line 372
    .end local v4           #_authorIconOnError:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;->val$authorIconOnError:Ljava/lang/String;

    move-object v4, v0

    goto :goto_0
.end method
