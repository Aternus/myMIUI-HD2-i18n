.class Lcom/android/sidekick/GroupCorpus$3;
.super Ljava/lang/Object;
.source "GroupCorpus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sidekick/GroupCorpus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/app/SearchableInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sidekick/GroupCorpus;


# direct methods
.method constructor <init>(Lcom/android/sidekick/GroupCorpus;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/sidekick/GroupCorpus$3;->this$0:Lcom/android/sidekick/GroupCorpus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/SearchableInfo;Landroid/app/SearchableInfo;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sidekick/GroupCorpus;->indexOfDefaultEnabledComponent(Landroid/content/ComponentName;)I

    move-result v0

    .line 348
    .local v0, idx1:I
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sidekick/GroupCorpus;->indexOfDefaultEnabledComponent(Landroid/content/ComponentName;)I

    move-result v1

    .line 349
    .local v1, idx2:I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 343
    check-cast p1, Landroid/app/SearchableInfo;

    .end local p1
    check-cast p2, Landroid/app/SearchableInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/sidekick/GroupCorpus$3;->compare(Landroid/app/SearchableInfo;Landroid/app/SearchableInfo;)I

    move-result v0

    return v0
.end method
