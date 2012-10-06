.class final Lcom/android/contacts/ViewContactActivity$ViewAdapter;
.super Lcom/android/contacts/ContactEntryAdapter;
.source "ViewContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/ContactEntryAdapter",
        "<",
        "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ViewContactActivity$ViewEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2490
    .local p3, sections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/contacts/ViewContactActivity$ViewEntry;>;>;"
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactActivity;

    .line 2491
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/contacts/ContactEntryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 2492
    return-void
.end method

.method private getResourceIdForType(II)I
    .locals 2
    .parameter "callType"
    .parameter "firewallType"

    .prologue
    const v0, 0xff00

    const/16 v1, 0x100

    .line 2548
    sparse-switch p1, :sswitch_data_0

    .line 2566
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2550
    :sswitch_0
    and-int/2addr v0, p2

    if-ne v0, v1, :cond_0

    .line 2551
    const v0, 0x7f020051

    goto :goto_0

    .line 2553
    :cond_0
    const v0, 0x7f02004f

    goto :goto_0

    .line 2556
    :sswitch_1
    const v0, 0x7f020059

    goto :goto_0

    .line 2558
    :sswitch_2
    and-int/2addr v0, p2

    if-ne v0, v1, :cond_1

    .line 2559
    const v0, 0x7f020055

    goto :goto_0

    .line 2561
    :cond_1
    const v0, 0x7f020053

    goto :goto_0

    .line 2564
    :sswitch_3
    const v0, 0x7f020057

    goto :goto_0

    .line 2548
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "textView"
    .parameter "maxLines"

    .prologue
    const/4 v0, 0x1

    .line 2793
    if-ne p2, v0, :cond_0

    .line 2794
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2801
    :goto_0
    return-void

    .line 2797
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2798
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic bindView(Landroid/view/View;Lcom/android/contacts/ContactEntryAdapter$Entry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2487
    check-cast p2, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->bindView(Landroid/view/View;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V

    return-void
.end method

.method protected bindView(Landroid/view/View;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V
    .locals 22
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 2573
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->backgroundRes:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 2574
    const v3, 0x1080531

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2584
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 2585
    .local v18, resources:Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/ViewContactActivity$ViewCache;

    .line 2586
    .local v21, views:Lcom/android/contacts/ViewContactActivity$ViewCache;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->data:Landroid/widget/TextView;

    move-object v12, v0

    .line 2589
    .local v12, data:Landroid/widget/TextView;
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2592
    :cond_0
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 2593
    .local v14, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x30

    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2594
    const/16 v3, 0xa

    iput v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2595
    const/16 v3, 0xa

    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2596
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2597
    const/4 v3, -0x2

    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2598
    const/4 v3, -0x2

    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2599
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->data:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2600
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->data:Landroid/widget/TextView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2611
    :goto_1
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2612
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2613
    .local v15, phoneNumber:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_8

    .line 2614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f0e0013

    invoke-virtual {v12, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2625
    .end local v15           #phoneNumber:Ljava/lang/String;
    :goto_2
    const-string v3, "vnd.android.cursor.dir/calls"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2626
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/ViewContactActivity$ViewCache;->switchToCallLog(Lcom/android/contacts/ViewContactActivity$ViewCache;)V

    .line 2627
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->callDate:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2628
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2629
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration2:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->label:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2630
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->footer:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogNumber:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogNumber:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2634
    .local v13, location:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2635
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->extra:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2638
    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogShowButton:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactActivity;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactActivity;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/contacts/ViewContactActivity;->mSipAddressEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    if-le v3, v4, :cond_a

    .line 2640
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->footer:Landroid/widget/TextView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2641
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration:Landroid/widget/TextView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2642
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration2:Landroid/widget/TextView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2643
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->extra:Landroid/widget/TextView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2651
    :goto_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogShowButton:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 2652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactActivity;

    move-object v3, v0

    #getter for: Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I
    invoke-static {v3}, Lcom/android/contacts/ViewContactActivity;->access$1400(Lcom/android/contacts/ViewContactActivity;)I

    move-result v3

    if-nez v3, :cond_b

    .line 2653
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v3, v0

    const v4, 0x10800a2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2790
    .end local v13           #location:Ljava/lang/String;
    :cond_2
    :goto_4
    return-void

    .line 2575
    .end local v12           #data:Landroid/widget/TextView;
    .end local v14           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v18           #resources:Landroid/content/res/Resources;
    .end local v21           #views:Lcom/android/contacts/ViewContactActivity$ViewCache;
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->backgroundRes:I

    move v3, v0

    if-nez v3, :cond_4

    .line 2576
    const v3, 0x1080533

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2577
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->backgroundRes:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 2578
    const v3, 0x1080535

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2579
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->backgroundRes:I

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 2580
    const v3, 0x1080532

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2582
    :cond_6
    const v3, 0x1080531

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2602
    .restart local v12       #data:Landroid/widget/TextView;
    .restart local v18       #resources:Landroid/content/res/Resources;
    .restart local v21       #views:Lcom/android/contacts/ViewContactActivity$ViewCache;
    :cond_7
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 2603
    .restart local v14       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2604
    const/4 v3, 0x0

    iput v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2605
    const/4 v3, 0x0

    iput v3, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2606
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v3, v0

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2607
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->data:Landroid/widget/TextView;

    move-object v3, v0

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_1

    .line 2617
    .restart local v15       #phoneNumber:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x10300b2

    invoke-virtual {v12, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 2621
    .end local v15           #phoneNumber:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x10300b2

    invoke-virtual {v12, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 2645
    .restart local v13       #location:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->footer:Landroid/widget/TextView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2646
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration:Landroid/widget/TextView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2647
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration2:Landroid/widget/TextView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2648
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->extra:Landroid/widget/TextView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2654
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactActivity;

    move-object v3, v0

    #getter for: Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I
    invoke-static {v3}, Lcom/android/contacts/ViewContactActivity;->access$1400(Lcom/android/contacts/ViewContactActivity;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactActivity;

    move-object v3, v0

    #getter for: Lcom/android/contacts/ViewContactActivity;->mCallLogShowStatus:I
    invoke-static {v3}, Lcom/android/contacts/ViewContactActivity;->access$1400(Lcom/android/contacts/ViewContactActivity;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2656
    :cond_c
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v3, v0

    const v4, 0x10800b3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2657
    const v3, 0x108037f

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 2659
    :cond_d
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogShowButton:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 2660
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v3, v0

    const v4, 0x10800a2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2661
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v3, v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2664
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactActivity;

    move-object v3, v0

    #getter for: Lcom/android/contacts/ViewContactActivity;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/contacts/ViewContactActivity;->access$1500(Lcom/android/contacts/ViewContactActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "note_id"

    aput-object v7, v5, v6

    const-string v6, "data1=? AND PHONE_NUMBERS_EQUAL(data3,?)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogDate:J

    move-wide v9, v0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->callLogNumber:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2668
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_10

    .line 2670
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2671
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/android/contacts/ViewContactActivity$ViewEntry;->noteId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2674
    :cond_f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2678
    :cond_10
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->noteId:J

    move-wide v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_11

    .line 2679
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v3, v0

    const v4, 0x7f0200ef

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2687
    :goto_5
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 2688
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->callDate:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0e0011

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_4

    .line 2674
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .line 2680
    :cond_11
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->firewallType:I

    move v3, v0

    and-int/lit16 v3, v3, 0xff

    if-lez v3, :cond_12

    .line 2681
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v3, v0

    const v4, 0x7f0200e6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 2683
    :cond_12
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->type:I

    move v4, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->firewallType:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->getResourceIdForType(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 2690
    :cond_13
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->callDate:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x10300b2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_4

    .line 2697
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v13           #location:Ljava/lang/String;
    :cond_14
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/ViewContactActivity$ViewCache;->switchToEntry(Lcom/android/contacts/ViewContactActivity$ViewCache;)V

    .line 2699
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->callDate:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x10300b2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2703
    if-eqz v12, :cond_17

    .line 2704
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2707
    :cond_15
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->primaryIcon:Landroid/widget/ImageView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactActivity;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/contacts/ViewContactActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_19

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2708
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_1a

    .line 2709
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->primaryIcon:Landroid/widget/ImageView;

    move-object v3, v0

    const v4, 0x7f020073

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2714
    :goto_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2715
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2718
    .restart local v13       #location:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 2719
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->location:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2720
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->location:Landroid/widget/TextView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2729
    .end local v13           #location:Ljava/lang/String;
    :cond_16
    :goto_8
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->maxLines:I

    move v3, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 2733
    :cond_17
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 2734
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->footer:Landroid/widget/TextView;

    move-object v3, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2735
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->footer:Landroid/widget/TextView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2741
    :goto_9
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    move-object v9, v0

    .line 2742
    .local v9, action:Landroid/widget/ImageView;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    .line 2744
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->resPackageName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_1e

    .line 2746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->resPackageName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    move v5, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 2751
    .local v10, actionIcon:Landroid/graphics/drawable/Drawable;
    :goto_a
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2752
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2761
    .end local v10           #actionIcon:Landroid/graphics/drawable/Drawable;
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->presence:I

    move v4, v0

    invoke-static {v3, v4}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 2763
    .local v16, presenceIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->presenceIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 2764
    .local v17, presenceIconView:Landroid/widget/ImageView;
    if-eqz v16, :cond_20

    .line 2765
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2766
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2772
    :goto_c
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    .line 2773
    .local v20, secondaryActionView:Landroid/widget/ImageView;
    const/16 v19, 0x0

    .line 2774
    .local v19, secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryActionIcon:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_18

    .line 2775
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryActionIcon:I

    move v3, v0

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 2778
    :cond_18
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    move-object v3, v0

    if-eqz v3, :cond_21

    if-eqz v19, :cond_21

    .line 2779
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2780
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    move-object v3, v0

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2781
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2707
    .end local v9           #action:Landroid/widget/ImageView;
    .end local v16           #presenceIcon:Landroid/graphics/drawable/Drawable;
    .end local v17           #presenceIconView:Landroid/widget/ImageView;
    .end local v19           #secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    .end local v20           #secondaryActionView:Landroid/widget/ImageView;
    :cond_19
    const/16 v4, 0x8

    goto/16 :goto_6

    .line 2711
    :cond_1a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->primaryIcon:Landroid/widget/ImageView;

    move-object v3, v0

    const v4, 0x7f020089

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 2722
    :cond_1b
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->mimetype:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->ids:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-static {v3, v4}, Lcom/android/contacts/ContactsUtils;->getGroupNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 2725
    :cond_1c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ContactEntryAdapter$Entry;->data:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2726
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->primaryIcon:Landroid/widget/ImageView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 2737
    :cond_1d
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/contacts/ViewContactActivity$ViewCache;->footer:Landroid/widget/TextView;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 2749
    .restart local v9       #action:Landroid/widget/ImageView;
    :cond_1e
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->actionIcon:I

    move v3, v0

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .restart local v10       #actionIcon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_a

    .line 2756
    .end local v10           #actionIcon:Landroid/graphics/drawable/Drawable;
    :cond_1f
    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    .line 2768
    .restart local v16       #presenceIcon:Landroid/graphics/drawable/Drawable;
    .restart local v17       #presenceIconView:Landroid/widget/ImageView;
    :cond_20
    const/16 v3, 0x8

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 2782
    .restart local v19       #secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    .restart local v20       #secondaryActionView:Landroid/widget/ImageView;
    :cond_21
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;->secondaryIconNoAction:Z

    move v3, v0

    if-eqz v3, :cond_22

    .line 2783
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2784
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2785
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2787
    :cond_22
    const/16 v3, 0x8

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 2503
    iget-object v3, p0, Lcom/android/contacts/ContactEntryAdapter;->mSections:Ljava/util/ArrayList;

    invoke-static {v3, p1, v5}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/android/contacts/ContactEntryAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 2508
    .local v0, entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;
    if-eqz p2, :cond_0

    .line 2509
    move-object v1, p2

    .line 2510
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ViewContactActivity$ViewCache;

    .line 2534
    .local v2, views:Lcom/android/contacts/ViewContactActivity$ViewCache;
    :goto_0
    iput-object v0, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->entry:Lcom/android/contacts/ViewContactActivity$ViewEntry;

    .line 2537
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->bindView(Landroid/view/View;Lcom/android/contacts/ViewContactActivity$ViewEntry;)V

    .line 2538
    return-object v1

    .line 2513
    .end local v1           #v:Landroid/view/View;
    .end local v2           #views:Lcom/android/contacts/ViewContactActivity$ViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/ContactEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030005

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2516
    .restart local v1       #v:Landroid/view/View;
    new-instance v2, Lcom/android/contacts/ViewContactActivity$ViewCache;

    invoke-direct {v2}, Lcom/android/contacts/ViewContactActivity$ViewCache;-><init>()V

    .line 2517
    .restart local v2       #views:Lcom/android/contacts/ViewContactActivity$ViewCache;
    const/high16 v3, 0x101

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->extra:Landroid/widget/TextView;

    .line 2518
    const v3, 0x7f070034

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration:Landroid/widget/TextView;

    .line 2519
    const v3, 0x7f070036

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->duration2:Landroid/widget/TextView;

    .line 2520
    const v3, 0x7f070033

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->callDate:Landroid/widget/TextView;

    .line 2521
    const v3, 0x1020015

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->data:Landroid/widget/TextView;

    .line 2522
    const v3, 0x7f070035

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->footer:Landroid/widget/TextView;

    .line 2523
    const v3, 0x7f070032

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->actionIcon:Landroid/widget/ImageView;

    .line 2524
    const v3, 0x7f070039

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->location:Landroid/widget/TextView;

    .line 2525
    const v3, 0x7f07003a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->primaryIcon:Landroid/widget/ImageView;

    .line 2526
    const v3, 0x7f070037

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 2527
    const v3, 0x7f070038

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    .line 2529
    iget-object v3, v2, Lcom/android/contacts/ViewContactActivity$ViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2530
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 2544
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2495
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 2496
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2497
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$ViewAdapter;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 2499
    :cond_0
    return-void
.end method
