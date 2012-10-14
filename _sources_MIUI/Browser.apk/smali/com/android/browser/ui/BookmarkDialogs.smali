.class public Lcom/android/browser/ui/BookmarkDialogs;
.super Ljava/lang/Object;
.source "BookmarkDialogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ui/BookmarkDialogs$SaveBookmarkRunnable;
    }
.end annotation


# static fields
.field private static final sBookmarkFolderAddedSucceed:I = 0x2

.field private static final sBookmarkFolderEditedFailed:I = 0x4

.field private static final sBookmarkFolderEditedSucceed:I = 0x3

.field private static final sBookmarkFolderExist:I = 0x0

.field private static final sBookmarkFolderNameInvalid:I = 0x1

.field private static final sBookmarkWebsiteAddedFailed:I = 0x8

.field private static final sBookmarkWebsiteAddedSucceed:I = 0x7

.field private static final sBookmarkWebsiteEditedFailed:I = 0xa

.field private static final sBookmarkWebsiteEditedSucceed:I = 0x9

.field private static final sBookmarkWebsiteTitleInvalid:I = 0x5

.field private static final sBookmarkWebsiteUrlInvalid:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/android/browser/ui/BookmarkDialogs;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method public static setupAddOrEditBookmarkDialog(Landroid/content/Context;ZLandroid/os/Bundle;)Landroid/app/AlertDialog;
    .locals 13
    .parameter "context"
    .parameter "isEditBookmark"
    .parameter "bundle"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 97
    .local v12, view:Landroid/view/View;
    const v0, 0x7f0d0010

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 98
    .local v10, folderPicker:Landroid/widget/Spinner;
    const v0, 0x7f0d000d

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 99
    .local v11, titleEditText:Landroid/widget/EditText;
    const v0, 0x7f0d000e

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 101
    .local v6, addressEditText:Landroid/widget/EditText;
    const/4 v0, -0x1

    .line 102
    .local v0, folderId:I
    if-eqz p1, :cond_4

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, originalTitle:Ljava/lang/String;
    const/4 v1, 0x0

    .line 106
    .local v1, originalAddress:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 107
    const-string v0, "entryMode"

    .end local v0           #folderId:I
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, entryMode:I
    const-string v1, "title"

    .end local v1           #originalAddress:Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, originalTitle:Ljava/lang/String;
    const-string v1, "url"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, originalAddress:Ljava/lang/String;
    const-string v1, "folderId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, folderId:I
    if-nez v0, :cond_0

    .line 113
    const v0, 0x7f0d000f

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .end local v0           #entryMode:I
    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    :cond_0
    invoke-virtual {v11, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v7, v1

    .line 120
    .end local v1           #folderId:I
    .end local v2           #originalAddress:Ljava/lang/String;
    .end local v3           #originalTitle:Ljava/lang/String;
    .local v7, folderId:I
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v9, folderNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v8, folderIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_FOLDER_PROJECTION:[Ljava/lang/String;

    const-string v3, "created> 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 129
    .local v0, cursorFolder:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 130
    .local v3, posOneClickTemp:I
    const/4 v1, 0x0

    .line 131
    .local v1, folderPickerSelection:I
    const/4 v2, 0x0

    .line 132
    .local v2, index:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move v4, v3

    .end local v3           #posOneClickTemp:I
    .local v4, posOneClickTemp:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 134
    .local v2, id:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v3, v3, 0x1

    .line 136
    if-ne v7, v2, :cond_1

    .line 137
    move v1, v3

    .line 139
    :cond_1
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .end local v2           #id:I
    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 140
    move v2, v3

    .line 141
    .end local v4           #posOneClickTemp:I
    .local v2, posOneClickTemp:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move v4, v2

    .end local v2           #posOneClickTemp:I
    .restart local v4       #posOneClickTemp:I
    goto :goto_1

    .line 144
    :cond_2
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    .end local v4           #posOneClickTemp:I
    .restart local v2       #posOneClickTemp:I
    goto :goto_2

    .line 149
    .end local v2           #posOneClickTemp:I
    .restart local v4       #posOneClickTemp:I
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    move v7, v4

    .line 153
    .local v7, posOneClick:I
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0           #cursorFolder:Landroid/database/Cursor;
    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 155
    .local v0, spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 156
    const v2, 0x7f09000c

    invoke-virtual {v10, v2}, Landroid/widget/Spinner;->setPromptId(I)V

    .line 157
    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 158
    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .end local v1           #folderPickerSelection:I
    move-result-object v9

    .end local v9           #folderNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v12, 0x7f09000f

    new-instance v0, Lcom/android/browser/ui/BookmarkDialogs$1;

    .end local v12           #view:Landroid/view/View;
    move-object v1, v10

    move-object v2, v8

    move-object v3, v11

    move-object v4, v6

    move v5, p1

    move-object v6, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/browser/ui/BookmarkDialogs$1;-><init>(Landroid/widget/Spinner;Ljava/util/List;Landroid/widget/EditText;Landroid/widget/EditText;ZLandroid/content/Context;ILandroid/os/Bundle;)V

    .end local v3           #index:I
    .end local v4           #posOneClickTemp:I
    .end local v6           #addressEditText:Landroid/widget/EditText;
    .end local v8           #folderIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .end local p0
    const p1, 0x7f090019

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .end local p1
    .end local p2
    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 265
    .local p0, dialog:Landroid/app/AlertDialog;
    return-object p0

    .end local v7           #posOneClick:I
    .local v0, folderId:I
    .restart local v6       #addressEditText:Landroid/widget/EditText;
    .restart local v12       #view:Landroid/view/View;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p2
    :cond_4
    move v7, v0

    .end local v0           #folderId:I
    .local v7, folderId:I
    goto/16 :goto_0
.end method

.method public static setupCreateOrEditBookmarkFolderDialog(Landroid/content/Context;ZJLjava/lang/String;)Landroid/app/AlertDialog;
    .locals 9
    .parameter "context"
    .parameter "isEditFolder"
    .parameter "folderId"
    .parameter "originFolderTitle"

    .prologue
    .line 278
    if-eqz p1, :cond_1

    const v0, 0x7f090039

    move v2, v0

    .line 279
    .local v2, titleResId:I
    :goto_0
    const v0, 0x7f09003a

    .line 281
    .local v0, msgResId:I
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 282
    .local v1, folderTitle:Landroid/widget/EditText;
    if-eqz p1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/EditText;->setText([CII)V

    .line 284
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 286
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .end local v2           #titleResId:I
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f09000f

    new-instance v0, Lcom/android/browser/ui/BookmarkDialogs$2;

    .end local v0           #msgResId:I
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/ui/BookmarkDialogs$2;-><init>(Landroid/widget/EditText;Landroid/content/Context;ZJLjava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .end local p0
    const p1, 0x7f090019

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .end local p1
    .end local p2
    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 323
    .local p0, dialog:Landroid/app/AlertDialog;
    return-object p0

    .line 278
    .end local v1           #folderTitle:Landroid/widget/EditText;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p2
    :cond_1
    const v0, 0x7f09002f

    move v2, v0

    goto :goto_0
.end method

.method private static showToast(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 327
    const/4 v0, -0x1

    .line 328
    .local v0, messageResId:I
    packed-switch p1, :pswitch_data_0

    .line 363
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 364
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 366
    :cond_0
    return-void

    .line 330
    :pswitch_0
    const v0, 0x7f090030

    .line 331
    goto :goto_0

    .line 333
    :pswitch_1
    const v0, 0x7f09003a

    .line 334
    goto :goto_0

    .line 336
    :pswitch_2
    const v0, 0x7f090031

    .line 337
    goto :goto_0

    .line 339
    :pswitch_3
    const v0, 0x7f090111

    .line 340
    goto :goto_0

    .line 342
    :pswitch_4
    const v0, 0x7f090112

    .line 343
    goto :goto_0

    .line 345
    :pswitch_5
    const v0, 0x7f09001d

    .line 346
    goto :goto_0

    .line 348
    :pswitch_6
    const v0, 0x7f09001e

    .line 349
    goto :goto_0

    .line 351
    :pswitch_7
    const v0, 0x7f09001c

    .line 352
    goto :goto_0

    .line 354
    :pswitch_8
    const v0, 0x7f09001f

    .line 355
    goto :goto_0

    .line 357
    :pswitch_9
    const v0, 0x7f090113

    .line 358
    goto :goto_0

    .line 360
    :pswitch_a
    const v0, 0x7f090114

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
