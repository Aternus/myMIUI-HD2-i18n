.class public Lcom/miui/player/ui/RenamePlaylist;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

.field private mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

.field private mOriginalName:Ljava/lang/String;

.field private mPlaylist:Landroid/widget/EditText;

.field private mPrompt:Landroid/app/AlertDialog;

.field private mPromptStr:Ljava/lang/String;

.field private mRenameId:J

.field private final mRequestCode:I

.field private mSaveButton:Landroid/widget/Button;

.field final mTextWatcher:Landroid/text/TextWatcher;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/miui/player/ui/RenamePlaylist;-><init>(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;Landroid/os/Bundle;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;Landroid/os/Bundle;I)V
    .locals 3
    .parameter "a"
    .parameter "l"
    .parameter "b"
    .parameter "requestCode"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/miui/player/ui/RenamePlaylist$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/RenamePlaylist$1;-><init>(Lcom/miui/player/ui/RenamePlaylist;)V

    iput-object v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    .line 159
    new-instance v0, Lcom/miui/player/ui/RenamePlaylist$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/RenamePlaylist$2;-><init>(Lcom/miui/player/ui/RenamePlaylist;)V

    iput-object v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    iput-object p1, p0, Lcom/miui/player/ui/RenamePlaylist;->mActivity:Landroid/app/Activity;

    .line 67
    iput p4, p0, Lcom/miui/player/ui/RenamePlaylist;->mRequestCode:I

    .line 68
    const-string v0, "rename"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mRenameId:J

    .line 69
    const-string v0, "playlist_type"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mType:I

    .line 70
    iget-wide v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mRenameId:J

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/RenamePlaylist;->nameForId(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/miui/player/ui/RenamePlaylist;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/RenamePlaylist;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/player/ui/RenamePlaylist;->setSaveButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/RenamePlaylist;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/RenamePlaylist;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/RenamePlaylist;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mRenameId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/RenamePlaylist;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mType:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/player/ui/RenamePlaylist;)Lcom/miui/player/MusicUtils$OnDialogCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/ui/RenamePlaylist;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mRequestCode:I

    return v0
.end method

.method private isValid()Z
    .locals 4

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mRenameId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nameForId(J)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const-string v5, "name"

    .line 143
    iget-object v0, p0, Lcom/miui/player/ui/RenamePlaylist;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v5, v2, v9

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v9

    const-string v8, "name"

    invoke-static/range {v0 .. v5}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 148
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 149
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 151
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 155
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 156
    return-object v7
.end method

.method private setSaveButton()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, typedname:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mActivity:Landroid/app/Activity;

    iget v4, p0, Lcom/miui/player/ui/RenamePlaylist;->mType:I

    invoke-static {v3, v2, v4}, Lcom/miui/player/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mActivity:Landroid/app/Activity;

    const v4, 0x7f08009e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, promptformat:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, promptStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPrompt:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    .end local v0           #promptStr:Ljava/lang/String;
    .end local v1           #promptformat:Ljava/lang/String;
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPrompt:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/miui/player/ui/RenamePlaylist;->mPromptStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    const v4, 0x7f08002e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public show()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 75
    invoke-direct {p0}, Lcom/miui/player/ui/RenamePlaylist;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 80
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, entryView:Landroid/view/View;
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mActivity:Landroid/app/Activity;

    const v4, 0x7f08003f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, promptformat:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPromptStr:Ljava/lang/String;

    .line 85
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/miui/player/ui/RenamePlaylist;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/ui/RenamePlaylist;->mPromptStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080043

    iget-object v5, p0, Lcom/miui/player/ui/RenamePlaylist;->mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080042

    iget-object v5, p0, Lcom/miui/player/ui/RenamePlaylist;->mOpenClicked:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPrompt:Landroid/app/AlertDialog;

    .line 93
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPrompt:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 94
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPrompt:Landroid/app/AlertDialog;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setVolumeControlStream(I)V

    .line 96
    const v3, 0x7f0c0004

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    .line 97
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/miui/player/ui/RenamePlaylist;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 99
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/miui/player/ui/RenamePlaylist;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    iget-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mPrompt:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/RenamePlaylist;->mSaveButton:Landroid/widget/Button;

    .line 102
    invoke-direct {p0}, Lcom/miui/player/ui/RenamePlaylist;->setSaveButton()V

    goto/16 :goto_0
.end method
