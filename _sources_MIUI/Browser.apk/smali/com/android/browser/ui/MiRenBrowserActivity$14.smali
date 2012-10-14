.class Lcom/android/browser/ui/MiRenBrowserActivity$14;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->registerNavButtonEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$14;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1348
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$14;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    const-class v3, Lcom/android/browser/ui/BookmarkCenter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1349
    .local v0, intent_fav:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$14;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 1350
    return-void
.end method
