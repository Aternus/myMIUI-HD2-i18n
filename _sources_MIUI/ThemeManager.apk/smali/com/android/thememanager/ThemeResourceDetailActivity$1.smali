.class Lcom/android/thememanager/ThemeResourceDetailActivity$1;
.super Ljava/lang/Object;
.source "ThemeResourceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeResourceDetailActivity;->updateComponentTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeResourceDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$1;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 198
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
