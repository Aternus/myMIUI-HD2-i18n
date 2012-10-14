.class public Lcom/android/browser/controller/SuggestionAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/SuggestionAdapter$1;,
        Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;,
        Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;
    }
.end annotation


# static fields
.field private static final DELAY_LOAD_SUGGESTION_INTERVAL_MILLS:I = 0x5dc

.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.controller.SuggestionAdapter"

.field private static final MSG_DATA_KEY_CONSTRAINT:Ljava/lang/String; = "constraint"

.field private static final MSG_DATA_KEY_MODE:Ljava/lang/String; = "mode"

.field private static final MSG_ONLINE_DELAY_LOAD_SUGGESTION:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private mAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

.field private mHanlder:Landroid/os/Handler;

.field private mListener:Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;

.field private mOnlineLoadingAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;

.field private mTitleView:Lcom/android/browser/ui/TitleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/ui/TitleView;Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;Lcom/android/browser/ui/MiRenAutoCompleteTextView;)V
    .locals 3
    .parameter "c"
    .parameter "titleView"
    .parameter "listener"
    .parameter "autoCompleteTextView"

    .prologue
    const/4 v2, 0x0

    .line 111
    const v0, 0x7f03001c

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter;->mText:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/android/browser/controller/SuggestionAdapter;->mOnlineLoadingAsyncTask:Landroid/os/AsyncTask;

    .line 112
    iput-object p1, p0, Lcom/android/browser/controller/SuggestionAdapter;->context:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/browser/controller/SuggestionAdapter;->mTitleView:Lcom/android/browser/ui/TitleView;

    .line 114
    iput-object p3, p0, Lcom/android/browser/controller/SuggestionAdapter;->mListener:Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;

    .line 115
    new-instance v0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;-><init>(Lcom/android/browser/controller/SuggestionAdapter;Lcom/android/browser/controller/SuggestionAdapter$1;)V

    iput-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter;->mHanlder:Landroid/os/Handler;

    .line 116
    iput-object p4, p0, Lcom/android/browser/controller/SuggestionAdapter;->mAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/controller/SuggestionAdapter;)Lcom/android/browser/ui/TitleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter;->mTitleView:Lcom/android/browser/ui/TitleView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/controller/SuggestionAdapter;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter;->mAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/controller/SuggestionAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/browser/controller/SuggestionAdapter;->stopOnlineLoadingAsyncTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/controller/SuggestionAdapter;Landroid/os/AsyncTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/browser/controller/SuggestionAdapter;->assignAndExecuteNewAsyncTask(Landroid/os/AsyncTask;)V

    return-void
.end method

