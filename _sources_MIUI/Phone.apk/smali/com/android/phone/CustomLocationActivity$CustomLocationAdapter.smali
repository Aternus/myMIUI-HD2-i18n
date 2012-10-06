.class public Lcom/android/phone/CustomLocationActivity$CustomLocationAdapter;
.super Landroid/widget/CursorAdapter;
.source "CustomLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CustomLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomLocationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CustomLocationActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/CustomLocationActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/phone/CustomLocationActivity$CustomLocationAdapter;->this$0:Lcom/android/phone/CustomLocationActivity;

    .line 133
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 134
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CustomLocationActivity$ItemView;

    .line 146
    .local v0, item:Lcom/android/phone/CustomLocationActivity$ItemView;
    iget-object v2, v0, Lcom/android/phone/CustomLocationActivity$ItemView;->location:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, v0, Lcom/android/phone/CustomLocationActivity$ItemView;->number:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/4 v2, 0x3

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 149
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v2, v0, Lcom/android/phone/CustomLocationActivity$ItemView;->type:Landroid/widget/TextView;

    const v3, 0x7f0c0277

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v2, v0, Lcom/android/phone/CustomLocationActivity$ItemView;->type:Landroid/widget/TextView;

    const v3, 0x7f0c0278

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v2, v0, Lcom/android/phone/CustomLocationActivity$ItemView;->type:Landroid/widget/TextView;

    const v3, 0x7f0c0279

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/phone/CustomLocationActivity$CustomLocationAdapter;->this$0:Lcom/android/phone/CustomLocationActivity;

    #getter for: Lcom/android/phone/CustomLocationActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/phone/CustomLocationActivity;->access$100(Lcom/android/phone/CustomLocationActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/phone/CustomLocationActivity$ItemView;

    invoke-direct {v1, v0}, Lcom/android/phone/CustomLocationActivity$ItemView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    return-object v0
.end method
