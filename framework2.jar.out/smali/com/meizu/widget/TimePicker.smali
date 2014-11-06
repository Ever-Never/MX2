.class public Lcom/meizu/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/TimePicker$1;,
        Lcom/meizu/widget/TimePicker$SavedState;,
        Lcom/meizu/widget/TimePicker$TimeAdapter;,
        Lcom/meizu/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# instance fields
.field private mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

.field private final mAmText:Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mFocusedPosition:I

.field private mForce24HourView:Z

.field private mHourPicker:Lcom/meizu/widget/ScrollTextView;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:I

.field private mMinutePicker:Lcom/meizu/widget/ScrollTextView;

.field private mOnTimeChangedListener:Lcom/meizu/widget/TimePicker$OnTimeChangedListener;

.field private final mPmText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput v5, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 60
    iput v5, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    .line 61
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 74
    const/4 v4, -0x1

    iput v4, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    .line 454
    iput-boolean v5, p0, Lcom/meizu/widget/TimePicker;->mForce24HourView:Z

    .line 177
    const/4 v4, 0x0

    invoke-virtual {p0, v6, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 179
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 181
    .local v0, cal:Ljava/util/Calendar;
    const/16 v4, 0xb

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 182
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    .line 183
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 192
    .local v1, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, dfsAmPm:[Ljava/lang/String;
    aget-object v4, v2, v5

    iput-object v4, p0, Lcom/meizu/widget/TimePicker;->mAmText:Ljava/lang/String;

    .line 194
    aget-object v4, v2, v6

    iput-object v4, p0, Lcom/meizu/widget/TimePicker;->mPmText:Ljava/lang/String;

    .line 196
    iget-object v4, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    iput v5, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    .line 198
    iget v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    if-lt v4, v7, :cond_0

    .line 199
    iget v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v4, v4, -0xc

    iput v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 200
    iput v6, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/TimePicker;->inflateLayout()V

    .line 204
    return-void

    .line 184
    .end local v1           #dfs:Ljava/text/DateFormatSymbols;
    .end local v2           #dfsAmPm:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 185
    .local v3, e:Ljava/lang/Exception;
    iput v7, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 186
    const/16 v4, 0x1e

    iput v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    .line 187
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/widget/TimePicker;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$402(Lcom/meizu/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$502(Lcom/meizu/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/widget/TimePicker;)Lcom/meizu/widget/TimePicker$OnTimeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/widget/TimePicker$OnTimeChangedListener;

    return-object v0
.end method

.method private adjustLayout4FocusedPosition()V
    .locals 9

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 494
    .local v3, resources:Landroid/content/res/Resources;
    const v7, 0x10501b6

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 495
    .local v2, itemHeight:F
    const v7, 0x1020383

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 496
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 497
    .local v4, selectedBoxHieght:I
    int-to-float v7, v4

    sub-float v7, v2, v7

    const/high16 v8, 0x4000

    div-float v5, v7, v8

    .line 499
    .local v5, selectedBoxOffset:F
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 500
    .local v0, imageLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/meizu/widget/TimePicker;->isDefaultFocusedPosition()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 501
    const/16 v7, 0x11

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 507
    :goto_0
    const v7, 0x1020387

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 508
    .local v6, text:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 509
    const v7, 0x10405c7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 510
    invoke-direct {p0, v6, v2}, Lcom/meizu/widget/TimePicker;->setTextPadding(Landroid/widget/TextView;F)V

    .line 513
    :cond_0
    const v7, 0x102038b

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #text:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 514
    .restart local v6       #text:Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 515
    const v7, 0x10405c8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 516
    invoke-direct {p0, v6, v2}, Lcom/meizu/widget/TimePicker;->setTextPadding(Landroid/widget/TextView;F)V

    .line 518
    :cond_1
    return-void

    .line 503
    .end local v6           #text:Landroid/widget/TextView;
    :cond_2
    const/16 v7, 0x30

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 504
    iget v7, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private inflateLayout()V
    .locals 10

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x10900b0

    invoke-static {v0, v1, p0}, Lcom/meizu/widget/TimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 214
    const v0, 0x1020387

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 215
    .local v9, text:Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 216
    const v0, 0x10405c7

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 219
    :cond_1
    const v0, 0x102038b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #text:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 220
    .restart local v9       #text:Landroid/widget/TextView;
    if-eqz v9, :cond_2

    .line 221
    const v0, 0x10405c8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 224
    :cond_2
    const v0, 0x1020386

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    .line 225
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/widget/TimePicker;I)V

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    const/16 v4, 0x18

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 227
    const v0, 0x102038a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    .line 228
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/widget/TimePicker;I)V

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    const/16 v4, 0x3c

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0x3b

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    .line 232
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->setFocusedPosition(I)V

    .line 258
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->setEnabled(Z)V

    .line 261
    :cond_3
    return-void

    .line 234
    .end local v9           #text:Landroid/widget/TextView;
    :cond_4
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x10900b1

    invoke-static {v0, v1, p0}, Lcom/meizu/widget/TimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 236
    const v0, 0x1020387

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 237
    .restart local v9       #text:Landroid/widget/TextView;
    if-eqz v9, :cond_5

    .line 238
    const v0, 0x10405c7

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 241
    :cond_5
    const v0, 0x102038b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #text:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 242
    .restart local v9       #text:Landroid/widget/TextView;
    if-eqz v9, :cond_6

    .line 243
    const v0, 0x10405c8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 246
    :cond_6
    const v0, 0x1020386

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    .line 247
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/widget/TimePicker;I)V

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    const/16 v4, 0xc

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 249
    const v0, 0x102038a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    .line 250
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/widget/TimePicker;I)V

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    const/16 v4, 0x3c

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0x3b

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 252
    const v0, 0x102038e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    .line 253
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/widget/TimePicker;I)V

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 255
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->setFocusedPosition(I)V

    goto/16 :goto_0
