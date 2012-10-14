.class public abstract Lcom/android/contacts/ContactEntryAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactEntryAdapter$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/contacts/ContactEntryAdapter$Entry;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field protected mSeparators:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    .local p2, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TE;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/ContactEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    iput-object p2, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 82
    iput-boolean p3, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    .line 83
    return-void
.end method

.method public static countEntries(Ljava/util/ArrayList;Z)I
    .locals 6
    .parameter
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/contacts/ContactEntryAdapter$Entry;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;Z)I"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    const/4 v0, 0x0

    .line 206
    .local v0, count:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 207
    .local v2, numSections:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 208
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 209
    .local v3, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 210
    .local v4, sectionSize:I
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 207
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 216
    .end local v3           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v4           #sectionSize:I
    :cond_1
    return v0
.end method

.method public static final getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;
    .locals 5
    .parameter
    .parameter "position"
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/contacts/ContactEntryAdapter$Entry;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;IZ)TT;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 182
    .local v1, numSections:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 183
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 184
    .local v2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 185
    .local v3, sectionSize:I
    if-eqz p2, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 182
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 190
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    check-cast p0, Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-object v4, p0

    .line 194
    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v3           #sectionSize:I
    :goto_2
    return-object v4

    .line 192
    .restart local v2       #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .restart local v3       #sectionSize:I
    .restart local p0       #sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr p1, v4

    goto :goto_1

    .line 194
    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    .end local v3           #sectionSize:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 136
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    iget-boolean v0, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract bindView(Landroid/view/View;Lcom/android/contacts/ContactEntryAdapter$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TE;)V"
        }
    .end annotation
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 128
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    invoke-static {v0, v1}, Lcom/android/contacts/ContactEntryAdapter;->countEntries(Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 169
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    iget-object v0, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    invoke-static {v0, p1, v1}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 223
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    iget-object v1, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    invoke-static {v1, p1, v2}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v0

    .line 224
    .local v0, entry:Lcom/android/contacts/ContactEntryAdapter$Entry;
    if-eqz v0, :cond_0

    .line 225
    iget-wide v1, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->id:J

    .line 227
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 236
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    if-nez p2, :cond_0

    .line 237
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/ContactEntryAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    invoke-static {v1, p1, v2}, Lcom/android/contacts/ContactEntryAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ContactEntryAdapter;->bindView(Landroid/view/View;Lcom/android/contacts/ContactEntryAdapter$Entry;)V

    .line 242
    return-object v0

    .line 239
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 6
    .parameter "position"

    .prologue
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    const/4 v5, 0x1

    .line 144
    iget-boolean v4, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 162
    :goto_0
    return v4

    .line 148
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 149
    .local v1, numSections:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 150
    iget-object v4, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 151
    .local v2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 152
    .local v3, sectionSize:I
    if-ne v3, v5, :cond_1

    .line 149
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_1
    if-nez p1, :cond_2

    .line 158
    const/4 v4, 0x0

    goto :goto_0

    .line 160
    :cond_2
    sub-int/2addr p1, v3

    goto :goto_2

    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .end local v3           #sectionSize:I
    :cond_3
    move v4, v5

    .line 162
    goto :goto_0
.end method

.method protected abstract newView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final setSections(Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter "separators"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lcom/android/contacts/ContactEntryAdapter;,"Lcom/android/contacts/ContactEntryAdapter<TE;>;"
    .local p1, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TE;>;>;"
    iput-object p1, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    .line 92
    iput-boolean p2, p0, Lcom/android/contacts/ContactEntryAdapter;->mSeparators:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method
