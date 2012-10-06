.class Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/uac/AppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppPermissionInfoAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/miui/uac/AppListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/uac/AppListActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->this$0:Lcom/miui/uac/AppListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 320
    iput-object p2, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->mContext:Landroid/content/Context;

    .line 321
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->this$0:Lcom/miui/uac/AppListActivity;

    #getter for: Lcom/miui/uac/AppListActivity;->mAppPermissionInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/miui/uac/AppListActivity;->access$100(Lcom/miui/uac/AppListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 330
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppPermissionInfoAdapter tried to get a view out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->this$0:Lcom/miui/uac/AppListActivity;

    #getter for: Lcom/miui/uac/AppListActivity;->mAppPermissionInfos:Ljava/util/List;
    invoke-static {v0}, Lcom/miui/uac/AppListActivity;->access$100(Lcom/miui/uac/AppListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 339
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 344
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->getCount()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 345
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "AppPermissionInfoAdapter tried to get a view out of range"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 349
    :cond_1
    if-nez p2, :cond_3

    .line 350
    iget-object v7, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030003

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 352
    new-instance v4, Lcom/miui/uac/AppListActivity$AppViewHolder;

    invoke-direct {v4}, Lcom/miui/uac/AppListActivity$AppViewHolder;-><init>()V

    .line 353
    .local v4, holder:Lcom/miui/uac/AppListActivity$AppViewHolder;
    const/high16 v7, 0x7f09

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->icon:Landroid/widget/ImageView;

    .line 354
    const v7, 0x7f090001

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->appname:Landroid/widget/TextView;

    .line 355
    const v7, 0x7f090010

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->permissionAllowed:Landroid/widget/TextView;

    .line 356
    const v7, 0x7f090011

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->permissionDenied:Landroid/widget/TextView;

    .line 357
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 363
    :goto_0
    iget-object v7, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->this$0:Lcom/miui/uac/AppListActivity;

    #getter for: Lcom/miui/uac/AppListActivity;->mAppPermissionInfos:Ljava/util/List;
    invoke-static {v7}, Lcom/miui/uac/AppListActivity;->access$100(Lcom/miui/uac/AppListActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/uac/AppListActivity$AppPermissionInfo;

    .line 364
    .local v1, appPermission:Lcom/miui/uac/AppListActivity$AppPermissionInfo;
    iget-object v7, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/miui/uac/Util;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v7, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->appname:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPackageLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v0, allowed:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v2, denied:Ljava/lang/StringBuilder;
    iget-object v7, v1, Lcom/miui/uac/AppListActivity$AppPermissionInfo;->mPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p1
    .local v5, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 370
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 371
    .local v3, entry:Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 372
    .local v6, valuse:I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 373
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/miui/uac/Util;->PERMISSION_LABELS_MAP:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 359
    .end local v0           #allowed:Ljava/lang/StringBuilder;
    .end local v1           #appPermission:Lcom/miui/uac/AppListActivity$AppPermissionInfo;
    .end local v2           #denied:Ljava/lang/StringBuilder;
    .end local v3           #entry:Ljava/util/Map$Entry;
    .end local v4           #holder:Lcom/miui/uac/AppListActivity$AppViewHolder;
    .end local v5           #iter:Ljava/util/Iterator;
    .end local v6           #valuse:I
    .restart local p1
    .restart local p3
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/uac/AppListActivity$AppViewHolder;

    .line 360
    .restart local v4       #holder:Lcom/miui/uac/AppListActivity$AppViewHolder;
    iget-object v7, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->permissionAllowed:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v7, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->permissionDenied:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 375
    .end local p1
    .end local p3
    .restart local v0       #allowed:Ljava/lang/StringBuilder;
    .restart local v1       #appPermission:Lcom/miui/uac/AppListActivity$AppPermissionInfo;
    .restart local v2       #denied:Ljava/lang/StringBuilder;
    .restart local v3       #entry:Ljava/util/Map$Entry;
    .restart local v5       #iter:Ljava/util/Iterator;
    .restart local v6       #valuse:I
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/uac/AppListActivity$AppPermissionInfoAdapter;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/miui/uac/Util;->PERMISSION_LABELS_MAP:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 379
    .end local v3           #entry:Ljava/util/Map$Entry;
    .end local v6           #valuse:I
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 381
    iget-object v7, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->permissionDenied:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v7, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->permissionDenied:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    iget-object v8, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->permissionDenied:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v8

    or-int/lit8 v8, v8, 0x10

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setFlags(I)V

    .line 387
    :goto_2
    iget-object v7, v4, Lcom/miui/uac/AppListActivity$AppViewHolder;->permissionAllowed:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    return-object p2

    .line 385
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