.end method

.method private isDefaultFocusedPosition()Z
    .locals 2

    .prologue
    .line 534
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 535
    const/4 v0, 0x1

    .line 537
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
    .line 522
    invoke-direct {p0}, Lcom/meizu/widget/TimePicker;->isDefaultFocusedPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 530
    :goto_0
    return-void

    .line 525
    :cond_0
    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 526
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    sub-float v1, p2, v1

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 527
    .local v0, textOffset:F
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

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
.method public force24HourView(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/meizu/widget/TimePicker;->mForce24HourView:Z

    .line 462
    if-eqz p1, :cond_0

    .line 463
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 465
    :cond_0
    return-void
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 375
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 377
    :cond_0
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    if-nez v0, :cond_1

    .line 378
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_1
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 355
    move-object v0, p1

    check-cast v0, Lcom/meizu/widget/TimePicker$SavedState;

    .line 356
    .local v0, ss:Lcom/meizu/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 357
    #getter for: Lcom/meizu/widget/TimePicker$SavedState;->mHour:I
    invoke-static {v0}, Lcom/meizu/widget/TimePicker$SavedState;->access$900(Lcom/meizu/widget/TimePicker$SavedState;)I

    move-result v1

    #getter for: Lcom/meizu/widget/TimePicker$SavedState;->mMinute:I
    invoke-static {v0}, Lcom/meizu/widget/TimePicker$SavedState;->access$1000(Lcom/meizu/widget/TimePicker$SavedState;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/meizu/widget/TimePicker;->update(IIZ)V

    .line 358
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 349
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 350
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/meizu/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/meizu/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/meizu/widget/TimePicker$1;)V

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 434
    if-nez p1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 440
    .local v1, is24Hour:Z
    :try_start_0
    iget-boolean v2, p0, Lcom/meizu/widget/TimePicker;->mForce24HourView:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 441
    const/4 v1, 0x1

    .line 449
    :goto_1
    iget-object v2, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 450
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 443
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 3
    .parameter "currentHour"

    .prologue
    .line 406
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    iget-object v2, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/widget/TimePicker;->update(IIZ)V

    goto :goto_0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "currentMinute"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 427
    .local v0, hour:I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/widget/TimePicker;->update(IIZ)V

    .line 428
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    :cond_0
    return-void
.end method

.method public setFocusedPosition(I)V
    .locals 2
    .parameter "focusedPosition"

    .prologue
    const/4 v1, 0x4

    .line 474
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 475
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    .line 483
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ScrollTextView;->setFocusedPosition(I)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ScrollTextView;->setFocusedPosition(I)V

    .line 487
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ScrollTextView;->setFocusedPosition(I)V

    .line 488
    invoke-direct {p0}, Lcom/meizu/widget/TimePicker;->adjustLayout4FocusedPosition()V

    .line 489
    return-void

    .line 476
    :cond_1
    if-gez p1, :cond_2

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    goto :goto_0

    .line 478
    :cond_2
    if-le p1, v1, :cond_3

    .line 479
    iput v1, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    goto :goto_0

    .line 481
    :cond_3
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mFocusedPosition:I

    goto :goto_0
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "is24HourView"

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 421
    .local v0, hour:I
    iget v1, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/widget/TimePicker;->update(IIZ)V

    .line 422
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/meizu/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .parameter "onTimeChangedListener"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/meizu/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/widget/TimePicker$OnTimeChangedListener;

    .line 368
    return-void
.end method

.method public update(IIZ)V
    .locals 2
    .parameter "hour"
    .parameter "min"
    .parameter "is24hour"

    .prologue
    .line 264
    if-eqz p3, :cond_3

    .line 265
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 274
    :cond_0
    :goto_0
    iput p2, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    .line 276
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p3, v0, :cond_1

    .line 277
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 278
    invoke-direct {p0}, Lcom/meizu/widget/TimePicker;->inflateLayout()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ScrollTextView;->refreshCurrent(I)V

    .line 282
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ScrollTextView;->refreshCurrent(I)V

    .line 283
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ScrollTextView;->refreshCurrent(I)V

    .line 286
    :cond_2
    return-void

    .line 267
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    .line 268
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 269
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 270
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, -0xc

    iput v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 271
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    goto :goto_0
.end method