.method private declared-synchronized assignAndExecuteNewAsyncTask(Landroid/os/AsyncTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, onlineLoadingAsyncTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Landroid/database/Cursor;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mOnlineLoadingAsyncTask:Landroid/os/AsyncTask;

    .line 106
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private highLightText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 12
    .parameter "text"
    .parameter "sub"

    .prologue
    .line 309
    const/4 v6, 0x0

    .line 311
    .local v6, style:Landroid/text/SpannableStringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 312
    const/4 v9, 0x0

    .line 348
    :goto_0
    return-object v9

    .line 314
    :cond_0
    const/4 v3, 0x0

    .line 315
    .local v3, offset:I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, lowerCaseText:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, upperCaseText:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, lowerSub:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, upperSub:Ljava/lang/String;
    :cond_1
    :goto_1
    if-ltz v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 322
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 323
    .local v4, offset1:I
    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 324
    .local v5, offset2:I
    if-gez v4, :cond_3

    .line 326
    move v3, v5

    .line 336
    :goto_2
    if-ltz v3, :cond_1

    .line 338
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int v0, v3, v9

    .line 339
    .local v0, end:I
    if-nez v6, :cond_2

    .line 340
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .end local v6           #style:Landroid/text/SpannableStringBuilder;
    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 343
    .restart local v6       #style:Landroid/text/SpannableStringBuilder;
    :cond_2
    new-instance v9, Landroid/text/style/TextAppearanceSpan;

    iget-object v10, p0, Lcom/android/browser/controller/SuggestionAdapter;->context:Landroid/content/Context;

    const v11, 0x7f0b000a

    invoke-direct {v9, v10, v11}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v10, 0x21

    invoke-virtual {v6, v9, v3, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 344
    move v3, v0

    goto :goto_1

    .line 328
    .end local v0           #end:I
    :cond_3
    if-gez v5, :cond_4

    .line 330
    move v3, v4

    goto :goto_2

    .line 334
    :cond_4
    if-ge v4, v5, :cond_5

    move v3, v4

    :goto_3
    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    .end local v4           #offset1:I
    .end local v5           #offset2:I
    :cond_6
    move-object v9, v6

    .line 348
    goto :goto_0
.end method

.method private declared-synchronized stopOnlineLoadingAsyncTask()V
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter;->mOnlineLoadingAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter;->mOnlineLoadingAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter;->mOnlineLoadingAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/controller/SuggestionAdapter;->mOnlineLoadingAsyncTask:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 122
    const v9, 0x7f0d0065

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 123
    .local v2, mText1View:Landroid/widget/TextView;
    const v9, 0x7f0d0066

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 124
    .local v3, mText2View:Landroid/widget/TextView;
    const v9, 0x7f0d0064

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 126
    .local v1, mIcon1View:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/android/browser/controller/SuggestionAdapter;->mText:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/browser/model/MiRenUrlDataProvider;->handleKnownQueryPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, query:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 129
    const-string v9, "suggest_text_1"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, text1:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 131
    const-string v6, ""

    .line 133
    :cond_0
    invoke-direct {p0, v6, v4}, Lcom/android/browser/controller/SuggestionAdapter;->highLightText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 134
    .local v5, style:Landroid/text/SpannableStringBuilder;
    if-eqz v5, :cond_5

    .line 135
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .end local v5           #style:Landroid/text/SpannableStringBuilder;
    .end local v6           #text1:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 143
    const-string v9, "suggest_text_2_url"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, text2:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 145
    const-string v9, "suggest_text_2"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 146
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 148
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    invoke-direct {p0, v7, v4}, Lcom/android/browser/controller/SuggestionAdapter;->highLightText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 150
    .restart local v5       #style:Landroid/text/SpannableStringBuilder;
    if-eqz v5, :cond_6

    .line 151
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .end local v5           #style:Landroid/text/SpannableStringBuilder;
    .end local v7           #text2:Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 162
    const-string v9, "suggest_icon_1"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, iconString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 165
    .local v8, value:I
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    .end local v0           #iconString:Ljava/lang/String;
    .end local v8           #value:I
    :cond_4
    :goto_2
    return-void

    .line 138
    .restart local v5       #style:Landroid/text/SpannableStringBuilder;
    .restart local v6       #text1:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    .end local v6           #text1:Ljava/lang/String;
    .restart local v7       #text2:Ljava/lang/String;
    :cond_6
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 157
    .end local v5           #style:Landroid/text/SpannableStringBuilder;
    :cond_7
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    const-string v9, ""

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 167
    .end local v7           #text2:Ljava/lang/String;
    .restart local v0       #iconString:Ljava/lang/String;
    :cond_8
    const v9, 0x7f02004b

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 303
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "suggest_text_1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public fillIntentDataForSelectedItem(Landroid/content/Intent;I)V
    .locals 6
    .parameter "intent"
    .parameter "position"

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/browser/controller/SuggestionAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 384
    .local v1, c:Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-interface {v1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 390
    const-string v5, "suggest_intent_action"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, action:Ljava/lang/String;
    const-string v5, "suggest_intent_data"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, data:Ljava/lang/String;
    const-string v5, "suggest_intent_query"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, query:Ljava/lang/String;
    const-string v5, "suggest_intent_extra_data"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, extraData:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 396
    const-string v0, "android.intent.action.SEARCH"

    .line 397
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    if-eqz v2, :cond_3

    .line 400
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 402
    :cond_3
    if-eqz v4, :cond_4

    .line 403
    const-string v5, "query"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    :cond_4
    if-eqz v3, :cond_0

    .line 406
    const-string v5, "intent_extra_data_key"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const-string v2, ""

    .line 354
    invoke-virtual {p0}, Lcom/android/browser/controller/SuggestionAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 355
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 356
    const-string v1, ""

    move-object v1, v2

    .line 361
    :goto_0
    return-object v1

    .line 358
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    const-string v1, ""

    move-object v1, v2

    goto :goto_0

    .line 361
    :cond_1
    const-string v1, "suggest_text_1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 4
    .parameter "position"

    .prologue
    const-string v3, ""

    .line 367
    invoke-virtual {p0}, Lcom/android/browser/controller/SuggestionAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 368
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 369
    const-string v2, ""

    move-object v2, v3

    .line 378
    :goto_0
    return-object v2

    .line 371
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 372
    const-string v2, ""

    move-object v2, v3

    goto :goto_0

    .line 374
    :cond_1
    const-string v2, "suggest_intent_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, ret:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    const-string v2, "suggest_intent_query"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v2, v1

    .line 378
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 175
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 183
    .end local p0
    :goto_0
    return-object v2

    .line 176
    .restart local p0
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "com.android.browser.controller.SuggestionAdapter"

    const-string v3, "Search suggestions cursor threw exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    iget-object v2, p0, Lcom/android/browser/controller/SuggestionAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/browser/controller/SuggestionAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/browser/controller/SuggestionAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 181
    const v2, 0x7f0d0065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move-object v2, v1

    .line 183
    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/controller/SuggestionAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;Z)Landroid/database/Cursor;
    .locals 12
    .parameter "constraint"
    .parameter "calledByUI"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v11, 0x0

    const-string v1, "searchable_url LIKE ? OR title LIKE ?"

    .line 193
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v1}, Lcom/android/browser/ui/TitleView;->getMode()I

    move-result v8

    .line 194
    .local v8, mode:I
    if-eq v8, v2, :cond_0

    if-eq v8, v3, :cond_0

    if-eq v8, v5, :cond_0

    const/4 v1, 0x5

    if-eq v8, v1, :cond_0

    move-object v1, v11

    .line 289
    :goto_0
    return-object v1

    .line 200
    :cond_0
    if-eqz p2, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/android/browser/controller/SuggestionAdapter;->stopOnlineLoadingAsyncTask()V

    .line 205
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mListener:Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mListener:Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;

    invoke-interface {v1}, Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;->onStartLoadingNewSuggestion()V

    .line 208
    :cond_2
    if-nez p1, :cond_5

    const-string v1, ""

    move-object v10, v1

    .line 209
    .local v10, query:Ljava/lang/String;
    :goto_1
    iput-object v10, p0, Lcom/android/browser/controller/SuggestionAdapter;->mText:Ljava/lang/String;

    .line 211
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 212
    .local v4, selection:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v10, v4, v1

    .line 217
    const/4 v6, 0x0

    .line 218
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 221
    .local v0, cr:Landroid/content/ContentResolver;
    if-ne v8, v5, :cond_7

    .line 222
    if-eqz p2, :cond_6

    :try_start_1
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 224
    sget-object v1, Lcom/android/browser/model/MiRenUrlDataProvider;->MIRENRURL_HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "searchable_url LIKE ? OR title LIKE ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mHanlder:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 232
    .local v9, msg:Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "constraint"

    iget-object v3, p0, Lcom/android/browser/controller/SuggestionAdapter;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v9}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mHanlder:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    .end local v9           #msg:Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v6, :cond_a

    .line 288
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mListener:Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;

    if-eqz v1, :cond_4

    .line 289
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mListener:Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;

    invoke-interface {v1}, Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;->onFinishLoadingNewSuggestion()V

    :cond_4
    move-object v1, v6

    goto :goto_0

    .line 208
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v4           #selection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #query:Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    .line 237
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v4       #selection:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #query:Ljava/lang/String;
    :cond_6
    :try_start_3
    sget-object v1, Lcom/android/browser/model/MiRenUrlDataProvider;->MIRENRURL_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "searchable_url LIKE ? OR title LIKE ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_2

    .line 244
    :cond_7
    if-eq v8, v2, :cond_8

    const/4 v1, 0x5

    if-ne v8, v1, :cond_9

    .line 246
    :cond_8
    sget-object v1, Lcom/android/browser/model/MiRenUrlDataProvider;->MIRENRURL_HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "searchable_url LIKE ? OR title LIKE ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_2

    .line 252
    :cond_9
    if-ne v8, v3, :cond_3

    .line 253
    if-eqz p2, :cond_c

    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 255
    sget-object v1, Lcom/android/browser/model/MiRenUrlDataProvider;->MIRENRURL_SEARCH_THE_WEB_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "searchable_url LIKE ? OR title LIKE ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mHanlder:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 263
    .restart local v9       #msg:Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "constraint"

    iget-object v3, p0, Lcom/android/browser/controller/SuggestionAdapter;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v9}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mHanlder:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 282
    .end local v9           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 283
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "com.android.browser.controller.SuggestionAdapter"

    const-string v2, "Search suggestions query threw an exception."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 288
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_a
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mListener:Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;

    if-eqz v1, :cond_b

    .line 289
    iget-object v1, p0, Lcom/android/browser/controller/SuggestionAdapter;->mListener:Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;

    invoke-interface {v1}, Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;->onFinishLoadingNewSuggestion()V

    :cond_b
    move-object v1, v11

    goto/16 :goto_0

    .line 268
    :cond_c
    :try_start_5
    sget-object v1, Lcom/android/browser/model/MiRenUrlDataProvider;->MIRENRURL_SEARCH_ENGINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "searchable_url LIKE ? OR title LIKE ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v6

    goto/16 :goto_2

    .line 288
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v4           #selection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #query:Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/browser/controller/SuggestionAdapter;->mListener:Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;

    if-eqz v2, :cond_d

    .line 289
    iget-object v2, p0, Lcom/android/browser/controller/SuggestionAdapter;->mListener:Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;

    invoke-interface {v2}, Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;->onFinishLoadingNewSuggestion()V

    :cond_d
    throw v1
.end method
