.class public Lcom/meizu/widget/RoundCornerContactBadge;
.super Landroid/widget/ImageView;
.source "RoundCornerContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/RoundCornerContactBadge$2;,
        Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;,
        Lcom/meizu/widget/RoundCornerContactBadge$IconType;,
        Lcom/meizu/widget/RoundCornerContactBadge$BorderType;
    }
.end annotation


# static fields
.field static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final ID_COLUMN_INDEX:I = 0x0

.field static final LOOKUPKEY_COLUMN_INDEX:I = 0x1

.field static final PHONE_COLUMN_INDEX:I = 0x2

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "RoundCornerContactBadge"

.field private static final TOKEN_CONTACT_LOOKUP_AND_TRIGGER:I = 0x4

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3

.field private static sAction:Ljava/lang/Runnable;

.field private static final sBorderTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

.field private static final sIconTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field private static sStartActivity:Z

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private mBadgeText:Ljava/lang/String;

.field private mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeTextPaint:Landroid/graphics/Paint;

.field private mBadgeTextShadowColor:I

.field private mBadgeTextShadowRadius:I

.field private mBadgeTextSize:I

.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mContactEmail:Ljava/lang/String;

.field private mContactId:J

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mCornerRadius:F

.field private mCoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDstContactBmp:Landroid/graphics/Bitmap;

.field private mExtras:Landroid/os/Bundle;

.field private mHasShadow:Z

.field private mIconText:Ljava/lang/CharSequence;

.field private mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field private mIsClickToCall:Z

.field private mIsUseStyle:Z

.field private mListCallIcon:Landroid/graphics/drawable/Drawable;

.field private mLongClick:Z

.field private mOffsetBottom:I

.field private mOffsetRight:I

.field private mOldContactId:J

.field private mOldExtras:Landroid/os/Bundle;

.field private mOldPhone:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

.field private mRectView:Landroid/graphics/Rect;

.field private mRecycle:Z

.field private mRecycleOnDetached:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSmallIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUseCallIcon:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    sput-boolean v3, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    .line 135
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 140
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 146
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    const-string v1, "phone_number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 194
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_NULL:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_EDIT_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_VIEW_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sBorderTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 203
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_NULL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_CALLOUT:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_CALLIN:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_MISSED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_REFUSED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RINGONCE:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_VOICEMAIL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sIconTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 1407
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$1;

    invoke-direct {v0}, Lcom/meizu/widget/RoundCornerContactBadge$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sAction:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/RoundCornerContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/RoundCornerContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 226
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 70
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 72
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 73
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 75
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 76
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 77
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 78
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 79
    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    .line 84
    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    .line 85
    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mUseCallIcon:Z

    .line 86
    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z

    .line 116
    iput-boolean v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHasShadow:Z

    .line 123
    iput-boolean v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycleOnDetached:Z

    .line 228
    sget-object v3, Lcom/android/internal/R$styleable;->RoundCornerContactBadge:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 231
    .local v0, a:Landroid/content/res/TypedArray;
    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_NULL:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    iget v3, v3, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->borderTypeInt:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 235
    .local v1, borderTypeIndex:I
    const/4 v3, 0x2

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_NULL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    iget v4, v4, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->iconTypeInt:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 239
    .local v2, iconTypeIndex:I
    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    .line 242
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge;->sBorderTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/meizu/widget/RoundCornerContactBadge;->setBorderType(Lcom/meizu/widget/RoundCornerContactBadge$BorderType;)V

    .line 245
    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge;->sIconTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/meizu/widget/RoundCornerContactBadge;->setIconType(Lcom/meizu/widget/RoundCornerContactBadge$IconType;)V

    .line 247
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->init()V

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/meizu/widget/RoundCornerContactBadge;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/meizu/widget/RoundCornerContactBadge;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/RoundCornerContactBadge;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/RoundCornerContactBadge;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/RoundCornerContactBadge;->queryPhoneNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/RoundCornerContactBadge;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->makeCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-boolean p0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    return p0
.end method

.method static synthetic access$700()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->goContactDetail(Landroid/net/Uri;)V

    return-void
.end method

