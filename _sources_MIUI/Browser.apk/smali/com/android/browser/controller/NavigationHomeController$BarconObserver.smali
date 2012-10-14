.class Lcom/android/browser/controller/NavigationHomeController$BarconObserver;
.super Landroid/database/DataSetObserver;
.source "NavigationHomeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/NavigationHomeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarconObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/NavigationHomeController;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/NavigationHomeController;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/browser/controller/NavigationHomeController$BarconObserver;->this$0:Lcom/android/browser/controller/NavigationHomeController;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/NavigationHomeController;Lcom/android/browser/controller/NavigationHomeController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/android/browser/controller/NavigationHomeController$BarconObserver;-><init>(Lcom/android/browser/controller/NavigationHomeController;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 290
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController$BarconObserver;->this$0:Lcom/android/browser/controller/NavigationHomeController;

    #calls: Lcom/android/browser/controller/NavigationHomeController;->handleBarconChanged()V
    invoke-static {v0}, Lcom/android/browser/controller/NavigationHomeController;->access$600(Lcom/android/browser/controller/NavigationHomeController;)V

    .line 291
    return-void
.end method
