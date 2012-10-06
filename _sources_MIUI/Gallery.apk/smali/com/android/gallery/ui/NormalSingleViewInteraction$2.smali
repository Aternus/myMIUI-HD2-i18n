.class Lcom/android/gallery/ui/NormalSingleViewInteraction$2;
.super Ljava/lang/Object;
.source "NormalSingleViewInteraction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/NormalSingleViewInteraction;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/NormalSingleViewInteraction;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$2;->this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$2;->this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;

    #getter for: Lcom/android/gallery/ui/NormalSingleViewInteraction;->mSavedPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery/ui/NormalSingleViewInteraction;->access$100(Lcom/android/gallery/ui/NormalSingleViewInteraction;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$2;->this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;

    #getter for: Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;
    invoke-static {v0}, Lcom/android/gallery/ui/NormalSingleViewInteraction;->access$200(Lcom/android/gallery/ui/NormalSingleViewInteraction;)Lcom/android/gallery/ui/SingleViewActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$2;->this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;

    #getter for: Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;
    invoke-static {v1}, Lcom/android/gallery/ui/NormalSingleViewInteraction;->access$200(Lcom/android/gallery/ui/NormalSingleViewInteraction;)Lcom/android/gallery/ui/SingleViewActivity;

    move-result-object v1

    const v2, 0x7f090049

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$2;->this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;

    #getter for: Lcom/android/gallery/ui/NormalSingleViewInteraction;->mSavedPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/gallery/ui/NormalSingleViewInteraction;->access$100(Lcom/android/gallery/ui/NormalSingleViewInteraction;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery/ui/SingleViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$2;->this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;

    #getter for: Lcom/android/gallery/ui/NormalSingleViewInteraction;->mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;
    invoke-static {v0}, Lcom/android/gallery/ui/NormalSingleViewInteraction;->access$200(Lcom/android/gallery/ui/NormalSingleViewInteraction;)Lcom/android/gallery/ui/SingleViewActivity;

    move-result-object v0

    const v1, 0x7f090048

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
