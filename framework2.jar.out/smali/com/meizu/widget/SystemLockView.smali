.class public Lcom/meizu/widget/SystemLockView;
.super Landroid/widget/LinearLayout;
.source "SystemLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/SystemLockView$1;,
        Lcom/meizu/widget/SystemLockView$UnlockPatternListener;,
        Lcom/meizu/widget/SystemLockView$dispalyTextMode;,
        Lcom/meizu/widget/SystemLockView$OnPanelListener;
    }
.end annotation


# static fields
.field private static final DELETE:I = 0x0

.field private static final DIGITALS:I = 0xc

.field private static final KEY_LEFT:Ljava/lang/String; = "left"

.field private static final KEY_RIGHT:Ljava/lang/String; = "right"

.field public static final MAX_CELL:I = 0x8

.field private static final NORMAL:I = 0x1

.field private static final OK:I = 0x1

.field private static final PASSWORD:I = 0x0

.field private static final SPECIAL:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private digitPanel:Landroid/view/View;

.field private mAppear:Landroid/view/animation/Animation;

.field private mBottomLayoutResId:I

.field private mCellCount:I

.field private mDisappear:Landroid/view/animation/Animation;

.field private mDispalyTextMode:I

.field private mEnableHapticFeedback:Z

.field private mIcons:[Landroid/graphics/drawable/Drawable;

.field private mInStealthMode:Z

.field private mInputTextButton:Landroid/widget/ImageView;

.field private mInputTextButtonStat:I

.field private mInputTextButtonVisible:Z

.field private mKeyPad:Lcom/meizu/widget/LockDigitView;

.field private mLeftButton:Landroid/widget/Button;

.field private mMaxCellLength:I

.field private mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

.field private mPassword:Ljava/lang/String;

.field private mPasswordTextView:Landroid/widget/TextView;

.field private mReturnBtn:Landroid/widget/ImageView;

.field private mRightButton:Landroid/widget/Button;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mSpecial:Lcom/meizu/widget/LockPasswordView;

.field private mTipTextView:Landroid/widget/TextView;

.field private mWindowRect:Landroid/graphics/Rect;

.field private topDisplayGroup:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "SystemLockView"

    sput-object v0, Lcom/meizu/widget/SystemLockView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/SystemLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/SystemLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 126
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    .line 128
    const v0, 0x1090119

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mDispalyTextMode:I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mAppear:Landroid/view/animation/Animation;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mDisappear:Landroid/view/animation/Animation;

    .line 134
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 151
    sget-object v0, Lcom/android/internal/R$styleable;->SystemLockView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 153
    .local v6, a:Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 155
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 157
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 160
    const/4 v0, 0x3

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    .line 162
    const/4 v0, 0x4

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mDispalyTextMode:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mDispalyTextMode:I

    .line 164
    const/4 v0, 0x5

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 167
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090118

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->digitPanel:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->digitPanel:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 171
    const v0, 0x1020426

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    .line 172
    const v0, 0x1020427

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 173
    const v0, 0x1020429

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    .line 174
    const v0, 0x102042a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    .line 175
    const v0, 0x102033e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    .line 176
    const v0, 0x102042c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    .line 177
    const v0, 0x102033f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockDigitView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    .line 178
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    new-instance v1, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;-><init>(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/SystemLockView$1;)V

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V

    .line 179
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setShowPointIfEmpty(Z)V

    .line 180
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080476

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 187
    const v0, 0x1020256

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/LockPasswordView;

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    .line 188
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 190
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 193
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/16 v0, 0xc

    if-ge v7, v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 193
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCircleSolidDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCircleHollowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const v1, 0x108047f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockDigitView;->setDefIcons([Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 203
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->setWidgetLayoutVisibility(Z)V

    .line 207
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updateWidgetLayout()V

    .line 208
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 210
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 211
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080952

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 216
    .local v8, tp:Landroid/text/TextPaint;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 217
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 218
    const v0, 0x10a0085

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mAppear:Landroid/view/animation/Animation;

    .line 220
    const v0, 0x10a0086

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mDisappear:Landroid/view/animation/Animation;

    .line 222
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyKeyLeftButtonClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyKeyRightButtonClick()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/widget/SystemLockView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->addCell(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/widget/SystemLockView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/widget/SystemLockView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellFhish()V

    return-void
.end method

.method private addCell(Ljava/lang/String;)V
    .locals 2
    .parameter "pressedDigit"

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 246
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 247
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 248
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellAdded()V

    .line 250
    return-void
.end method

.method private converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 5
    .parameter "cell"

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v2

    .line 421
    .local v2, r:I
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v0

    .line 422
    .local v0, c:I
    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, 0x1

    .line 423
    .local v1, num:I
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 424
    const-string v3, "left"

    .line 432
    .local v3, ret:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 425
    .end local v3           #ret:Ljava/lang/String;
    :cond_0
    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 426
    const-string v3, "0"

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 427
    .end local v3           #ret:Ljava/lang/String;
    :cond_1
    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    .line 428
    const-string v3, "right"

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 430
    .end local v3           #ret:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellAdded(Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method private notifyCellCleared()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellCleared(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method private notifyCellFhish()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellFhish(Ljava/lang/String;)V

    .line 302
    :cond_0
    return-void
.end method

.method private notifyInputTextButtonClick()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onInputTextButtonClick(Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method

.method private notifyKeyLeftButtonClick()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onKeyLeftButtonClick(Ljava/lang/String;)V

    .line 332
    :cond_0
    return-void
.end method

.method private notifyKeyRightButtonClick()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onKeyRightButtonClick(Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method private notifyLeftButtonClick()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onLeftButtonClick(Ljava/lang/String;)V

    .line 320
    :cond_0
    return-void
.end method

.method private notifyRightButtonClick()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onRightButtonClick(Ljava/lang/String;)V

    .line 314
    :cond_0
    return-void
.end method

.method private updateDeleteButtonStatu()V
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    if-nez v0, :cond_1

    .line 279
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePasswordTextView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mDispalyTextMode:I

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updateDeleteButtonStatu()V

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 275
    return-void

    .line 256
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 259
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 270
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateWidgetLayout()V
    .locals 4

    .prologue
    .line 225
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 227
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x102042b

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 228
    .local v1, widgetFrame:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 229
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    if-eqz v2, :cond_2

    .line 230
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 235
    :cond_0
    :goto_0
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    const v3, 0x1090119

    if-ne v2, v3, :cond_1

    .line 236
    const v2, 0x102042d

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    .line 237
    const v2, 0x102042e

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 238
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_1
    return-void

    .line 232
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearCell(Z)V
    .locals 4
    .parameter "clearAll"

    .prologue
    const/4 v3, 0x0

    .line 526
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    if-lez v2, :cond_0

    .line 527
    if-eqz p1, :cond_1

    .line 528
    const-string v2, ""

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 529
    iput v3, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 530
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 539
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 540
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellCleared()V

    .line 542
    :cond_0
    return-void

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 533
    .local v1, numString:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 535
    .local v0, newString:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 536
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 537
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->deleteLastCell()V

    goto :goto_0
.end method

.method public clearCellWithoutNotify(Z)V
    .locals 4
    .parameter "clearAll"

    .prologue
    const/4 v3, 0x0

    .line 548
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    if-lez v2, :cond_0

    .line 549
    if-eqz p1, :cond_1

    .line 550
    const-string v2, ""

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 551
    iput v3, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 552
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 561
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 563
    :cond_0
    return-void

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 555
    .local v1, numString:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 557
    .local v0, newString:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 558
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 559
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->deleteLastCell()V

    goto :goto_0
.end method

.method public getEnteredPassword()V
    .locals 0

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyKeyRightButtonClick()V

    .line 764
    return-void
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    .line 682
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 672
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 359
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 360
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_1

    .line 361
    invoke-virtual {p0, v1}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-ne v0, v1, :cond_2

    .line 363
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 365
    :cond_2
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 368
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyLeftButtonClick()V

    goto :goto_0

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 370
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyRightButtonClick()V

    goto :goto_0

    .line 372
    :cond_5
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mReturnBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyLeftButtonClick()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 342
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 343
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v1, :cond_0

    .line 344
    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 354
    :goto_0
    return v0

    .line 346
    :cond_0
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-ne v1, v0, :cond_1

    .line 347
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 350
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 354
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 381
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 382
    return-void
.end method

.method public setDispalyTextMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 734
    iput p1, p0, Lcom/meizu/widget/SystemLockView;->mDispalyTextMode:I

    .line 735
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 736
    return-void
.end method

.method public setHollowVisible(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 442
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .parameter "inStealthMode"

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 493
    return-void
.end method

.method public setInputBg(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 689
    const v1, 0x102033e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 690
    .local v0, widgetFrame:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 691
    if-nez p1, :cond_1

    .line 692
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setInputTextButtonStat(II)V
    .locals 3
    .parameter "stat"
    .parameter "resId"

    .prologue
    const/4 v0, 0x1

    .line 704
    if-nez p1, :cond_0

    .line 705
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 706
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108047e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    :goto_0
    return-void

    .line 708
    :cond_0
    if-ne p1, v0, :cond_1

    .line 709
    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 710
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080952

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 713
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 714
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setInputTextButtonVisibility(Z)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 722
    if-eqz p1, :cond_0

    .line 723
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 727
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    .line 728
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyLeftButtonVisibility(ZI)V
    .locals 6
    .parameter "visibility"
    .parameter "drawableRes"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 462
    if-eqz p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string v3, ""

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 469
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string v3, ""

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public setKeyPanelBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 627
    return-void
.end method

.method public setKeyRightButtonVisibility(ZI)V
    .locals 6
    .parameter "visibility"
    .parameter "drawableRes"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 449
    if-eqz p1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string v3, ""

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 456
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string v3, ""

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public setLeftButtonText(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 636
    :cond_0
    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_0
    return-void
.end method

.method public setLockDigitViewAspect(I)V
    .locals 1
    .parameter "aspect"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/LockDigitView;->setAspect(I)V

    .line 774
    return-void
.end method

.method public setMaxLen(I)V
    .locals 2
    .parameter "len"

    .prologue
    .line 517
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 518
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 519
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 520
    return-void
.end method

.method public setPanelBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 620
    return-void
.end method

.method public setPanelListener(Lcom/meizu/widget/SystemLockView$OnPanelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 569
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    .line 570
    return-void
.end method

.method public setPasswordTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    return-void
.end method

.method public setPasswordTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 584
    return-void
.end method

.method public setRightButtonText(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 654
    :cond_0
    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    :cond_0
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 503
    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 511
    return-void
.end method

.method public setTopDisplayGroupVisibility(ZZ)V
    .locals 2
    .parameter "visibility"
    .parameter "playAnimation"

    .prologue
    .line 743
    if-eqz p1, :cond_1

    .line 744
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 746
    if-eqz p2, :cond_0

    .line 747
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mAppear:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 753
    if-eqz p2, :cond_0

    .line 754
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mDisappear:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 590
    iput p1, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    .line 591
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updateWidgetLayout()V

    .line 592
    return-void
.end method

.method public setWidgetLayoutVisibility(Z)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 605
    const v1, 0x102042b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 606
    .local v0, widgetFrame:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 607
    if-eqz p1, :cond_1

    .line 608
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
