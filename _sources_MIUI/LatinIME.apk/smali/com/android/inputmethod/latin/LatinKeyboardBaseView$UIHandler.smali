.class Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;
.super Landroid/os/Handler;
.source "LatinKeyboardBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinKeyboardBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# static fields
.field private static final MSG_DISMISS_PREVIEW:I = 0x2

.field private static final MSG_LONGPRESS_KEY:I = 0x4

.field private static final MSG_POPUP_PREVIEW:I = 0x1

.field private static final MSG_REPEAT_KEY:I = 0x3


# instance fields
.field private mInKeyRepeat:Z

.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 344
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 345
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelDismissPreview()V

    .line 346
    return-void
.end method

.method public cancelDismissPreview()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 312
    return-void
.end method

.method public cancelKeyRepeatTimer()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->mInKeyRepeat:Z

    .line 321
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 322
    return-void
.end method

.method public cancelKeyTimers()V
    .locals 0

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyRepeatTimer()V

    .line 339
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelLongPressTimer()V

    .line 340
    return-void
.end method

.method public cancelLongPressTimer()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 335
    return-void
.end method

.method public cancelPopupPreview()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 302
    return-void
.end method

.method public dismissPreview(J)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$100(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 308
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 268
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 287
    .end local p0
    :goto_0
    return-void

    .line 270
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/inputmethod/latin/PointerTracker;

    #calls: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->showKey(ILcom/android/inputmethod/latin/PointerTracker;)V
    invoke-static {v1, v2, p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$000(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;ILcom/android/inputmethod/latin/PointerTracker;)V

    goto :goto_0

    .line 273
    .restart local p0
    :pswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$100(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/inputmethod/latin/PointerTracker;

    .line 277
    .local v0, tracker:Lcom/android/inputmethod/latin/PointerTracker;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/PointerTracker;->repeatKey(I)V

    .line 278
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyRepeatInterval:I
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$200(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)I

    move-result v1

    int-to-long v1, v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->startKeyRepeatTimer(JILcom/android/inputmethod/latin/PointerTracker;)V

    goto :goto_0

    .line 282
    .end local v0           #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/inputmethod/latin/PointerTracker;

    .line 283
    .restart local v0       #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->openPopupIfRequired(ILcom/android/inputmethod/latin/PointerTracker;)Z
    invoke-static {v1, v2, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$300(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;ILcom/android/inputmethod/latin/PointerTracker;)Z

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isInKeyRepeat()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->mInKeyRepeat:Z

    return v0
.end method

.method public popupPreview(JILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 2
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v1, 0x1

    .line 290
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$100(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$400(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #calls: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->showKey(ILcom/android/inputmethod/latin/PointerTracker;)V
    invoke-static {v0, p3, p4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$000(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;ILcom/android/inputmethod/latin/PointerTracker;)V

    .line 298
    :goto_0
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public startKeyRepeatTimer(JILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 2
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->mInKeyRepeat:Z

    .line 316
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 317
    return-void
.end method

.method public startLongPressTimer(JILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 2
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v1, 0x4

    .line 329
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 331
    return-void
.end method
