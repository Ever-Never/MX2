.class public Lcom/meizu/widget/CustomPicker;
.super Landroid/widget/FrameLayout;
.source "CustomPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/CustomPicker$1;,
        Lcom/meizu/widget/CustomPicker$SavedState;,
        Lcom/meizu/widget/CustomPicker$DataAdapter;,
        Lcom/meizu/widget/CustomPicker$ColumnData;,
        Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;
    }
.end annotation


# instance fields
.field private mColumnCount:I

.field private mCurrentItems:[I

.field private mFocusedPosition:I

.field private mOnItemChangedListener:Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;

.field private mOneScreenCount:I

.field private mPickers:[Lcom/meizu/widget/ScrollTextView;

.field private mText:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/CustomPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;I[Lcom/meizu/widget/CustomPicker$ColumnData;)V
    .locals 2
    .parameter "context"
    .parameter "columnCount"
    .parameter "columnData"

    .prologue
    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/CustomPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    invoke-virtual {p0, p2, p3}, Lcom/meizu/widget/CustomPicker;->initPicker(I[Lcom/meizu/widget/CustomPicker$ColumnData;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/CustomPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/CustomPicker;->mOneScreenCount:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/CustomPicker;->mFocusedPosition:I

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/CustomPicker;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/CustomPicker;)Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mOnItemChangedListener:Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;

    return-object v0
.end method

.method private adjustLayout4FocusedPosition()V
    .locals 3

    .prologue
    .line 418
    const/4 v1, 0x3

    new-array v0, v1, [Landroid/widget/TextView;

    .line 419
    .local v0, columnTextViews:[Landroid/widget/TextView;
    const/4 v2, 0x0

    const v1, 0x1020387

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 420
    const/4 v2, 0x1

    const v1, 0x102038b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 421
    const/4 v2, 0x2

    const v1, 0x102038f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 422
    iget-object v1, p0, Lcom/meizu/widget/CustomPicker;->mText:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/CustomPicker;->adjustLayout4FocusedPosition([Landroid/widget/TextView;[Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method private adjustLayout4FocusedPosition([Landroid/widget/TextView;[Ljava/lang/String;)V
    .locals 11
    .parameter "textView"
    .parameter "text"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 387
    .local v3, resources:Landroid/content/res/Resources;
    const v6, 0x10501b6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 388
    .local v2, itemHeight:F
    const v6, 0x1020383

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 389
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 390
    .local v4, selectedBoxHieght:I
    int-to-float v6, v4

    sub-float v6, v2, v6

    const/high16 v7, 0x4000

    div-float v5, v6, v7

    .line 392
    .local v5, selectedBoxOffset:F
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 393
    .local v0, imageLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/meizu/widget/CustomPicker;->isDefaultFocusedPosition()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 394
    const/16 v6, 0x11

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 400
    :goto_0
    aget-object v6, p1, v8

    if-eqz v6, :cond_0

    aget-object v6, p2, v8

    if-eqz v6, :cond_0

    .line 401
    aget-object v6, p1, v8

    aget-object v7, p2, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    aget-object v6, p1, v8

    invoke-direct {p0, v6, v2}, Lcom/meizu/widget/CustomPicker;->setTextPadding(Landroid/widget/TextView;F)V

    .line 405
    :cond_0
    aget-object v6, p1, v9

    if-eqz v6, :cond_1

    aget-object v6, p2, v9

    if-eqz v6, :cond_1

    .line 406
    aget-object v6, p1, v9

    aget-object v7, p2, v9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    aget-object v6, p1, v9

    invoke-direct {p0, v6, v2}, Lcom/meizu/widget/CustomPicker;->setTextPadding(Landroid/widget/TextView;F)V

    .line 410
    :cond_1
    aget-object v6, p1, v10

    if-eqz v6, :cond_2

    aget-object v6, p2, v10

    if-eqz v6, :cond_2

    .line 411
    aget-object v6, p1, v10

    aget-object v7, p2, v10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    aget-object v6, p1, v10

    invoke-direct {p0, v6, v2}, Lcom/meizu/widget/CustomPicker;->setTextPadding(Landroid/widget/TextView;F)V

    .line 414
    :cond_2
    return-void

    .line 396
    :cond_3
    const/16 v6, 0x30

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 397
    iget v6, p0, Lcom/meizu/widget/CustomPicker;->mFocusedPosition:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private isDefaultFocusedPosition()Z
    .locals 2

    .prologue
    .line 439
    iget v0, p0, Lcom/meizu/widget/CustomPicker;->mFocusedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 440
    const/4 v0, 0x1

    .line 442
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTextPadding(Landroid/widget/TextView;F)V
    .locals 5
    .parameter "text"
    .parameter "itemHeight"

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/meizu/widget/CustomPicker;->isDefaultFocusedPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 435
    :goto_0
    return-void

    .line 430
    :cond_0
    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 431
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    sub-float v1, p2, v1

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 432
    .local v0, textOffset:F
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/CustomPicker;->mFocusedPosition:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentItem(I)I
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 291
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    if-lt p1, v0, :cond_1

    .line 292
    :cond_0
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getCurrentItems()[I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    return-object v0
.end method

.method public varargs initPicker(I[Lcom/meizu/widget/CustomPicker$ColumnData;)V
    .locals 15
    .parameter "columnCount"
    .parameter "columnData"

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 165
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 179
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "columnCount only be 1 or 2 or 3."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 167
    :pswitch_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x10900af

    invoke-static {v3, v4, p0}, Lcom/meizu/widget/CustomPicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 182
    :goto_0
    move/from16 v0, p1

    iput v0, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    .line 183
    iget v3, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    .line 184
    const/4 v3, 0x3

    new-array v10, v3, [Landroid/widget/TextView;

    .line 185
    .local v10, columnTextViews:[Landroid/widget/TextView;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/widget/CustomPicker;->mText:[Ljava/lang/String;

    .line 188
    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    const/4 v5, 0x0

    const v3, 0x1020386

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/ScrollTextView;

    aput-object v3, v4, v5

    .line 189
    const/4 v4, 0x0

    const v3, 0x1020387

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v10, v4

    .line 192
    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    const/4 v5, 0x1

    const v3, 0x102038a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/ScrollTextView;

    aput-object v3, v4, v5

    .line 193
    const/4 v4, 0x1

    const v3, 0x102038b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v10, v4

    .line 196
    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    const/4 v5, 0x2

    const v3, 0x102038e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/widget/ScrollTextView;

    aput-object v3, v4, v5

    .line 197
    const/4 v4, 0x2

    const v3, 0x102038f

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v10, v4

    .line 199
    const/4 v13, 0x0

    .line 200
    .local v13, index:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    iget v3, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    if-ge v12, v3, :cond_6

    .line 201
    iget-object v3, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    aget-object v1, v3, v12

    .line 202
    .local v1, picker:Lcom/meizu/widget/ScrollTextView;
    aget-object v14, v10, v12

    .line 204
    .local v14, text:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    if-eqz v14, :cond_2

    .line 205
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    array-length v3, v0

    if-lez v3, :cond_5

    const/4 v3, 0x0

    aget-object v3, p2, v3

    if-eqz v3, :cond_5

    .line 206
    aget-object v11, p2, v13

    .line 207
    .local v11, data:Lcom/meizu/widget/CustomPicker$ColumnData;
    if-nez v11, :cond_3

    .line 208
    add-int/lit8 v13, v13, -0x1

    .line 209
    aget-object v11, p2, v13

    .line 213
    :goto_2
    iget v3, p0, Lcom/meizu/widget/CustomPicker;->mOneScreenCount:I

    iget v4, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    if-ge v3, v4, :cond_1

    .line 214
    iget v3, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    iput v3, p0, Lcom/meizu/widget/CustomPicker;->mOneScreenCount:I

    .line 216
    :cond_1
    iget-object v3, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    if-eqz v3, :cond_4

    iget-object v2, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    .line 218
    .local v2, setData:Lcom/meizu/widget/ScrollTextView$IDataAdapter;
    :goto_3
    iget-object v3, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mColumnText:Ljava/lang/String;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v3, p0, Lcom/meizu/widget/CustomPicker;->mText:[Ljava/lang/String;

    iget-object v4, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mColumnText:Ljava/lang/String;

    aput-object v4, v3, v12

    .line 220
    iget v3, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mLineOffset:F

    iget v4, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mCurrentItem:I

    iget v5, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mCount:I

    iget v6, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    iget v7, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidStart:I

    iget v8, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidEnd:I

    iget-boolean v9, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mCycleEnabled:Z

    invoke-virtual/range {v1 .. v9}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 200
    .end local v2           #setData:Lcom/meizu/widget/ScrollTextView$IDataAdapter;
    .end local v11           #data:Lcom/meizu/widget/CustomPicker$ColumnData;
    :cond_2
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 171
    .end local v1           #picker:Lcom/meizu/widget/ScrollTextView;
    .end local v10           #columnTextViews:[Landroid/widget/TextView;
    .end local v12           #i:I
    .end local v13           #index:I
    .end local v14           #text:Landroid/widget/TextView;
    :pswitch_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x10900b0

    invoke-static {v3, v4, p0}, Lcom/meizu/widget/CustomPicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 175
    :pswitch_2
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x10900b1

    invoke-static {v3, v4, p0}, Lcom/meizu/widget/CustomPicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 211
    .restart local v1       #picker:Lcom/meizu/widget/ScrollTextView;
    .restart local v10       #columnTextViews:[Landroid/widget/TextView;
    .restart local v11       #data:Lcom/meizu/widget/CustomPicker$ColumnData;
    .restart local v12       #i:I
    .restart local v13       #index:I
    .restart local v14       #text:Landroid/widget/TextView;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 216
    :cond_4
    new-instance v2, Lcom/meizu/widget/CustomPicker$DataAdapter;

    iget v3, v11, Lcom/meizu/widget/CustomPicker$ColumnData;->mStartValue:I

    invoke-direct {v2, p0, v12, v3}, Lcom/meizu/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/widget/CustomPicker;II)V

    goto :goto_3

    .line 224
    .end local v11           #data:Lcom/meizu/widget/CustomPicker$ColumnData;
    :cond_5
    packed-switch v12, :pswitch_data_1

    goto :goto_4

    .line 226
    :pswitch_3
    const v3, 0x10403b3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    .line 227
    new-instance v3, Lcom/meizu/widget/CustomPicker$DataAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/meizu/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/widget/CustomPicker;II)V

    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, 0xd

    const/4 v6, 0x5

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;III)V

    goto :goto_4

    .line 231
    :pswitch_4
    const v3, 0x10403b5

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    .line 232
    new-instance v3, Lcom/meizu/widget/CustomPicker$DataAdapter;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/meizu/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/widget/CustomPicker;II)V

    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/16 v5, 0x3c

    const/4 v6, 0x5

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;III)V

    goto :goto_4

    .line 236
    :pswitch_5
    const v3, 0x10403b7

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    .line 237
    new-instance v3, Lcom/meizu/widget/CustomPicker$DataAdapter;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/meizu/widget/CustomPicker$DataAdapter;-><init>(Lcom/meizu/widget/CustomPicker;II)V

    iget-object v4, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    const/16 v5, 0x3c

    const/4 v6, 0x5

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;III)V

    goto :goto_4

    .line 244
    .end local v1           #picker:Lcom/meizu/widget/ScrollTextView;
    .end local v14           #text:Landroid/widget/TextView;
    :cond_6
    iget v3, p0, Lcom/meizu/widget/CustomPicker;->mFocusedPosition:I

    invoke-virtual {p0, v3}, Lcom/meizu/widget/CustomPicker;->setFocusedPosition(I)V

    .line 245
    iget-object v3, p0, Lcom/meizu/widget/CustomPicker;->mText:[Ljava/lang/String;

    invoke-direct {p0, v10, v3}, Lcom/meizu/widget/CustomPicker;->adjustLayout4FocusedPosition([Landroid/widget/TextView;[Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 248
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/meizu/widget/CustomPicker;->setEnabled(Z)V

    .line 250
    :cond_7
    return-void

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 224
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 316
    move-object v0, p1

    check-cast v0, Lcom/meizu/widget/CustomPicker$SavedState;

    .line 317
    .local v0, ss:Lcom/meizu/widget/CustomPicker$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 318
    invoke-virtual {v0}, Lcom/meizu/widget/CustomPicker$SavedState;->getCurrentItems()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/CustomPicker;->updateCurrentItems([I)V

    .line 319
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 310
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 311
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/meizu/widget/CustomPicker$SavedState;

    iget-object v2, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/meizu/widget/CustomPicker$SavedState;-><init>(Landroid/os/Parcelable;[ILcom/meizu/widget/CustomPicker$1;)V

    return-object v1
.end method

.method public setCurrentItem(II)V
    .locals 1
    .parameter "columnIndex"
    .parameter "currentItem"

    .prologue
    .line 302
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    if-ge p1, v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    aput p2, v0, p1

    .line 304
    iget-object v0, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/CustomPicker;->updateCurrentItems([I)V

    .line 306
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 270
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method public setFocusedPosition(I)V
    .locals 3
    .parameter "focusedPosition"

    .prologue
    .line 367
    iget v1, p0, Lcom/meizu/widget/CustomPicker;->mFocusedPosition:I

    if-eq p1, v1, :cond_4

    .line 368
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 369
    iput p1, p0, Lcom/meizu/widget/CustomPicker;->mFocusedPosition:I

    .line 377
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    if-ge v0, v1, :cond_3

    .line 378
    iget-object v1, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/meizu/widget/CustomPicker;->mFocusedPosition:I

    invoke-virtual {v1, v2}, Lcom/meizu/widget/ScrollTextView;->setFocusedPosition(I)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    .end local v0           #i:I
    :cond_0
    if-gez p1, :cond_1

    .line 371
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/widget/CustomPicker;->mFocusedPosition:I

    goto :goto_0

    .line 372
    :cond_1
    iget v1, p0, Lcom/meizu/widget/CustomPicker;->mOneScreenCount:I

    if-le p1, v1, :cond_2

    .line 373
    iget v1, p0, Lcom/meizu/widget/CustomPicker;->mOneScreenCount:I

    iput v1, p0, Lcom/meizu/widget/CustomPicker;->mFocusedPosition:I

    goto :goto_0

    .line 375
    :cond_2
    iput p1, p0, Lcom/meizu/widget/CustomPicker;->mFocusedPosition:I

    goto :goto_0

    .line 380
    .restart local v0       #i:I
    :cond_3
    invoke-direct {p0}, Lcom/meizu/widget/CustomPicker;->adjustLayout4FocusedPosition()V

    .line 382
    .end local v0           #i:I
    :cond_4
    return-void
.end method

.method public setOnCurrentItemChangedListener(Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;)V
    .locals 0
    .parameter "onItemChangedListener"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/meizu/widget/CustomPicker;->mOnItemChangedListener:Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;

    .line 281
    return-void
.end method

.method public varargs updateCurrentItems([I)V
    .locals 3
    .parameter "currentItems"

    .prologue
    .line 256
    if-nez p1, :cond_1

    .line 264
    :cond_0
    return-void

    .line 260
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/meizu/widget/CustomPicker;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/meizu/widget/CustomPicker;->mCurrentItems:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 262
    iget-object v1, p0, Lcom/meizu/widget/CustomPicker;->mPickers:[Lcom/meizu/widget/ScrollTextView;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/ScrollTextView;->refreshCurrent(I)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
