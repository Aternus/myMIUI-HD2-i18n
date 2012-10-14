.class Lcom/android/gallery/ui/SingleViewActivity$2;
.super Ljava/lang/Object;
.source "SingleViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/SingleViewActivity;->setupFullImageGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/SingleViewActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/SingleViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/gallery/ui/SingleViewActivity$2;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$2;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-virtual {v0}, Lcom/android/gallery/ui/SingleViewActivity;->switchMode()V

    .line 482
    return-void
.end method
