.class Lcom/android/browser/controller/ForumController$ArticleListData;
.super Ljava/lang/Object;
.source "ForumController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ForumController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArticleListData"
.end annotation


# instance fields
.field newThread:Ljava/lang/String;

.field normalArticleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/controller/ForumController$ArticleData;",
            ">;"
        }
    .end annotation
.end field

.field paging:Ljava/lang/String;

.field stickArticleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/controller/ForumController$ArticleData;",
            ">;"
        }
    .end annotation
.end field

.field subforumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/controller/ForumController$ForumData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/controller/ForumController;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/ForumController;)V
    .locals 0
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/browser/controller/ForumController$ArticleListData;->this$0:Lcom/android/browser/controller/ForumController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 928
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ForumController$ArticleListData;-><init>(Lcom/android/browser/controller/ForumController;)V

    return-void
.end method
