.class public Lcom/meizu/widget/CustomPicker$ColumnData;
.super Ljava/lang/Object;
.source "CustomPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/CustomPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnData"
.end annotation


# instance fields
.field mColumnText:Ljava/lang/String;

.field mCount:I

.field mCurrentItem:I

.field mCycleEnabled:Z

.field mDataAdapter:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

.field mLineOffset:F

.field mOneScreenCount:I

.field mStartValue:I

.field mValidEnd:I

.field mValidStart:I


# direct methods
.method public constructor <init>(FIIIIIIZLjava/lang/String;)V
    .locals 1
    .parameter "lineOffset"
    .parameter "currentItem"
    .parameter "count"
    .parameter "oneScreenCount"
    .parameter "validStartItem"
    .parameter "validEndItem"
    .parameter "startValue"
    .parameter "cycleEnabled"
    .parameter "columnText"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    .line 74
    iput p1, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mLineOffset:F

    .line 75
    iput p2, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCurrentItem:I

    .line 76
    iput p3, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCount:I

    .line 77
    iput p4, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    .line 78
    iput p5, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidStart:I

    .line 79
    iput p6, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidEnd:I

    .line 80
    iput p7, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mStartValue:I

    .line 81
    iput-boolean p8, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCycleEnabled:Z

    .line 82
    iput-object p9, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mColumnText:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZLjava/lang/String;)V
    .locals 1
    .parameter "dataAdapter"
    .parameter "lineOffset"
    .parameter "currentItem"
    .parameter "count"
    .parameter "oneScreenCount"
    .parameter "validStartItem"
    .parameter "validEndItem"
    .parameter "cycleEnabled"
    .parameter "columnText"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    .line 100
    iput p2, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mLineOffset:F

    .line 101
    iput p3, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCurrentItem:I

    .line 102
    iput p4, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCount:I

    .line 103
    iput p5, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    .line 104
    iput p6, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidStart:I

    .line 105
    iput p7, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidEnd:I

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mStartValue:I

    .line 107
    iput-boolean p8, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCycleEnabled:Z

    .line 108
    iput-object p9, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mColumnText:Ljava/lang/String;

    .line 109
    return-void
.end method
