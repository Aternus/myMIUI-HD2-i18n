.class Lcom/android/browser/ui/TitleView$1;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/TitleView;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/TitleView;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/TitleView;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/TitleView$1;->this$0:Lcom/android/browser/ui/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$1;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mMode:I
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$000(Lcom/android/browser/ui/TitleView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$1;->this$0:Lcom/android/browser/ui/TitleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$1;->this$0:Lcom/android/browser/ui/TitleView;

    #getter for: Lcom/android/browser/ui/TitleView;->mMode:I
    invoke-static {v0}, Lcom/android/browser/ui/TitleView;->access$000(Lcom/android/browser/ui/TitleView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/browser/ui/TitleView$1;->this$0:Lcom/android/browser/ui/TitleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    .line 158
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 150
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 145
    return-void
.end method
