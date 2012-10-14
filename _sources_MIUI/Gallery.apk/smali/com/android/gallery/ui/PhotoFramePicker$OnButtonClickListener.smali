.class Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;
.super Ljava/lang/Object;
.source "PhotoFramePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/PhotoFramePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/PhotoFramePicker;


# direct methods
.method private constructor <init>(Lcom/android/gallery/ui/PhotoFramePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/gallery/ui/PhotoFramePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery/ui/PhotoFramePicker;Lcom/android/gallery/ui/PhotoFramePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;-><init>(Lcom/android/gallery/ui/PhotoFramePicker;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    :pswitch_0
    return-void

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/gallery/ui/PhotoFramePicker;

    invoke-virtual {v0}, Lcom/android/gallery/ui/PhotoFramePicker;->selectPhoto()V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/gallery/ui/PhotoFramePicker;

    invoke-virtual {v0}, Lcom/android/gallery/ui/PhotoFramePicker;->selectFrame()V

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/gallery/ui/PhotoFramePicker;

    invoke-virtual {v0}, Lcom/android/gallery/ui/PhotoFramePicker;->commit()V

    goto :goto_0

    .line 264
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/gallery/ui/PhotoFramePicker;

    iget-object v0, v0, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    iget-object v1, p0, Lcom/android/gallery/ui/PhotoFramePicker$OnButtonClickListener;->this$0:Lcom/android/gallery/ui/PhotoFramePicker;

    iget-object v1, v1, Lcom/android/gallery/ui/PhotoFramePicker;->mImageView:Lcom/android/gallery/view/PhotoFrameView;

    invoke-virtual {v1}, Lcom/android/gallery/view/PhotoFrameView;->getRotateDegrees()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/view/PhotoFrameView;->setRotateDegrees(IZ)V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c004e
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
