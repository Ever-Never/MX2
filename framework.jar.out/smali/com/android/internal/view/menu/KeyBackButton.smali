.class public Lcom/android/internal/view/menu/KeyBackButton;
.super Lcom/meizu/widget/GlowImageButton;
.source "KeyBackButton.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
.implements Lcom/meizu/widget/LayoutPositionState;


# instance fields
.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mDownTime:J

.field private mSupportsLongpress:Z

.field private mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/KeyBackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const v0, 0x1010470

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/KeyBackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/GlowImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mSupportsLongpress:Z

    .line 39
    new-instance v1, Lcom/android/internal/view/menu/KeyBackButton$1;

    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/KeyBackButton$1;-><init>(Lcom/android/internal/view/menu/KeyBackButton;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    .line 65
    sget-object v1, Lcom/android/internal/R$styleable;->KeyBackButton:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/KeyBackButton;->init(Landroid/content/Context;)V

    .line 73
    new-instance v1, Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-direct {v1, p0}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/KeyBackButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 78
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 86
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    .line 87
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchSlop:I

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mSupportsLongpress:Z

    .line 90
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 101
    iget-object v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-virtual {v6, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 106
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    return v5

    .line 109
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mDownTime:J

    .line 110
    invoke-virtual {p0, v5}, Lcom/meizu/widget/GlowImageButton;->setPressed(Z)V

    .line 111
    iget v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    if-eqz v6, :cond_1

    .line 112
    iget-wide v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mDownTime:J

    invoke-virtual {p0, v4, v4, v6, v7}, Lcom/android/internal/view/menu/KeyBackButton;->sendEvent(IIJ)V

    .line 117
    :goto_1
    iget-boolean v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 118
    iget-object v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 119
    iget-object v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_1

    .line 123
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 124
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 125
    .local v3, y:I
    iget v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchSlop:I

    neg-int v6, v6

    if-lt v2, v6, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_2

    iget v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchSlop:I

    neg-int v6, v6

    if-lt v3, v6, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/meizu/widget/GlowImageButton;->setPressed(Z)V

    goto :goto_0

    .line 131
    .end local v2           #x:I
    .end local v3           #y:I
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/meizu/widget/GlowImageButton;->setPressed(Z)V

    .line 132
    iget v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    if-eqz v4, :cond_3

    .line 133
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/view/menu/KeyBackButton;->sendEvent(II)V

    .line 135
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 136
    iget-object v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 140
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    .line 141
    .local v1, doIt:Z
    invoke-virtual {p0, v4}, Lcom/meizu/widget/GlowImageButton;->setPressed(Z)V

    .line 142
    iget v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    if-eqz v6, :cond_6

    .line 143
    if-eqz v1, :cond_5

    .line 144
    invoke-virtual {p0, v5, v4}, Lcom/android/internal/view/menu/KeyBackButton;->sendEvent(II)V

    .line 145
    invoke-virtual {p0, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 146
    invoke-virtual {p0, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 156
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 148
    :cond_5
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/view/menu/KeyBackButton;->sendEvent(II)V

    goto :goto_2

    .line 152
    :cond_6
    if-eqz v1, :cond_4

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_2

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method sendEvent(II)V
    .locals 2
    .parameter "action"
    .parameter "flags"

    .prologue
    .line 166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/view/menu/KeyBackButton;->sendEvent(IIJ)V

    .line 167
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 13
    .parameter "action"
    .parameter "flags"
    .parameter "when"

    .prologue
    .line 170
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    .line 172
    .local v7, repeatCount:I
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    iget-wide v1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mDownTime:J

    iget v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    or-int/lit8 v11, p2, 0x8

    const/16 v12, 0x101

    move-wide/from16 v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 176
    .local v0, ev:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 178
    return-void

    .line 170
    .end local v0           #ev:Landroid/view/KeyEvent;
    .end local v7           #repeatCount:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "backIcon"

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    iput-object p1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 183
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_0
    return-void
.end method

.method public setLayoutPosition(I)V
    .locals 1
    .parameter "layoutPosition"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchDelegate:Lcom/meizu/widget/SmartBarButtonTouchDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->setLayoutPosition(I)V

    .line 190
    return-void
.end method
