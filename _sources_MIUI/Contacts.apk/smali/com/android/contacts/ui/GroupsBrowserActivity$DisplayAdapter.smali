.class public Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupsBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/GroupsBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 687
    iput-object p2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    .line 688
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 689
    return-void
.end method

.method private bindMissingIcons(Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;I)V
    .locals 3
    .parameter "vh"
    .parameter "startPos"

    .prologue
    .line 840
    move v0, p2

    .local v0, i:I
    :goto_0
    iget-object v1, p1, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zItemIcons:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 841
    iget-object v1, p1, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zItemIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    :cond_0
    return-void
.end method

.method private bindPhotos(Ljava/util/ArrayList;Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;)V
    .locals 18
    .parameter
    .parameter "vh"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/GroupDelta;",
            ">;",
            "Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 776
    .local p1, mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    const/4 v9, 0x0

    .line 777
    .local v9, imageCount:I
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 778
    .local v12, photoList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 779
    .local v5, contactIdList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zItemIcons:[Landroid/widget/ImageView;

    move-object v14, v0

    array-length v13, v14

    .line 781
    .local v13, zItemIconsCount:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/GroupDelta;

    .line 782
    .local v6, groupDelta:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v14

    if-ne v14, v13, :cond_6

    .line 795
    .end local v6           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    :cond_1
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 796
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 797
    .local v10, photoId:Ljava/lang/Long;
    if-lt v9, v13, :cond_8

    .line 807
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #photoId:Ljava/lang/Long;
    :cond_2
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v14

    if-ge v14, v13, :cond_4

    .line 808
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local p1           #mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/GroupDelta;

    .line 809
    .restart local v6       #groupDelta:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v14

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v15

    sub-int v15, v13, v15

    if-ne v14, v15, :cond_9

    .line 823
    .end local v6           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 824
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 825
    .local v3, contactId:Ljava/lang/Long;
    if-lt v9, v13, :cond_b

    .line 836
    .end local v3           #contactId:Ljava/lang/Long;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->bindMissingIcons(Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;I)V

    .line 837
    return-void

    .line 786
    .restart local v6       #groupDelta:Lcom/android/contacts/model/GroupDelta;
    .restart local p1       #mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    :cond_6
    invoke-virtual {v6}, Lcom/android/contacts/model/GroupDelta;->getMostContactedPhotoId()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 787
    .local v10, photoId:J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v14

    if-ne v14, v13, :cond_7

    goto/16 :goto_0

    .line 801
    .end local v6           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    .end local v8           #i$:Ljava/util/Iterator;
    .restart local v7       #i$:Ljava/util/Iterator;
    .local v10, photoId:Ljava/lang/Long;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    move-object v14, v0

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;
    invoke-static {v14}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1700(Lcom/android/contacts/ui/GroupsBrowserActivity;)Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zItemIcons:[Landroid/widget/ImageView;

    move-object v15, v0

    aget-object v15, v15, v9

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v14 .. v17}, Lcom/android/contacts/ContactPhotoLoader;->loadPhoto(Landroid/widget/ImageView;J)V

    .line 802
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 813
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #photoId:Ljava/lang/Long;
    .end local p1           #mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    .restart local v6       #groupDelta:Lcom/android/contacts/model/GroupDelta;
    :cond_9
    invoke-virtual {v6}, Lcom/android/contacts/model/GroupDelta;->getMostContactedNoPhotoId()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 814
    .local v3, contactId:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v14

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v15

    sub-int v15, v13, v15

    if-ne v14, v15, :cond_a

    goto/16 :goto_2

    .line 829
    .end local v6           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    .end local v8           #i$:Ljava/util/Iterator;
    .local v3, contactId:Ljava/lang/Long;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zItemIcons:[Landroid/widget/ImageView;

    move-object v14, v0

    aget-object v14, v14, v9

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Landroid/widget/QuickContactBadge;->setDefaultPhoto(Landroid/widget/ImageView;J)V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    move-object v14, v0

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;
    invoke-static {v14}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1700(Lcom/android/contacts/ui/GroupsBrowserActivity;)Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zItemIcons:[Landroid/widget/ImageView;

    move-object v15, v0

    aget-object v15, v15, v9

    invoke-virtual {v14, v15}, Lcom/android/contacts/ContactPhotoLoader;->cancelRequest(Landroid/widget/ImageView;)V

    .line 831
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3
.end method

.method private getCount(Ljava/util/ArrayList;)I
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/GroupDelta;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    const/4 v2, 0x0

    const-string v1, "\'"

    .line 846
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .local v8, str:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 848
    if-lez v7, :cond_0

    .line 849
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :cond_0
    const-string v0, "\'"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/GroupDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 853
    const-string v0, "\'"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_IDS_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mDisplayOnlyPhones:Z
    invoke-static {v3}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1800(Lcom/android/contacts/ui/GroupsBrowserActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "has_phone_number=1"

    :goto_1
    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 858
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 860
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 862
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 866
    :goto_2
    return v0

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    move-object v3, v2

    .line 855
    goto :goto_1

    .line 862
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 866
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 692
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 696
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 698
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 702
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "position"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 707
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    .line 708
    .local v0, child:Lcom/android/contacts/model/GroupDelta;
    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Lcom/android/contacts/model/GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 710
    .local v1, childId:Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 712
    .end local v1           #childId:Ljava/lang/Long;
    :cond_0
    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    iget-object v0, v5, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    .line 718
    .local v0, child:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    iget-object v3, v5, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupList:Ljava/util/ArrayList;

    .line 720
    .local v3, mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    const/4 v4, 0x0

    .line 721
    .local v4, vh:Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;
    if-nez p2, :cond_1

    .line 722
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03001c

    invoke-virtual {v5, v6, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 723
    new-instance v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;

    .end local v4           #vh:Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {v4, v5}, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    .line 724
    .restart local v4       #vh:Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 726
    const v5, 0x7f07007d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zIcon:Landroid/view/View;

    .line 727
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1400()[I

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zItemIcons:[Landroid/widget/ImageView;

    .line 728
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1400()[I

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 729
    iget-object v6, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zItemIcons:[Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1400()[I

    move-result-object v5

    aget v5, v5, v2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v2

    .line 728
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    :cond_0
    const v5, 0x7f070082

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zName:Landroid/widget/TextView;

    .line 732
    const v5, 0x7f070083

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zSummary:Landroid/widget/TextView;

    .line 733
    const v5, 0x7f070085

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zRight:Landroid/view/View;

    .line 735
    const v5, 0x7f070084

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zNameEdit:Landroid/widget/TextView;

    .line 736
    const v5, 0x7f070086

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zMoveButton:Landroid/widget/ImageView;

    .line 737
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zMoveButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;
    invoke-static {v6}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1000(Lcom/android/contacts/ui/GroupsBrowserActivity;)Landroid/widget/SortableListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 743
    .end local v2           #i:I
    :goto_1
    const v5, 0x7f07007c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 744
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->updateVisibilities(Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;)V
    invoke-static {v5, v4}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1500(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;)V

    .line 748
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/model/GroupDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    invoke-direct {p0, v3}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->getCount(Ljava/util/ArrayList;)I

    move-result v1

    .line 754
    .local v1, count:I
    if-lez v1, :cond_3

    .line 755
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zSummary:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0107

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mEnablePhoto:Z
    invoke-static {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1600(Lcom/android/contacts/ui/GroupsBrowserActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 757
    invoke-direct {p0, v3, v4}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->bindPhotos(Ljava/util/ArrayList;Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;)V

    .line 770
    :goto_2
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zNameEdit:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/model/GroupDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    return-object p2

    .line 739
    .end local v1           #count:I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #vh:Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;
    check-cast v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;

    .restart local v4       #vh:Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;
    goto :goto_1

    .line 759
    .restart local v1       #count:I
    :cond_2
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zIcon:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 762
    :cond_3
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zSummary:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0108

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mEnablePhoto:Z
    invoke-static {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1600(Lcom/android/contacts/ui/GroupsBrowserActivity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 764
    invoke-direct {p0, v4, v10}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->bindMissingIcons(Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;I)V

    goto :goto_2

    .line 766
    :cond_4
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zIcon:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
