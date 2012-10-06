.class public abstract Lcom/android/gallery/ui/ISingleViewInteraction;
.super Ljava/lang/Object;
.source "ISingleViewInteraction.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field protected mGallery:Landroid/widget/Gallery;

.field protected mHostActivity:Lcom/android/gallery/ui/SingleViewActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentItemMIMEType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentItemUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInitMode()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getSendIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSendIntent(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;
    .locals 7
    .parameter "context"
    .parameter "meta"

    .prologue
    const/4 v6, 0x0

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.STREAM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, id:I
    invoke-virtual {p2}, Lcom/android/gallery/data/BaseMeta;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const v0, 0x7f090067

    .line 96
    const-string v3, "video/*"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p2, Lcom/android/gallery/data/BaseMeta;->mSize:J

    invoke-static {v5, v6}, Lcom/android/gallery/util/Utils;->getFormatedSizeString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, title:Ljava/lang/String;
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    return-object v1

    .line 98
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    const v0, 0x7f090066

    .line 99
    const-string v3, "image/*"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public hasValidMedia()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isSingleView()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public onCrop()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onDeleteItem()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onMore()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/gallery/ui/ISingleViewInteraction;->reloadData()V

    .line 34
    return-void
.end method

.method public onRotate(I)V
    .locals 0
    .parameter "deltaDegree"

    .prologue
    .line 71
    return-void
.end method

.method public onShowItemInfo()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onTurnLeft()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, -0x5a

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/ISingleViewInteraction;->onRotate(I)V

    .line 69
    return-void
.end method

.method public onTurnRight()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/ISingleViewInteraction;->onRotate(I)V

    .line 66
    return-void
.end method

.method public reloadData()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public setAdapter(Landroid/widget/Gallery;)V
    .locals 0
    .parameter "gallery"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/gallery/ui/ISingleViewInteraction;->mGallery:Landroid/widget/Gallery;

    .line 25
    return-void
.end method
