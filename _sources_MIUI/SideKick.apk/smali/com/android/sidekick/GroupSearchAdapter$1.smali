.class Lcom/android/sidekick/GroupSearchAdapter$1;
.super Ljava/lang/Object;
.source "GroupSearchAdapter.java"

# interfaces
.implements Landroid/widget/Filter$Delayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sidekick/GroupSearchAdapter;-><init>(Landroid/content/Context;Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;Ljava/util/WeakHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousLength:I

.field final synthetic this$0:Lcom/android/sidekick/GroupSearchAdapter;


# direct methods
.method constructor <init>(Lcom/android/sidekick/GroupSearchAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/sidekick/GroupSearchAdapter$1;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sidekick/GroupSearchAdapter$1;->mPreviousLength:I

    return-void
.end method


# virtual methods
.method public getPostingDelay(Ljava/lang/CharSequence;)J
    .locals 6
    .parameter "constraint"

    .prologue
    const-wide/16 v4, 0x0

    .line 127
    if-nez p1, :cond_0

    move-wide v2, v4

    .line 131
    :goto_0
    return-wide v2

    .line 129
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/android/sidekick/GroupSearchAdapter$1;->mPreviousLength:I

    if-ge v2, v3, :cond_1

    const-wide/16 v2, 0x1f4

    move-wide v0, v2

    .line 130
    .local v0, delay:J
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Lcom/android/sidekick/GroupSearchAdapter$1;->mPreviousLength:I

    move-wide v2, v0

    .line 131
    goto :goto_0

    .end local v0           #delay:J
    :cond_1
    move-wide v0, v4

    .line 129
    goto :goto_1
.end method
