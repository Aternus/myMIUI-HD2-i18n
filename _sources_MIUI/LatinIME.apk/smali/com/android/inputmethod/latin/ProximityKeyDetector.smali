.class Lcom/android/inputmethod/latin/ProximityKeyDetector;
.super Lcom/android/inputmethod/latin/KeyDetector;
.source "ProximityKeyDetector.java"


# static fields
.field private static final MAX_NEARBY_KEYS:I = 0xc


# instance fields
.field private mDistances:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/inputmethod/latin/KeyDetector;-><init>()V

    .line 27
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/ProximityKeyDetector;->mDistances:[I

    return-void
.end method


# virtual methods
.method public getKeyIndexAndNearbyCodes(II[I)I
    .locals 22
    .parameter "x"
    .parameter "y"
    .parameter "allKeys"

    .prologue
    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/ProximityKeyDetector;->getKeys()[Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v14

    .line 37
    .local v14, keys:[Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual/range {p0 .. p1}, Lcom/android/inputmethod/latin/ProximityKeyDetector;->getTouchX(I)I

    move-result v18

    .line 38
    .local v18, touchX:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/ProximityKeyDetector;->getTouchY(I)I

    move-result v19

    .line 39
    .local v19, touchY:I
    const/16 v17, -0x1

    .line 40
    .local v17, primaryIndex:I
    const/4 v5, -0x1

    .line 41
    .local v5, closestKey:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/ProximityKeyDetector;->mProximityThresholdSquare:I

    move/from16 v20, v0

    add-int/lit8 v6, v20, 0x1

    .line 42
    .local v6, closestKeyDist:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/ProximityKeyDetector;->mDistances:[I

    move-object v8, v0

    .line 43
    .local v8, distances:[I
    const v20, 0x7fffffff

    move-object v0, v8

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/ProximityKeyDetector;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v16

    .line 45
    .local v16, nearestKeyIndices:[I
    move-object/from16 v0, v16

    array-length v0, v0

    move v13, v0

    .line 46
    .local v13, keyCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v13, :cond_7

    .line 47
    aget v20, v16, v9

    aget-object v12, v14, v20

    .line 48
    .local v12, key:Landroid/inputmethodservice/Keyboard$Key;
    const/4 v7, 0x0

    .line 49
    .local v7, dist:I
    move-object v0, v12

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v10

    .line 50
    .local v10, isInside:Z
    if-eqz v10, :cond_0

    .line 51
    aget v17, v16, v9

    .line 54
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/ProximityKeyDetector;->mProximityCorrectOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object v0, v12

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/ProximityKeyDetector;->mProximityThresholdSquare:I

    move/from16 v20, v0

    move v0, v7

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    :cond_1
    if-eqz v10, :cond_4

    :cond_2
    move-object v0, v12

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 59
    move-object v0, v12

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move v15, v0

    .line 60
    .local v15, nCodes:I
    if-ge v7, v6, :cond_3

    .line 61
    move v6, v7

    .line 62
    aget v5, v16, v9

    .line 65
    :cond_3
    if-nez p3, :cond_5

    .line 46
    .end local v15           #nCodes:I
    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 67
    .restart local v15       #nCodes:I
    :cond_5
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    move-object v0, v8

    array-length v0, v0

    move/from16 v20, v0

    move v0, v11

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 68
    aget v20, v8, v11

    move/from16 v0, v20

    move v1, v7

    if-le v0, v1, :cond_6

    .line 70
    add-int v20, v11, v15

    move-object v0, v8

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v11

    sub-int v21, v21, v15

    move-object v0, v8

    move v1, v11

    move-object v2, v8

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    add-int v20, v11, v15

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v11

    sub-int v21, v21, v15

    move-object/from16 v0, p3

    move v1, v11

    move-object/from16 v2, p3

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    move-object v0, v12

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p3

    move v3, v11

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    add-int v20, v11, v15

    move-object v0, v8

    move v1, v11

    move/from16 v2, v20

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    .line 67
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 81
    .end local v7           #dist:I
    .end local v10           #isInside:Z
    .end local v11           #j:I
    .end local v12           #key:Landroid/inputmethodservice/Keyboard$Key;
    .end local v15           #nCodes:I
    :cond_7
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 82
    move/from16 v17, v5

    .line 84
    :cond_8
    return v17
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0xc

    return v0
.end method
