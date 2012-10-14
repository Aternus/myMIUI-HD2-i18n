.class public Lcom/android/mms/ui/RecipientsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "RecipientsAdapter.java"


# static fields
.field private static final PROJECTION_PHONE:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 75
    const v0, 0x7f030046

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 76
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 80
    return-void
.end method

.method private usefulAsDigits(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "cons"

    .prologue
    .line 214
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 216
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 217
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 219
    .local v0, c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 216
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_1
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x28

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x23

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    .line 226
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 229
    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_0

    .line 233
    :cond_3
    const/4 v3, 0x0

    .line 236
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    .line 137
    const v6, 0x7f0d00cd

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 138
    .local v2, name:Landroid/widget/TextView;
    const/4 v6, 0x5

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v6, 0x7f0d00d1

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 141
    .local v4, number:Landroid/widget/TextView;
    const/4 v6, 0x3

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const v6, 0x7f0d00c2

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, divider:Landroid/view/View;
    const v6, 0x7f0200c8

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, id:Ljava/lang/String;
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 148
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 149
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, nextId:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    const v6, 0x7f0200c6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 155
    .end local v3           #nextId:Ljava/lang/String;
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->isFirst()Z

    move-result v6

    if-nez v6, :cond_3

    .line 156
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 157
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, prevId:Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 159
    const-string v6, ""

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 163
    .end local v5           #prevId:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 13
    .parameter "cursor"

    .prologue
    .line 84
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, number:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 86
    const-string v10, ""

    .line 132
    :goto_0
    return-object v10

    .line 88
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 90
    const/4 v10, 0x5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, name:Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 93
    .local v8, type:I
    const/4 v10, 0x4

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, label:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10, v8, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 96
    .local v0, displayLabel:Ljava/lang/CharSequence;
    if-nez v4, :cond_2

    .line 97
    const-string v4, ""

    .line 109
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 110
    move-object v4, v5

    .line 113
    :cond_1
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 114
    .local v6, out:Landroid/text/SpannableString;
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 116
    .local v3, len:I
    new-instance v10, Landroid/text/Annotation;

    const-string v11, "name"

    invoke-direct {v10, v11, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x21

    invoke-virtual {v6, v10, v11, v3, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 118
    iget-object v10, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 119
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f030047

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 120
    .local v9, view:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v10, Lcom/android/mms/ui/WidgetDrawableSpan;

    iget-object v11, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v9}, Lcom/android/mms/ui/WidgetDrawableSpan;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v11, 0x0

    const/16 v12, 0x21

    invoke-virtual {v6, v10, v11, v3, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 124
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, person_id:Ljava/lang/String;
    new-instance v10, Landroid/text/Annotation;

    const-string v11, "person_id"

    invoke-direct {v10, v11, v7}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x21

    invoke-virtual {v6, v10, v11, v3, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 127
    new-instance v10, Landroid/text/Annotation;

    const-string v11, "label"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x21

    invoke-virtual {v6, v10, v11, v3, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 129
    new-instance v10, Landroid/text/Annotation;

    const-string v11, "number"

    invoke-direct {v10, v11, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x21

    invoke-virtual {v6, v10, v11, v3, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v10, v6

    .line 132
    goto/16 :goto_0

    .line 105
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #len:I
    .end local v6           #out:Landroid/text/SpannableString;
    .end local v7           #person_id:Ljava/lang/String;
    .end local v9           #view:Landroid/widget/TextView;
    :cond_2
    const-string v10, ", "

    const-string v11, " "

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 10
    .parameter "constraint"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    .line 167
    const-string v7, ""

    .line 168
    .local v7, phone:Ljava/lang/String;
    const/4 v6, 0x0

    .line 170
    .local v6, cons:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 173
    invoke-direct {p0, v6}, Lcom/android/mms/ui/RecipientsAdapter;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    const-string v7, ""

    .line 183
    :cond_0
    :goto_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 185
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 186
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_filter_phone"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const-string v0, "%s=%s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v4, "data2"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "times_contacted DESC,display_name,data2"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 205
    .local v8, phoneCursor:Landroid/database/Cursor;
    return-object v8

    .line 178
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #selection:Ljava/lang/String;
    .end local v8           #phoneCursor:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method
