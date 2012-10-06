.class final Lcom/google/android/common/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/common/c;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/common/c;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lw;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/common/c;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->e(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/common/c;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->e(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/common/c;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->g(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/common/i;->a(Lcom/google/android/common/h;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lcom/google/android/common/h;->c()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/common/c;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->b(Lcom/google/android/common/SwipeySwitcher;)Lw;

    move-result-object v1

    invoke-interface {v1}, Lw;->a()Lcom/google/android/common/h;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/common/c;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/common/c;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2}, Lcom/google/android/common/SwipeySwitcher;->e(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/common/h;->b()V

    iget-object v2, p0, Lcom/google/android/common/c;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v2, v0}, Lcom/google/android/common/SwipeySwitcher;->removeViewAt(I)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/common/c;->a:Lcom/google/android/common/SwipeySwitcher;

    invoke-static {v2, v1, v0}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/h;I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
