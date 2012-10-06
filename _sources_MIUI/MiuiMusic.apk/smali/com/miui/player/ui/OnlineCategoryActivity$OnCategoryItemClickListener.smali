.class Lcom/miui/player/ui/OnlineCategoryActivity$OnCategoryItemClickListener;
.super Ljava/lang/Object;
.source "OnlineCategoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCategoryItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineCategoryActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$OnCategoryItemClickListener;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity;Lcom/miui/player/ui/OnlineCategoryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/miui/player/ui/OnlineCategoryActivity$OnCategoryItemClickListener;-><init>(Lcom/miui/player/ui/OnlineCategoryActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "child"
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
    .line 157
    .local p1, gridView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/miui/player/ui/OnlineCategoryActivity$OnCategoryItemClickListener;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    #getter for: Lcom/miui/player/ui/OnlineCategoryActivity;->mCategoryAdapter:Lcom/miui/player/model/OnlineCategoryAdapter;
    invoke-static {v2}, Lcom/miui/player/ui/OnlineCategoryActivity;->access$500(Lcom/miui/player/ui/OnlineCategoryActivity;)Lcom/miui/player/model/OnlineCategoryAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/player/model/OnlineCategoryAdapter;->getSongCategoryItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;

    move-result-object v0

    .line 158
    .local v0, categoryItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;->SongListUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.music.ONLINE_MUSIC_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "category_name"

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v2, "list_url"

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;->SongListUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v2, p0, Lcom/miui/player/ui/OnlineCategoryActivity$OnCategoryItemClickListener;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    invoke-static {v2, v1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 165
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
