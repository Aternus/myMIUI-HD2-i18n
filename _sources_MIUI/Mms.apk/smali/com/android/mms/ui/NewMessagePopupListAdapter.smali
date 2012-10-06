.class public Lcom/android/mms/ui/NewMessagePopupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewMessagePopupListAdapter.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMessageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mActivity:Landroid/app/Activity;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mMessageList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 49
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mMessageList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 68
    :goto_0
    return-object v1

    .line 52
    :cond_0
    move-object v9, p2

    .line 53
    .local v9, view:Landroid/view/View;
    if-nez v9, :cond_1

    .line 54
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03003d

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .end local v9           #view:Landroid/view/View;
    check-cast v9, Landroid/widget/LinearLayout;

    .line 57
    .restart local v9       #view:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;

    .line 58
    .local v6, entry:Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mActivity:Landroid/app/Activity;

    iget-wide v10, v6, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->time:J

    invoke-static {v4, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, time:Ljava/lang/CharSequence;
    new-instance v7, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 60
    .local v7, s:Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v3, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 65
    .local v0, span:Landroid/text/style/TextAppearanceSpan;
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v7, v0, v2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 66
    const v1, 0x7f0d00c1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v1, 0x7f0d00c2

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessagePopupListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne p1, v3, :cond_2

    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v9

    .line 68
    goto/16 :goto_0
.end method

.method public setMessageList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;>;"
    iput-object p1, p0, Lcom/android/mms/ui/NewMessagePopupListAdapter;->mMessageList:Ljava/util/ArrayList;

    .line 27
    return-void
.end method
