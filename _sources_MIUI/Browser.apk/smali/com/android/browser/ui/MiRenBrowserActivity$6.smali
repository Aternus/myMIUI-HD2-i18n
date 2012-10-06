.class Lcom/android/browser/ui/MiRenBrowserActivity$6;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->initWebViewLayout()V
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
    .line 737
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$6;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$6;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTab(Z)Lcom/android/browser/controller/Tab;

    .line 741
    return-void
.end method
