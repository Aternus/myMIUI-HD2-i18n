.class Lcom/android/browser/controller/TabController$2;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/TabController;->addTab(ZLcom/android/browser/controller/Tab;ZZ)Lcom/android/browser/controller/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/TabController;

.field final synthetic val$fakeScrollView:Landroid/widget/HorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/TabController;Landroid/widget/HorizontalScrollView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/browser/controller/TabController$2;->this$0:Lcom/android/browser/controller/TabController;

    iput-object p2, p0, Lcom/android/browser/controller/TabController$2;->val$fakeScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/browser/controller/TabController$2;->val$fakeScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 211
    return-void
.end method
