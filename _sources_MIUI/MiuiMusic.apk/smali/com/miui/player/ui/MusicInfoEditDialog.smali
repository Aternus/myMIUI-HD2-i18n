.class public Lcom/miui/player/ui/MusicInfoEditDialog;
.super Ljava/lang/Object;
.source "MusicInfoEditDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;
    }
.end annotation


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final MODIFY_ID3:Ljava/lang/String; = "modify_id3"

.field public static final NEW_ALBUM_NAME:Ljava/lang/String; = "search_album_name"

.field public static final NEW_ARTIST_NAME:Ljava/lang/String; = "search_artist_name"

.field public static final NEW_TRACK_NAME:Ljava/lang/String; = "search_track_name"

.field public static final RAW_ALBUM_NAME:Ljava/lang/String; = "raw_album_name"

.field public static final RAW_ARTIST_NAME:Ljava/lang/String; = "raw_artist_name"

.field public static final RAW_FILE_PATH:Ljava/lang/String; = "raw_path"

.field public static final RAW_TRACK_NAME:Ljava/lang/String; = "raw_track_name"

.field public static final SEARCH_TITLE:Ljava/lang/String; = "search_title"

.field public static final TRACK_ID:Ljava/lang/String; = "track_id"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAlbumEditText:Landroid/widget/EditText;

.field private mAlbumId:J

.field private mAlbumTextView:Landroid/widget/TextView;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mArtistEditText:Landroid/widget/EditText;

.field private mArtistTextView:Landroid/widget/TextView;

.field private final mBundle:Landroid/os/Bundle;

.field private final mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

.field private mId3EditCheckBox:Landroid/widget/CheckBox;

.field private mModifyCheckBoxChecked:Z

.field private mModifyCheckBoxVisible:Z

.field private mRawAlbumName:Ljava/lang/String;

.field private mRawArtistName:Ljava/lang/String;

.field private mRawTrackName:Ljava/lang/String;

.field private final mRequestCode:I

.field private mSaveAsConfirm:Z

.field private mTrackEditText:Landroid/widget/EditText;

.field private mTrackId:J

.field private mTrackTextView:Landroid/widget/TextView;

.field private mUnknownAlbum:Ljava/lang/String;

.field private mUnknownArtist:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V
    .locals 3
    .parameter "activity"
    .parameter "intent"
    .parameter "callback"
    .parameter "requestCode"

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawTrackName:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawArtistName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawAlbumName:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mModifyCheckBoxVisible:Z

    .line 83
    iput-boolean v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mModifyCheckBoxChecked:Z

    .line 85
    iput-boolean v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mSaveAsConfirm:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 90
    iput-object p1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mActivity:Landroid/app/Activity;

    .line 91
    iput-object p2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mBundle:Landroid/os/Bundle;

    .line 92
    iput-object p3, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

    .line 93
    iput p4, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRequestCode:I

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/player/ui/MusicInfoEditDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/player/ui/MusicInfoEditDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/player/ui/MusicInfoEditDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackId:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/miui/player/ui/MusicInfoEditDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/miui/player/ui/MusicInfoEditDialog;)Lcom/miui/player/MusicUtils$OnDialogCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/player/ui/MusicInfoEditDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRequestCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/MusicInfoEditDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/player/ui/MusicInfoEditDialog;->isTextChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/ui/MusicInfoEditDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mUnknownAlbum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mArtistEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/player/ui/MusicInfoEditDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mUnknownArtist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/player/ui/MusicInfoEditDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawTrackName:Ljava/lang/String;

    return-object v0
.end method

.method private bindDialog(Landroid/view/View;)V
    .locals 8
    .parameter "dialog"

    .prologue
    const-wide/16 v5, -0x1

    const/16 v4, 0x8

    const-string v2, "raw_track_name"

    const-string v3, "raw_artist_name"

    const-string v7, "raw_album_name"

    .line 144
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mBundle:Landroid/os/Bundle;

    .line 146
    .local v0, bundle:Landroid/os/Bundle;
    const v1, 0x7f0c0005

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackTextView:Landroid/widget/TextView;

    .line 147
    const v1, 0x7f0c0006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackEditText:Landroid/widget/EditText;

    .line 148
    const v1, 0x7f0c0007

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mArtistTextView:Landroid/widget/TextView;

    .line 149
    const v1, 0x7f0c0008

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mArtistEditText:Landroid/widget/EditText;

    .line 150
    const v1, 0x7f0c0009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumTextView:Landroid/widget/TextView;

    .line 151
    const v1, 0x7f0c000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    .line 152
    const v1, 0x7f0c000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    .line 154
    const-string v1, "raw_track_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "raw_track_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawTrackName:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawTrackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 163
    :goto_0
    const-string v1, "raw_artist_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const-string v1, "raw_artist_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawArtistName:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mArtistEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawArtistName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/player/helper/MediaInfo;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mArtistEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mArtistEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 172
    :goto_1
    const-string v1, "raw_album_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const-string v1, "raw_album_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawAlbumName:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mRawAlbumName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/player/helper/MediaInfo;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 181
    :goto_2
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f08001f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mUnknownArtist:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mUnknownAlbum:Ljava/lang/String;

    .line 184
    const-string v1, "track_id"

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackId:J

    .line 185
    const-string v1, "album_id"

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumId:J

    .line 186
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_0

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mArtistEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method private isModifyInvalidText(Landroid/widget/EditText;)Z
    .locals 1
    .parameter "editText"

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTextChanged()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mArtistEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isModifyId3Invalid()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/miui/player/ui/MusicInfoEditDialog;->isModifyInvalidText(Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method public setModifyID3CheckBoxStatus(ZZ)V
    .locals 2
    .parameter "visible"
    .parameter "checked"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mModifyCheckBoxVisible:Z

    .line 98
    iput-boolean p2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mModifyCheckBoxChecked:Z

    .line 99
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mModifyCheckBoxVisible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 104
    :cond_0
    return-void

    .line 100
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setSaveAsConfirm(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mSaveAsConfirm:Z

    .line 108
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mSaveAsConfirm:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0800c2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 112
    :cond_0
    return-void

    .line 109
    :cond_1
    const v1, 0x7f080042

    goto :goto_0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    new-instance v0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;

    invoke-direct {v0, p0, v4}, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;-><init>(Lcom/miui/player/ui/MusicInfoEditDialog;Lcom/miui/player/ui/MusicInfoEditDialog$1;)V

    .line 116
    .local v0, listener:Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;
    iget-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030003

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/miui/player/ui/MusicInfoEditDialog;->bindDialog(Landroid/view/View;)V

    .line 119
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080043

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080042

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mBundle:Landroid/os/Bundle;

    const-string v4, "search_title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 127
    iget-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 128
    iget-boolean v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mModifyCheckBoxVisible:Z

    iget-boolean v3, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mModifyCheckBoxChecked:Z

    invoke-virtual {p0, v2, v3}, Lcom/miui/player/ui/MusicInfoEditDialog;->setModifyID3CheckBoxStatus(ZZ)V

    .line 129
    iget-boolean v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mSaveAsConfirm:Z

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MusicInfoEditDialog;->setSaveAsConfirm(Z)V

    .line 131
    iget-object v2, p0, Lcom/miui/player/ui/MusicInfoEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/miui/player/ui/MusicInfoEditDialog$1;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/MusicInfoEditDialog$1;-><init>(Lcom/miui/player/ui/MusicInfoEditDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    return-void
.end method
