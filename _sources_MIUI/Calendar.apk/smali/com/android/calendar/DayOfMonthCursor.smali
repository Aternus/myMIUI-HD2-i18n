.class public Lcom/android/calendar/DayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "DayOfMonthCursor.java"


# instance fields
.field private mColumn:I

.field private mRow:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "weekStartDay"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 52
    invoke-virtual {p0, p3}, Lcom/android/calendar/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    .line 53
    invoke-virtual {p0, p3}, Lcom/android/calendar/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    .line 54
    return-void
.end method


# virtual methods
.method public down()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    move v0, v2

    .line 134
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/DayOfMonthCursor;->nextMonth()V

    .line 130
    iput v2, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    .line 131
    :goto_1
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    goto :goto_1

    .line 134
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedColumn()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/DayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_0
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    if-nez v0, :cond_1

    .line 83
    const/4 v0, -0x1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectedRow()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    return v0
.end method

.method public isSelected(II)Z
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public left()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 143
    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    if-nez v1, :cond_0

    .line 144
    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    .line 145
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    .line 150
    :goto_0
    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const/4 v1, 0x0

    .line 159
    :goto_1
    return v1

    .line 147
    :cond_0
    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/DayOfMonthCursor;->previousMonth()V

    .line 156
    invoke-virtual {p0}, Lcom/android/calendar/DayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 157
    .local v0, lastDay:I
    invoke-virtual {p0, v0}, Lcom/android/calendar/DayOfMonthCursor;->getRowOf(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/calendar/DayOfMonthCursor;->getColumnOf(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    move v1, v3

    .line 159
    goto :goto_1
.end method

.method public right()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 169
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    .line 170
    iput v2, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    .line 175
    :goto_0
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 186
    :goto_1
    return v0

    .line 172
    :cond_0
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/DayOfMonthCursor;->nextMonth()V

    .line 181
    iput v2, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    .line 182
    iput v2, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    .line 183
    :goto_2
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    goto :goto_2

    .line 186
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setSelectedDayOfMonth(I)V
    .locals 1
    .parameter "dayOfMonth"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/calendar/DayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/calendar/DayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    .line 91
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .locals 0
    .parameter "row"
    .parameter "col"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    .line 67
    iput p2, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    .line 68
    return-void
.end method

.method public up()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 103
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v2

    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    .line 106
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/DayOfMonthCursor;->previousMonth()V

    .line 110
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    .line 111
    :goto_1
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/android/calendar/DayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/DayOfMonthCursor;->mRow:I

    goto :goto_1

    :cond_1
    move v0, v2

    .line 114
    goto :goto_0
.end method
