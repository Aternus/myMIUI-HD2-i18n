.class Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;
.super Ljava/lang/Object;
.source "LatinKeyboardBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinKeyboardBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PointerQueue"
.end annotation


# instance fields
.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/inputmethod/latin/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/inputmethod/latin/PointerTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method public isInSlidingKeyInput()Z
    .locals 3

    .prologue
    .line 397
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/PointerTracker;

    .line 398
    .local v1, tracker:Lcom/android/inputmethod/latin/PointerTracker;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/PointerTracker;->isInSlidingKeyInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    const/4 v2, 0x1

    .line 401
    .end local v1           #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(Lcom/android/inputmethod/latin/PointerTracker;)I
    .locals 5
    .parameter "tracker"

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    .line 358
    .local v1, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/latin/PointerTracker;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, index:I
    :goto_0
    if-ltz v0, :cond_1

    .line 359
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/PointerTracker;

    .line 360
    .local v2, t:Lcom/android/inputmethod/latin/PointerTracker;
    if-ne v2, p1, :cond_0

    move v3, v0

    .line 363
    .end local v2           #t:Lcom/android/inputmethod/latin/PointerTracker;
    :goto_1
    return v3

    .line 358
    .restart local v2       #t:Lcom/android/inputmethod/latin/PointerTracker;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 363
    .end local v2           #t:Lcom/android/inputmethod/latin/PointerTracker;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public releaseAllPointersExcept(Lcom/android/inputmethod/latin/PointerTracker;J)V
    .locals 4
    .parameter "tracker"
    .parameter "eventTime"

    .prologue
    .line 381
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/PointerTracker;

    .line 382
    .local v1, t:Lcom/android/inputmethod/latin/PointerTracker;
    if-eq v1, p1, :cond_0

    .line 384
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/PointerTracker;->getLastY()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/android/inputmethod/latin/PointerTracker;->onUpEvent(IIJ)V

    .line 385
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/PointerTracker;->setAlreadyProcessed()V

    goto :goto_0

    .line 387
    .end local v1           #t:Lcom/android/inputmethod/latin/PointerTracker;
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 388
    if-eqz p1, :cond_2

    .line 389
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_2
    return-void
.end method

.method public releaseAllPointersOlderThan(Lcom/android/inputmethod/latin/PointerTracker;J)V
    .locals 5
    .parameter "tracker"
    .parameter "eventTime"

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    .line 368
    .local v1, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/inputmethod/latin/PointerTracker;>;"
    const/4 v0, 0x0

    .line 369
    .local v0, oldestPos:I
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/PointerTracker;

    .local v2, t:Lcom/android/inputmethod/latin/PointerTracker;
    :goto_0
    if-eq v2, p1, :cond_1

    .line 370
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/PointerTracker;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    add-int/lit8 v0, v0, 0x1

    .line 369
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #t:Lcom/android/inputmethod/latin/PointerTracker;
    check-cast v2, Lcom/android/inputmethod/latin/PointerTracker;

    .restart local v2       #t:Lcom/android/inputmethod/latin/PointerTracker;
    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/PointerTracker;->getLastX()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/PointerTracker;->getLastY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/android/inputmethod/latin/PointerTracker;->onUpEvent(IIJ)V

    .line 374
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/PointerTracker;->setAlreadyProcessed()V

    .line 375
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 378
    :cond_1
    return-void
.end method

.method public remove(Lcom/android/inputmethod/latin/PointerTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method
