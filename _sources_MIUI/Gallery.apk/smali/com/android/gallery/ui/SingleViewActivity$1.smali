.class Lcom/android/gallery/ui/SingleViewActivity$1;
.super Ljava/lang/Object;
.source "SingleViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 457
    iput-object p1, p0, Lcom/android/gallery/ui/SingleViewActivity$1;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 460
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p2, :cond_0

    .line 470
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$1;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;
    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/ui/ISingleViewInteraction;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery/ui/ISingleViewInteraction;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 463
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$1;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #calls: Lcom/android/gallery/ui/SingleViewActivity;->refreshIndexIndicator()V
    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$100(Lcom/android/gallery/ui/SingleViewActivity;)V

    .line 464
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity$1;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mMode:I
    invoke-static {v1}, Lcom/android/gallery/ui/SingleViewActivity;->access$200(Lcom/android/gallery/ui/SingleViewActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$1;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$308(Lcom/android/gallery/ui/SingleViewActivity;)I

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$1;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$408(Lcom/android/gallery/ui/SingleViewActivity;)I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$1;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mInteractionHub:Lcom/android/gallery/ui/ISingleViewInteraction;
    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/ui/ISingleViewInteraction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery/ui/ISingleViewInteraction;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 475
    return-void
.end method
