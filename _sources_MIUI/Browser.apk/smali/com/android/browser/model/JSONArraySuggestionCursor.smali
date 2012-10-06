.class public Lcom/android/browser/model/JSONArraySuggestionCursor;
.super Landroid/database/AbstractCursor;
.source "JSONArraySuggestionCursor.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final COL_ICON_1:I = 0x3

.field public static final COL_ICON_2:I = 0x4

.field public static final COL_ID:I = 0x0

.field public static final COL_INTENT_DATA:I = 0x6

.field public static final COL_QUERY:I = 0x5

.field public static final COL_TEXT_1:I = 0x1

.field public static final COL_TEXT_2:I = 0x2


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field final mCharset:Ljava/lang/String;

.field final mIconResId:I

.field final mPopularity:Lorg/json/JSONArray;

.field final mPopularityStringPrefix:Ljava/lang/CharSequence;

.field final mSearchUrlPrefix:Ljava/lang/String;

.field final mSuggestions:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/model/JSONArraySuggestionCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "suggestions"
    .parameter "popularityStringPrefix"
    .parameter "iconResId"
    .parameter "searchUrlPrefix"
    .parameter "charset"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 36
    const-string v0, "JSONArraySuggestionCursor"

    iput-object v0, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->LOG_TAG:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mSuggestions:Lorg/json/JSONArray;

    .line 64
    iput-object p2, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPopularityStringPrefix:Ljava/lang/CharSequence;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPopularity:Lorg/json/JSONArray;

    .line 66
    iput p3, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mIconResId:I

    .line 67
    iput-object p4, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mSearchUrlPrefix:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mCharset:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "suggestions"
    .parameter "popularity"
    .parameter "iconResId"
    .parameter "searchUrlPrefix"
    .parameter "charset"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 36
    const-string v0, "JSONArraySuggestionCursor"

    iput-object v0, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->LOG_TAG:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mSuggestions:Lorg/json/JSONArray;

    .line 54
    iput-object p2, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPopularity:Lorg/json/JSONArray;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPopularityStringPrefix:Ljava/lang/CharSequence;

    .line 56
    iput p3, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mIconResId:I

    .line 57
    iput-object p4, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mSearchUrlPrefix:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mCharset:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/browser/model/JSONArraySuggestionCursor;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mSuggestions:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1
    .parameter "column"

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mIconResId:I

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    iget v0, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .parameter "column"

    .prologue
    const/4 v4, 0x0

    const-string v6, "Error"

    const-string v5, "JSONArraySuggestionCursor"

    .line 96
    iget v1, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v4

    .line 127
    :goto_0
    return-object v1

    .line 98
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 119
    :try_start_0
    const-string v1, "JSONArraySuggestionCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not supported column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 120
    goto :goto_0

    .line 100
    :pswitch_0
    iget v1, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPos:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v1, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mSuggestions:Lorg/json/JSONArray;

    iget v2, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPos:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v1, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPopularity:Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPopularity:Lorg/json/JSONArray;

    iget v2, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPos:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPopularityStringPrefix:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mSuggestions:Lorg/json/JSONArray;

    iget v3, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPos:I

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 110
    :pswitch_3
    iget v1, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mIconResId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 112
    :pswitch_4
    const-string v1, "0"

    goto :goto_0

    .line 114
    :pswitch_5
    iget-object v1, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mSearchUrlPrefix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mSearchUrlPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mSuggestions:Lorg/json/JSONArray;

    iget v3, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mPos:I

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/model/JSONArraySuggestionCursor;->mCharset:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    move-object v1, v4

    .line 117
    goto/16 :goto_0

    .line 122
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 123
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "JSONArraySuggestionCursor"

    const-string v1, "Error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 124
    goto/16 :goto_0

    .line 125
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 126
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "JSONArraySuggestionCursor"

    const-string v1, "Error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 127
    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
