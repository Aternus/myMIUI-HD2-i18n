.class Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ContactPickerRecentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPickerRecentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactPickerRecentActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactPickerRecentActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/contacts/ContactPickerRecentActivity$ListAdapter;->this$0:Lcom/android/contacts/ContactPickerRecentActivity;

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 86
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "itemView"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 96
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/ContactListItemView;

    move-object v4, v0

    .line 98
    .local v4, view:Lcom/android/contacts/ContactListItemView;
    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, name:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/contacts/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 103
    .local v2, nameView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_0
    invoke-virtual {v4}, Lcom/android/contacts/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v5

    .line 111
    .local v5, viewToUse:Landroid/widget/ImageView;
    const v6, 0x1080181

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    return-void

    .line 106
    .end local v5           #viewToUse:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v4, v3}, Lcom/android/contacts/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 90
    new-instance v0, Lcom/android/contacts/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    .local v0, view:Lcom/android/contacts/ContactListItemView;
    return-object v0
.end method
