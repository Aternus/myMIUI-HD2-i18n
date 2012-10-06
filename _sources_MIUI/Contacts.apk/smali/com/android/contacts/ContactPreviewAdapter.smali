.class public Lcom/android/contacts/ContactPreviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;,
        Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mEntryViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, entryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/contacts/ContactPreviewAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/contacts/ContactPreviewAdapter;->mEntryViewList:Ljava/util/ArrayList;

    .line 44
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "checked"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, entryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/contacts/ContactPreviewAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/contacts/ContactPreviewAdapter;->mEntryViewList:Ljava/util/ArrayList;

    .line 50
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/ContactPreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    iput-boolean p3, p0, Lcom/android/contacts/ContactPreviewAdapter;->mChecked:Z

    .line 52
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewAdapter;->mEntryViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/ContactPreviewAdapter;->mEntryViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, vh:Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;
    if-nez p2, :cond_4

    .line 74
    iget-object v2, p0, Lcom/android/contacts/ContactPreviewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;

    .end local v1           #vh:Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;-><init>(Lcom/android/contacts/ContactPreviewAdapter;)V

    .line 76
    .restart local v1       #vh:Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    const v2, 0x7f070032

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 79
    const v2, 0x7f070033

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->mData:Landroid/widget/TextView;

    .line 80
    const v2, 0x7f070039

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f070047

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    .line 83
    iget-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/contacts/ContactPreviewAdapter;->mChecked:Z

    if-eqz v3, :cond_3

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 88
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactPreviewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;

    .line 89
    .local v0, entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    iget v2, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    if-lez v2, :cond_0

    .line 90
    iget-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget v3, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    :cond_0
    iget-object v2, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    iget-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->mData:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_1
    iget-object v2, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mExtra:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 98
    iget-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mExtra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :goto_2
    iget-boolean v2, p0, Lcom/android/contacts/ContactPreviewAdapter;->mChecked:Z

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-boolean v3, v0, Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;->mChecked:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/ContactPreviewAdapter;->mEntryViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 109
    const v2, 0x1080533

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    :goto_3
    return-object p2

    .end local v0           #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    :cond_3
    move v3, v7

    .line 83
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #vh:Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;
    check-cast v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;

    .restart local v1       #vh:Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;
    goto :goto_1

    .line 101
    .restart local v0       #entryView:Lcom/android/contacts/ContactPreviewAdapter$ContactEntryPreviewView;
    :cond_5
    iget-object v2, v1, Lcom/android/contacts/ContactPreviewAdapter$ViewHolder;->mExtra:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 112
    :cond_6
    if-nez p1, :cond_7

    .line 113
    const v2, 0x1080535

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 115
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/ContactPreviewAdapter;->mEntryViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    if-ne p1, v2, :cond_8

    .line 116
    const v2, 0x1080532

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 119
    :cond_8
    const v2, 0x1080531

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3
.end method
