.class public Lcom/android/browser/model/ArrayListSuggestionCursor;
.super Landroid/database/AbstractCursor;
.source "ArrayListSuggestionCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
    }
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final COL_ICON_1:I = 0x4

.field public static final COL_ICON_2:I = 0x5

.field public static final COL_ID:I = 0x0

.field public static final COL_INTENT_ACTION:I = 0x9

.field public static final COL_INTENT_DATA:I = 0x7

.field public static final COL_INTENT_EXTRA:I = 0x8

.field public static final COL_QUERY:I = 0x6

.field public static final COL_TEXT_1:I = 0x1

.field public static final COL_TEXT_2:I = 0x2

.field public static final COL_TEXT_2_URL:I = 0x3


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 105
    const/16 v0, 0xa

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

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/model/ArrayListSuggestionCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;>;"
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 118
    const-string v0, "ArrayListSuggestionCursor"

    iput-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->LOG_TAG:Ljava/lang/String;

    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    .line 128
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/browser/model/ArrayListSuggestionCursor;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1
    .parameter "column"

    .prologue
    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    iget v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    return v0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    iget v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .parameter "column"

    .prologue
    const/4 v3, 0x0

    .line 142
    iget v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, v3

    .line 168
    .end local p0
    :goto_0
    return-object v0

    .line 145
    .restart local p0
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 167
    const-string v0, "ArrayListSuggestionCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 168
    goto :goto_0

    .line 147
    :pswitch_0
    iget v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-virtual {p0}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->getText1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-virtual {p0}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->getQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    .restart local p0
    :pswitch_3
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-virtual {p0}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->getText2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    .restart local p0
    :pswitch_4
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-virtual {p0}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->getText2Url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    .restart local p0
    :pswitch_5
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-virtual {p0}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->getIcon1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-virtual {p0}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->getIcon2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    .restart local p0
    :pswitch_7
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-virtual {p0}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->getIntentData()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 163
    .restart local p0
    :pswitch_8
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-virtual {p0}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->getIntentExtra()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 165
    .restart local p0
    :pswitch_9
    iget-object v0, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mSuggestions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/model/ArrayListSuggestionCursor;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;

    invoke-virtual {p0}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
