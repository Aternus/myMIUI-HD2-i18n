.class public abstract Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;
.super Ljava/lang/Object;
.source "DialerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/DialerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DialerListViewsBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/DialerListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/DialerListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;->this$0:Lcom/android/contacts/DialerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;->this$0:Lcom/android/contacts/DialerListAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, p2, v2}, Lcom/android/contacts/DialerListAdapter;->getItemType(Landroid/database/Cursor;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 144
    .local v0, isCallRecord:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;->setMode(Z)V

    .line 145
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;->drawCallRecord(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 150
    :goto_1
    return-void

    .line 143
    .end local v0           #isCallRecord:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 148
    .restart local v0       #isCallRecord:Z
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/DialerListAdapter$DialerListViewsBase;->drawContact(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method protected abstract drawCallRecord(Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method protected abstract drawContact(Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method protected setCallLogIcons(IILandroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "type"
    .parameter "firewallType"
    .parameter "bigIcon"
    .parameter "icon"

    .prologue
    const v2, 0xff00

    const/16 v1, 0x100

    const/16 v0, 0x8

    .line 81
    sparse-switch p1, :sswitch_data_0

    .line 133
    if-eqz p3, :cond_0

    .line 134
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :cond_0
    if-eqz p4, :cond_1

    .line 137
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 83
    :sswitch_0
    and-int v0, p2, v2

    if-ne v0, v1, :cond_3

    .line 84
    if-eqz p3, :cond_2

    .line 85
    const v0, 0x7f020056

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    :cond_2
    if-eqz p4, :cond_1

    .line 88
    const v0, 0x7f020055

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 91
    :cond_3
    if-eqz p3, :cond_4

    .line 92
    const v0, 0x7f020054

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    :cond_4
    if-eqz p4, :cond_1

    .line 95
    const v0, 0x7f020053

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 100
    :sswitch_1
    and-int v0, p2, v2

    if-ne v0, v1, :cond_6

    .line 101
    if-eqz p3, :cond_5

    .line 102
    const v0, 0x7f020052

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    :cond_5
    if-eqz p4, :cond_1

    .line 105
    const v0, 0x7f020051

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 108
    :cond_6
    if-eqz p3, :cond_7

    .line 109
    const v0, 0x7f020050

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :cond_7
    if-eqz p4, :cond_1

    .line 112
    const v0, 0x7f02004f

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 117
    :sswitch_2
    if-eqz p3, :cond_8

    .line 118
    const v0, 0x7f02005a

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    :cond_8
    if-eqz p4, :cond_1

    .line 121
    const v0, 0x7f020059

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 125
    :sswitch_3
    if-eqz p3, :cond_9

    .line 126
    const v0, 0x7f020058

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    :cond_9
    if-eqz p4, :cond_1

    .line 129
    const v0, 0x7f020057

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method protected abstract setMode(Z)V
.end method
