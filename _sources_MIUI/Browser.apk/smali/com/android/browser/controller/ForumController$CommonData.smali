.class Lcom/android/browser/controller/ForumController$CommonData;
.super Ljava/lang/Object;
.source "ForumController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ForumController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonData"
.end annotation


# instance fields
.field navBar:Ljava/lang/String;

.field searchBtn:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/browser/controller/ForumController;

.field userMenu:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/ForumController;)V
    .locals 0
    .parameter

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/browser/controller/ForumController$CommonData;->this$0:Lcom/android/browser/controller/ForumController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 962
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ForumController$CommonData;-><init>(Lcom/android/browser/controller/ForumController;)V

    return-void
.end method
