.class Lcom/miui/player/ui/MusicBrowserActivity$OnNavigationClickListener;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnNavigationClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MusicBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$OnNavigationClickListener;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MusicBrowserActivity;Lcom/miui/player/ui/MusicBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MusicBrowserActivity$OnNavigationClickListener;-><init>(Lcom/miui/player/ui/MusicBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, mimeType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 231
    .local v2, numIndex:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 256
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad view id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/track"

    .line 234
    const/4 v2, 0x0

    .line 259
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.music.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "num"

    invoke-static {}, Lcom/miui/player/ui/MusicBrowserActivity;->access$200()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    iget-object v3, p0, Lcom/miui/player/ui/MusicBrowserActivity$OnNavigationClickListener;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-static {v3, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 263
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 237
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/artistalbum"

    .line 238
    const/4 v2, 0x1

    .line 239
    goto :goto_0

    .line 241
    :pswitch_3
    const-string v1, "vnd.android.cursor.dir/album"

    .line 242
    const/4 v2, 0x2

    .line 243
    goto :goto_0

    .line 245
    :pswitch_4
    const-string v1, "vnd.android.cursor.dir/playlist"

    .line 246
    const/4 v2, 0x3

    .line 247
    goto :goto_0

    .line 249
    :pswitch_5
    const-string v1, "vnd.android.cursor.dir/folder"

    .line 250
    const/4 v2, 0x4

    .line 251
    goto :goto_0

    .line 253
    :pswitch_6
    iget-object v3, p0, Lcom/miui/player/ui/MusicBrowserActivity$OnNavigationClickListener;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-virtual {v3}, Lcom/miui/player/ui/MusicBrowserActivity;->onSearchRequested()Z

    goto :goto_1

    .line 231
    :pswitch_data_0
    .packed-switch 0x7f0c006f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
