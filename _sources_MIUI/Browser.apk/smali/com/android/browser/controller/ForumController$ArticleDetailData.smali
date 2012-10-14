.class Lcom/android/browser/controller/ForumController$ArticleDetailData;
.super Ljava/lang/Object;
.source "ForumController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ForumController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArticleDetailData"
.end annotation


# instance fields
.field paging:Ljava/lang/String;

.field posts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/controller/ForumController$PostData;",
            ">;"
        }
    .end annotation
.end field

.field replyBtn:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/browser/controller/ForumController;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/ForumController;)V
    .locals 0
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/android/browser/controller/ForumController$ArticleDetailData;->this$0:Lcom/android/browser/controller/ForumController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ForumController$ArticleDetailData;-><init>(Lcom/android/browser/controller/ForumController;)V

    return-void
.end method