.method private drawBadgeText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 11
    .parameter "canvas"
    .parameter "rect"

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x0

    .line 915
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 916
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080514

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    .line 921
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 922
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 925
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_1

    .line 926
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    .line 927
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 928
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 929
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 930
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextShadowRadius:I

    int-to-float v7, v7

    iget v8, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextShadowColor:I

    invoke-virtual {v6, v7, v9, v9, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 934
    :cond_1
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 935
    iget v6, p2, Landroid/graphics/Rect;->left:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    .line 936
    .local v0, baseX:F
    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v1, v6

    .line 937
    .local v1, baseY:F
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 938
    .local v2, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v3, v6, v7

    .line 939
    .local v3, fontTotalHeight:F
    div-float v6, v3, v10

    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v5, v6, v7

    .line 940
    .local v5, offY:F
    add-float v6, v1, v5

    sub-float v4, v6, v10

    .line 941
    .local v4, newY:F
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeText:Ljava/lang/String;

    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 942
    return-void
.end method

.method private drawContactDrawable()V
    .locals 15

    .prologue
    .line 780
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 781
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v6, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_1

    .line 842
    .end local v9           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 786
    .restart local v9       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-direct {p0, v9}, Lcom/meizu/widget/RoundCornerContactBadge;->isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 791
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 792
    .local v11, dstWidth:I
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 793
    .local v10, dstHeight:I
    iget-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    if-eqz v6, :cond_2

    .line 794
    iget v11, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 795
    iget v10, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 798
    :cond_2
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 799
    .local v0, contactBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 800
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 801
    .local v4, height:I
    const/4 v1, 0x0

    .line 802
    .local v1, cropLeft:I
    const/4 v2, 0x0

    .line 804
    .local v2, cropTop:I
    if-eq v3, v4, :cond_3

    .line 806
    if-le v4, v3, :cond_7

    .line 807
    sub-int v6, v4, v3

    div-int/lit8 v2, v6, 0x2

    .line 808
    move v4, v3

    .line 816
    :cond_3
    :goto_1
    int-to-float v6, v11

    int-to-float v14, v3

    div-float v13, v6, v14

    .line 817
    .local v13, scaleWidth:F
    int-to-float v6, v10

    int-to-float v14, v4

    div-float v12, v6, v14

    .line 818
    .local v12, scaleHeight:F
    move-object v7, v0

    .line 821
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/high16 v6, 0x3f80

    cmpl-float v6, v13, v6

    if-nez v6, :cond_4

    const/high16 v6, 0x3f80

    cmpl-float v6, v12, v6

    if-nez v6, :cond_4

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 822
    :cond_4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 823
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 824
    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 828
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_5
    invoke-direct {p0, v7}, Lcom/meizu/widget/RoundCornerContactBadge;->getRoundCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 829
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v14, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-direct {v8, v6, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 830
    .local v8, contactIcon:Landroid/graphics/drawable/Drawable;
    invoke-super {p0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 832
    if-eq v7, v0, :cond_6

    .line 833
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 834
    const/4 v7, 0x0

    .line 837
    :cond_6
    iget-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    if-eqz v6, :cond_0

    .line 838
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 839
    const/4 v0, 0x0

    .line 840
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    goto :goto_0

    .line 810
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #contactIcon:Landroid/graphics/drawable/Drawable;
    .end local v12           #scaleHeight:F
    .end local v13           #scaleWidth:F
    :cond_7
    sub-int v6, v3, v4

    div-int/lit8 v1, v6, 0x2

    .line 811
    move v3, v4

    goto :goto_1
.end method

.method private drawSmallIcon(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 881
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 882
    iget v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetBottom:I

    sub-int v8, v1, v3

    .line 884
    .local v8, offset:I
    new-instance v9, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v8

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v8

    invoke-direct {v9, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 888
    .local v9, rectIc:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 889
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 892
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    if-ne v1, v3, :cond_1

    .line 895
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 896
    .local v2, textPaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v2, Landroid/text/TextPaint;->density:F

    .line 897
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 899
    const/high16 v1, 0x41a0

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 900
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 904
    .local v0, textLayout:Landroid/text/StaticLayout;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 905
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 907
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v10, v10, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 908
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 909
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 912
    .end local v0           #textLayout:Landroid/text/StaticLayout;
    .end local v2           #textPaint:Landroid/text/TextPaint;
    .end local v8           #offset:I
    .end local v9           #rectIc:Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method private getDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 373
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge$2;->$SwitchMap$com$meizu$widget$RoundCornerContactBadge$BorderType:[I

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080510

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 375
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080518

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getRoundCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 846
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 848
    .local v1, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 849
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v9, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 850
    .local v3, rect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 852
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 853
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080513

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 855
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v5, :cond_0

    .line 856
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 857
    .local v2, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 861
    .end local v2           #paint:Landroid/graphics/Paint;
    :cond_0
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_1

    .line 862
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    .line 865
    :cond_1
    iget v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_2

    .line 866
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 867
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 868
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 869
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 877
    :goto_0
    return-object v1

    .line 871
    :cond_2
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 872
    iget v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    iget v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 873
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 874
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private goContactDetail(Landroid/net/Uri;)V
    .locals 4
    .parameter "lookupUri"

    .prologue
    .line 1226
    const/4 v1, 0x0

    .line 1227
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1229
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_5

    .line 1231
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1232
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1234
    const-string v2, "phone"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1257
    :cond_1
    const-string v2, "com.android.contacts.extra.TITLE_EXTRA"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1258
    const-string v2, "com.android.contacts.extra.SUB_TITLE_EXTRA"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1260
    :cond_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1262
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1263
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_3

    .line 1264
    const/high16 v2, 0x5000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1266
    :cond_3
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1267
    return-void

    .line 1236
    :cond_4
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1238
    const-string v2, "email"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1243
    :cond_5
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1244
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1247
    const-string v2, "phone"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1249
    :cond_6
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1251
    const-string v2, "email"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 251
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 252
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;-><init>(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    .line 253
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 257
    iget v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 262
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080516

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 271
    return-void
.end method

.method private isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .parameter "drawable"

    .prologue
    .line 385
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeCall(Ljava/lang/String;)V
    .locals 11
    .parameter "phone"

    .prologue
    .line 1146
    sget-object v6, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1147
    :try_start_0
    sget-boolean v5, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    if-eqz v5, :cond_0

    .line 1148
    monitor-exit v6

    .line 1223
    :goto_0
    return-void

    .line 1151
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "-2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "-3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1155
    const/4 v1, 0x0

    .line 1157
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z

    if-eqz v5, :cond_a

    .line 1158
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    const/4 v4, 0x0

    .line 1160
    .local v4, telUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1162
    .local v2, prefixNumber:Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "prefix_dialing_number"

    invoke-static {v5, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 1169
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1170
    const-string v5, "tel"

    const/4 v7, 0x0

    invoke-static {v5, p1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1171
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1199
    .end local v2           #prefixNumber:Ljava/lang/String;
    .end local v4           #telUri:Landroid/net/Uri;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_1
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1200
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1201
    const-string v5, "android.telephony.HAS_CALLERINFO_FOR_MOCALL"

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1202
    const-string v5, "android.telephony.PERSON_ID_FOR_MOCALL"

    iget-wide v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    invoke-virtual {v1, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1210
    :cond_1
    :goto_2
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/meizu/internal/telephony/SpecialCharSequenceMgr;->isSpecialCharSequenceIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1211
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v7, "android.intent.action.CALL"

    if-eq v5, v7, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    if-ne v5, v7, :cond_3

    .line 1213
    :cond_2
    const/4 v5, 0x1

    sput-boolean v5, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    .line 1214
    sget-object v5, Lcom/meizu/widget/RoundCornerContactBadge;->sAction:Ljava/lang/Runnable;

    const-wide/16 v7, 0xbb8

    invoke-virtual {p0, v5, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1217
    :cond_3
    const/high16 v5, 0x1420

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1219
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1222
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1165
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #prefixNumber:Ljava/lang/String;
    .restart local v4       #telUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1166
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    monitor-exit v6

    goto/16 :goto_0

    .line 1173
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    const-string v3, ""

    .line 1174
    .local v3, tel:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1175
    move-object v3, p1

    .line 1182
    :goto_3
    const-string v5, "tel"

    const/4 v7, 0x0

    invoke-static {v5, v3, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1183
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1185
    :cond_6
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 1176
    :cond_7
    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "00"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1179
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1187
    :cond_9
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.CALL"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 1191
    .end local v2           #prefixNumber:Ljava/lang/String;
    .end local v3           #tel:Ljava/lang/String;
    .end local v4           #telUri:Landroid/net/Uri;
    :cond_a
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1193
    :cond_b
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 1195
    :cond_c
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.CALL"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 1204
    :cond_d
    const-string v5, "android.telephony.HAS_CALLERINFO_FOR_MOCALL"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1205
    iget-wide v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_1

    .line 1206
    const-string v5, "android.telephony.PERSON_ID_FOR_MOCALL"

    iget-wide v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    invoke-virtual {v1, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method private queryPhoneNumber(J)Ljava/lang/String;
    .locals 12
    .parameter "contactId"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1270
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1271
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1273
    .local v1, dataUri:Landroid/net/Uri;
    const/4 v9, 0x1

    .line 1274
    .local v9, phoneNumberIndex:I
    const/4 v7, 0x0

    .line 1275
    .local v7, phone:Ljava/lang/String;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "data1"

    aput-object v3, v2, v10

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1279
    .local v8, phoneCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1280
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1281
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v10, :cond_1

    .line 1282
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    const-string v0, "is_super_primary"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1292
    :cond_1
    if-eqz v8, :cond_2

    .line 1293
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1296
    :cond_2
    return-object v7
.end method

.method private startQuery()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 1113
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1118
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1119
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 1120
    iget-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldContactId:J

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 1121
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 1123
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->makeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 1124
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v1, "-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1128
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1131
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1132
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1135
    :cond_5
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    const/4 v4, 0x4

    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    sget-object v7, Lcom/meizu/widget/RoundCornerContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 8
    .parameter "emailAddress"
    .parameter "lazyLookup"

    .prologue
    const/4 v5, 0x0

    .line 428
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    .line 429
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 430
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 431
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 432
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    .line 433
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->setContactBadgeText(Ljava/lang/String;)V

    .line 435
    if-nez p2, :cond_0

    .line 436
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    return-void
.end method

.method public assignContactFromPhone(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "phoneNumber"
    .parameter "extras"

    .prologue
    const-wide/16 v2, 0x0

    .line 493
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactFromPhone(Ljava/lang/String;ZJ)V

    .line 495
    if-eqz p2, :cond_0

    .line 496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 497
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 498
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.PERSON_ID_FOR_MOCALL"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 499
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.NAME_FOR_MOCALL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->setContactBadgeText(Ljava/lang/String;)V

    .line 501
    :cond_0
    return-void
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 2
    .parameter "phoneNumber"
    .parameter "lazyLookup"

    .prologue
    .line 489
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactFromPhone(Ljava/lang/String;ZJ)V

    .line 490
    return-void
.end method

.method public assignContactFromPhone(Ljava/lang/String;ZJ)V
    .locals 9
    .parameter "phoneNumber"
    .parameter "lazyLookup"
    .parameter "contactId"

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 453
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 454
    iput-wide p3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 455
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    .line 456
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 457
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    .line 458
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->setContactBadgeText(Ljava/lang/String;)V

    .line 460
    if-nez p2, :cond_0

    .line 461
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v2, "-3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    :cond_1
    invoke-virtual {p0, v8}, Landroid/view/View;->setClickable(Z)V

    .line 472
    invoke-virtual {p0, v8}, Landroid/view/View;->setLongClickable(Z)V

    .line 477
    :goto_0
    return-void

    .line 474
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 475
    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    const/4 v2, 0x0

    .line 410
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    .line 411
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 412
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    .line 413
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 414
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 415
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->setContactBadgeText(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 8

    .prologue
    .line 1013
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 1014
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    .line 1016
    .local v5, states:[I
    iget-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v6, :cond_4

    .line 1017
    const/4 v4, 0x0

    .line 1018
    .local v4, state_window_focused:Z
    const/4 v2, 0x0

    .line 1019
    .local v2, state_enabled:Z
    const/4 v3, 0x0

    .line 1020
    .local v3, state_pressed:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 1021
    aget v6, v5, v1

    const v7, 0x101009d

    if-ne v6, v7, :cond_1

    .line 1022
    const/4 v4, 0x1

    .line 1020
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1023
    :cond_1
    aget v6, v5, v1

    const v7, 0x101009e

    if-ne v6, v7, :cond_2

    .line 1024
    const/4 v2, 0x1

    goto :goto_1

    .line 1025
    :cond_2
    aget v6, v5, v1

    const v7, 0x10100a7

    if-ne v6, v7, :cond_0

    .line 1026
    const/4 v3, 0x1

    goto :goto_1

    .line 1030
    :cond_3
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 1031
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mUseCallIcon:Z

    .line 1035
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1038
    .end local v1           #i:I
    .end local v2           #state_enabled:Z
    .end local v3           #state_pressed:Z
    .end local v4           #state_window_focused:Z
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 1039
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1040
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1041
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1043
    :cond_5
    return-void

    .line 1033
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #i:I
    .restart local v2       #state_enabled:Z
    .restart local v3       #state_pressed:Z
    .restart local v4       #state_window_focused:Z
    :cond_6
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mUseCallIcon:Z

    goto :goto_2
.end method

.method public getBorderType()Lcom/meizu/widget/RoundCornerContactBadge$BorderType;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    return-object v0
.end method

.method public getIconType()Lcom/meizu/widget/RoundCornerContactBadge$IconType;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->startQuery()V

    .line 1097
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1061
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 1062
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycleOnDetached:Z

    if-eqz v0, :cond_0

    .line 1063
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1067
    :goto_0
    return-void

    .line 1065
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycleOnDetached:Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 946
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eq v5, v4, :cond_1

    .line 948
    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 949
    .local v2, oldDstContactBmp:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 950
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->drawContactDrawable()V

    .line 952
    if-eqz v2, :cond_1

    .line 953
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 958
    .end local v2           #oldDstContactBmp:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 959
    .local v1, drawRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    sget-object v5, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    if-ne v4, v5, :cond_3

    .line 960
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 966
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 967
    .local v3, saveCount:I
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 970
    iget-boolean v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mUseCallIcon:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 971
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 972
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1007
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1008
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mUseCallIcon:Z

    .line 1009
    return-void

    .line 963
    .end local v3           #saveCount:I
    :cond_3
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 974
    .restart local v3       #saveCount:I
    :cond_4
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 975
    invoke-direct {p0, p1, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->drawBadgeText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 984
    :goto_2
    iget-boolean v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHasShadow:Z

    if-eqz v4, :cond_5

    .line 985
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 986
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 990
    :cond_5
    iget-boolean v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 991
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 995
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 999
    :cond_6
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 1000
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1001
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 978
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 979
    .local v0, contact:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 980
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 517
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 518
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    invoke-super {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    invoke-super {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 521
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 1103
    iget-boolean v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v1, :cond_0

    .line 1104
    iput-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z

    .line 1105
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->startQuery()V

    .line 1109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 505
    iget-boolean v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    if-eqz v2, :cond_0

    .line 506
    iget v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    add-int v1, v2, v3

    .line 507
    .local v1, width:I
    iget v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    add-int v0, v2, v3

    .line 508
    .local v0, height:I
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 509
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 512
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 513
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v0, :cond_1

    .line 1072
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    if-nez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    .line 1074
    iget-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldContactId:J

    .line 1075
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldExtras:Landroid/os/Bundle;

    .line 1076
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1080
    :goto_0
    return v0

    .line 1078
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1080
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1049
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    .line 1050
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 1053
    return-void

    .line 1050
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public recycleOnDetached(Z)V
    .locals 0
    .parameter "recycle"

    .prologue
    .line 1056
    iput-boolean p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycleOnDetached:Z

    .line 1057
    return-void
.end method

.method public setBorderType(Lcom/meizu/widget/RoundCornerContactBadge$BorderType;)V
    .locals 8
    .parameter "borderType"

    .prologue
    const v7, 0x10501a2

    const v6, 0x1080512

    const v5, 0x108050f

    const v4, 0x10501a8

    const/4 v3, 0x0

    .line 616
    if-nez p1, :cond_0

    .line 617
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    if-ne v1, p1, :cond_1

    .line 716
    :goto_0
    return-void

    .line 624
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    .line 625
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 627
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 628
    .local v0, oldDefDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 629
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 630
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080511

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 635
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextShadowRadius:I

    .line 637
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextShadowColor:I

    .line 640
    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$2;->$SwitchMap$com$meizu$widget$RoundCornerContactBadge$BorderType:[I

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 709
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 710
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 711
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    .line 712
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextSize:I

    goto :goto_0

    .line 642
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105019a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 644
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 646
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 650
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 652
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 654
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextSize:I

    goto/16 :goto_0

    .line 659
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105019c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 661
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 663
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 665
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 669
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 671
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextSize:I

    goto/16 :goto_0

    .line 676
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105019e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 678
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105019f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 680
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 682
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 684
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 686
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 688
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextSize:I

    goto/16 :goto_0

    .line 694
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 696
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 698
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 700
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 702
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 703
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 704
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeTextSize:I

    goto/16 :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setClickToCall(Z)V
    .locals 1
    .parameter "clickToCall"

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eq v0, p1, :cond_0

    .line 727
    iput-boolean p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    .line 728
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 730
    :cond_0
    return-void
.end method

.method public setContactBadgeText(Ljava/lang/String;)V
    .locals 5
    .parameter "badgeText"

    .prologue
    const/4 v4, 0x0

    .line 760
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 761
    const-string v3, ""

    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeText:Ljava/lang/String;

    .line 776
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 777
    return-void

    .line 763
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, text:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 765
    const-string v3, ""

    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeText:Ljava/lang/String;

    goto :goto_0

    .line 767
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, firstLetter:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 770
    .local v0, c:C
    const/16 v3, 0x61

    if-gt v3, v0, :cond_2

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2

    .line 771
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 773
    :cond_2
    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBadgeText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHasShadow(Z)V
    .locals 1
    .parameter "hasShadow"

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHasShadow:Z

    if-eq v0, p1, :cond_0

    .line 751
    iput-boolean p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHasShadow:Z

    .line 752
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 754
    :cond_0
    return-void
.end method

.method public setIconText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconText:Ljava/lang/CharSequence;

    .line 529
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 531
    :cond_0
    return-void
.end method

.method public setIconType(Lcom/meizu/widget/RoundCornerContactBadge$IconType;)V
    .locals 2
    .parameter "iconType"

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    if-ne v0, p1, :cond_1

    .line 604
    :goto_0
    return-void

    .line 547
    :cond_1
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 548
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge$2;->$SwitchMap$com$meizu$widget$RoundCornerContactBadge$IconType:[I

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 603
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 550
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108079c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 555
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108079a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 560
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108079b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 565
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108079f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 570
    :pswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 575
    :pswitch_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108079d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 580
    :pswitch_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108079e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 585
    :pswitch_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 590
    :pswitch_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 595
    :pswitch_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bm"
    .parameter "recycle"

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    iput-boolean p2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 351
    .local v1, oldDrawable:Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_0

    .line 352
    iget-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, bmp:Landroid/graphics/Bitmap;
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 358
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_2

    .line 362
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 363
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 366
    :cond_2
    iget-boolean v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    if-eqz v2, :cond_3

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 367
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #oldDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    .line 370
    return-void
.end method

.method public setImageResource(I)V
    .locals 5
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    .line 275
    if-nez p1, :cond_0

    .line 276
    invoke-virtual {p0, v4}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 279
    .local v2, oldDrawable:Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 283
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 284
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eq v3, v0, :cond_2

    .line 288
    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 289
    iput-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 292
    :cond_2
    iget-boolean v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    if-eqz v3, :cond_3

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    .line 293
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #oldDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    goto :goto_0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 301
    if-nez p1, :cond_0

    .line 302
    invoke-virtual {p0, v4}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 305
    .local v2, oldDrawable:Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 309
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 310
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eq v3, v0, :cond_2

    .line 314
    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 315
    iput-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 318
    :cond_2
    iget-boolean v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    if-eqz v3, :cond_3

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    .line 319
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #oldDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 321
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1086
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    :goto_0
    return-void

    .line 1089
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .parameter "scaleType"

    .prologue
    .line 398
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSubtitle:Ljava/lang/CharSequence;

    .line 744
    return-void
.end method

.method public setTilte(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 736
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mTitle:Ljava/lang/CharSequence;

    .line 737
    return-void
.end method
