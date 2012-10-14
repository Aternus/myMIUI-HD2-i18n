.class public Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
.super Ljava/lang/Object;
.source "ArrayListSuggestionCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/ArrayListSuggestionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestionEntry"
.end annotation


# instance fields
.field private mIcon1:Ljava/lang/String;

.field private mIcon2:Ljava/lang/String;

.field private mIntentAction:Ljava/lang/String;

.field private mIntentData:Ljava/lang/String;

.field private mIntentExtra:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mText1:Ljava/lang/String;

.field private mText2:Ljava/lang/String;

.field private mText2Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mergeToList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, target:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    .local p1, from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    if-nez p0, :cond_0

    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "target"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    .line 51
    .local v0, entry:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v0           #entry:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 65
    if-nez p1, :cond_0

    move v2, v3

    .line 78
    :goto_0
    return v2

    .line 67
    :cond_0
    const-class v2, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    move-object v1, v0

    .line 71
    .local v1, otherEntry:Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    iget-object v2, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 72
    iget-object v2, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentData:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, v1, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 76
    iget-object v2, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mQuery:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v3

    .line 78
    goto :goto_0
.end method

.method public getIcon1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIcon1:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIcon2:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentData:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getText1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mText1:Ljava/lang/String;

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mText2:Ljava/lang/String;

    return-object v0
.end method

.method public getText2Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mText2Url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 88
    :goto_0
    return v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 88
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setIcon1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIcon1:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIcon2:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentData(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentData:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentExtra(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mIntentExtra:Ljava/lang/String;

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method public setText1(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mText1:Ljava/lang/String;

    return-object p0
.end method

.method public setText2(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mText2:Ljava/lang/String;

    return-object p0
.end method

.method public setText2Url(Ljava/lang/String;)Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->mText2Url:Ljava/lang/String;

    return-object p0
.end method
