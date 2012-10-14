.class Lcom/android/browser/controller/NavigationHomeController$1;
.super Ljava/lang/Object;
.source "NavigationHomeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/NavigationHomeController;->addNewThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/NavigationHomeController;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/NavigationHomeController;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/browser/controller/NavigationHomeController$1;->this$0:Lcom/android/browser/controller/NavigationHomeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController$1;->this$0:Lcom/android/browser/controller/NavigationHomeController;

    #getter for: Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/controller/NavigationHomeController;->access$200(Lcom/android/browser/controller/NavigationHomeController;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    const v1, 0x7f0900bd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController$1;->this$0:Lcom/android/browser/controller/NavigationHomeController;

    #getter for: Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v0}, Lcom/android/browser/controller/NavigationHomeController;->access$200(Lcom/android/browser/controller/NavigationHomeController;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchTitleViewMode(I)V

    .line 153
    return-void
.end method
