.class Lcom/android/mms/ui/SlideEditorActivity$8;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$8;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v0, data:Landroid/content/Intent;
    const-string v1, "done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$8;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 298
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$8;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideEditorActivity;->finish()V

    .line 299
    return-void
.end method
