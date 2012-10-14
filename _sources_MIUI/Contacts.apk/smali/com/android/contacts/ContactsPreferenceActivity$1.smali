.class Lcom/android/contacts/ContactsPreferenceActivity$1;
.super Landroid/widget/ArrayAdapter;
.source "ContactsPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsPreferenceActivity;->displayImportExportDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsPreferenceActivity;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsPreferenceActivity;Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/contacts/ContactsPreferenceActivity$1;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    iput-object p4, p0, Lcom/android/contacts/ContactsPreferenceActivity$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 174
    if-nez p2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/contacts/ContactsPreferenceActivity$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 179
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactsPreferenceActivity$1;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 180
    .local v1, resId:I
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    iget-object v3, p0, Lcom/android/contacts/ContactsPreferenceActivity$1;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    const v4, 0x10300b2

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 183
    return-object p2
.end method
