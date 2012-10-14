.class public final Lcom/google/android/common/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/common/h;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Intent;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/common/g;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/common/g;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/common/g;->d:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/google/android/common/g;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/google/android/common/g;->b:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/common/g;->a:Landroid/view/View;

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/common/g;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/common/g;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/common/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final c()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/common/g;->b:Landroid/content/Intent;

    return-object v0
.end method
