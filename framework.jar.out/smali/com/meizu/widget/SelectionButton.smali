.class public Lcom/meizu/widget/SelectionButton;
.super Lcom/meizu/widget/GlowLinearLayout;
.source "SelectionButton.java"

# interfaces
.implements Lcom/meizu/widget/LayoutPositionState;


# static fields
.field private static final MAX_SHOWING_COUNT:I = 0x3e7


# instance fields
.field private mCurrentCount:I

.field private mIsAllSelected:Z

.field private mText:Landroid/widget/TextView;

.field private mTotalCount:I

.field private mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/SelectionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/SelectionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/GlowLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput v0, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    .line 70
    iput v0, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    .line 71
    iput-boolean v0, p0, Lcom/meizu/widget/SelectionButton;->mIsAllSelected:Z

    .line 32
    invoke-direct {p0}, Lcom/meizu/widget/SelectionButton;->initView()V

    .line 34
    new-instance v0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-direct {v0, p0}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/widget/SelectionButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    .line 35
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 47
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900c9

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 49
    const-string v2, "SelectionButton"

    const-string v3, "can not inflate the view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 55
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050226

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 60
    .local v1, minWidth:I
    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 62
    const v2, 0x1020014

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    .line 64
    invoke-direct {p0}, Lcom/meizu/widget/SelectionButton;->update()V

    .line 65
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method private update()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 140
    iget v4, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    iget v5, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    if-le v4, v5, :cond_0

    .line 141
    iget v4, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    iput v4, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    .line 143
    :cond_0
    const/4 v2, 0x0

    .line 145
    .local v2, infinitiVisable:Z
    iget v4, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    iget v5, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    if-ne v4, v5, :cond_3

    .line 146
    iput-boolean v6, p0, Lcom/meizu/widget/SelectionButton;->mIsAllSelected:Z

    .line 147
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    const-string v5, "All"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setActivated(Z)V

    .line 162
    :goto_0
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, background:Landroid/graphics/drawable/Drawable;
    instance-of v4, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_2

    .line 164
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    const v4, 0x1020451

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 166
    .local v1, infinitiDrawble:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 167
    if-eqz v2, :cond_1

    const/16 v3, 0xff

    :cond_1
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 170
    .end local v1           #infinitiDrawble:Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void

    .line 150
    :cond_3
    iget v4, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    const/16 v5, 0x3e7

    if-le v4, v5, :cond_4

    .line 152
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const/4 v2, 0x1

    .line 158
    :goto_1
    iput-boolean v3, p0, Lcom/meizu/widget/SelectionButton;->mIsAllSelected:Z

    .line 159
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 155
    :cond_4
    iget-object v4, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    iget v5, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentCount()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    return v0
.end method

.method public getSnapshotDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 187
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    .line 189
    .local v1, enableDrawingCache:Z
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 190
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 191
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 196
    :cond_0
    if-eqz v0, :cond_1

    .line 197
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 200
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #enableDrawingCache:Z
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    return v0
.end method

.method public isAllSelected()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/meizu/widget/SelectionButton;->mIsAllSelected:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/widget/SelectionButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 211
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAllSelected(Z)V
    .locals 1
    .parameter "select"

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 121
    iget v0, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    iput v0, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/SelectionButton;->update()V

    .line 128
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "background"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    invoke-direct {p0}, Lcom/meizu/widget/SelectionButton;->update()V

    .line 178
    :cond_0
    return-void
.end method

.method public setCurrentCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 99
    iget v0, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    if-eq v0, p1, :cond_0

    .line 100
    if-ltz p1, :cond_1

    .end local p1
    :goto_0
    iput p1, p0, Lcom/meizu/widget/SelectionButton;->mCurrentCount:I

    .line 101
    invoke-direct {p0}, Lcom/meizu/widget/SelectionButton;->update()V

    .line 103
    :cond_0
    return-void

    .line 100
    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/meizu/widget/SelectionButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public setLayoutPosition(I)V
    .locals 1
    .parameter "layoutPosition"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/meizu/widget/SelectionButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->setLayoutPosition(I)V

    .line 206
    return-void
.end method

.method public setTotalCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 80
    iget v0, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    if-eq v0, p1, :cond_0

    .line 81
    if-ltz p1, :cond_1

    .end local p1
    :goto_0
    iput p1, p0, Lcom/meizu/widget/SelectionButton;->mTotalCount:I

    .line 82
    invoke-direct {p0}, Lcom/meizu/widget/SelectionButton;->update()V

    .line 84
    :cond_0
    return-void

    .line 81
    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method
