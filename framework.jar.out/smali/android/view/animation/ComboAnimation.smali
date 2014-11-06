.class public Landroid/view/animation/ComboAnimation;
.super Landroid/view/animation/Animation;
.source "ComboAnimation.java"


# instance fields
.field private final mAlpha:[F

.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private mIsXMapped:Z

.field private mIsYMapped:Z

.field private mIsZMapped:Z

.field private final mReverse:Z

.field private final mRotateDegreeX:[F

.field private final mRotateDegreeY:[F

.field private final mRotateDegreeZ:[F

.field private final mScale:[F

.field private mTranslateDisX:I

.field private mTranslateDisY:I

.field private mTranslateDisZ:I

.field private final mTranslateX:[F

.field private final mTranslateY:[F

.field private final mTranslateZ:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-boolean v3, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    .line 36
    iput-boolean v3, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    .line 37
    iput-boolean v3, p0, Landroid/view/animation/ComboAnimation;->mIsZMapped:Z

    .line 43
    sget-object v1, Lcom/android/internal/R$styleable;->ComboAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {v0, v3}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateX:[F

    .line 45
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateY:[F

    .line 46
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateZ:[F

    .line 48
    const/4 v1, 0x3

    iget v2, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    .line 49
    const/4 v1, 0x4

    iget v2, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    .line 50
    const/4 v1, 0x5

    iget v2, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisZ:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisZ:I

    .line 52
    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mAlpha:[F

    .line 53
    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mScale:[F

    .line 55
    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeX:[F

    .line 56
    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeY:[F

    .line 57
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/view/animation/ComboAnimation;->getFloatArray(Landroid/content/res/TypedArray;I)[F

    move-result-object v1

    iput-object v1, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeZ:[F

    .line 59
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/view/animation/ComboAnimation;->mCenterX:F

    .line 60
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/view/animation/ComboAnimation;->mCenterY:F

    .line 62
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    .line 63
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    .line 64
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/animation/ComboAnimation;->mIsZMapped:Z

    .line 65
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/animation/ComboAnimation;->mReverse:Z

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method

.method public constructor <init>([F[F[F[F[F[F[F[FFFZ)V
    .locals 1
    .parameter "translateX"
    .parameter "translateY"
    .parameter "translateZ"
    .parameter "alpha"
    .parameter "scale"
    .parameter "rotateDegreeX"
    .parameter "rotateDegreeY"
    .parameter "rotateDegreeZ"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "reverse"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 35
    iput-boolean v0, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    .line 36
    iput-boolean v0, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    .line 37
    iput-boolean v0, p0, Landroid/view/animation/ComboAnimation;->mIsZMapped:Z

    .line 73
    iput-object p1, p0, Landroid/view/animation/ComboAnimation;->mTranslateX:[F

    .line 74
    iput-object p2, p0, Landroid/view/animation/ComboAnimation;->mTranslateY:[F

    .line 75
    iput-object p3, p0, Landroid/view/animation/ComboAnimation;->mTranslateZ:[F

    .line 76
    iput p9, p0, Landroid/view/animation/ComboAnimation;->mCenterX:F

    .line 77
    iput p10, p0, Landroid/view/animation/ComboAnimation;->mCenterY:F

    .line 78
    iput-boolean p11, p0, Landroid/view/animation/ComboAnimation;->mReverse:Z

    .line 79
    iput-object p6, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeX:[F

    .line 80
    iput-object p7, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeY:[F

    .line 81
    iput-object p8, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeZ:[F

    .line 82
    iput-object p5, p0, Landroid/view/animation/ComboAnimation;->mScale:[F

    .line 83
    iput-object p4, p0, Landroid/view/animation/ComboAnimation;->mAlpha:[F

    .line 84
    return-void
.end method

.method private calculateValue([FFF)F
    .locals 7
    .parameter "values"
    .parameter "time"
    .parameter "def"

    .prologue
    .line 241
    move v3, p3

    .line 242
    .local v3, value:F
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    .line 243
    const/high16 v4, 0x3f80

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 244
    .local v2, segment:F
    div-float v4, p2, v2

    float-to-int v1, v4

    .line 245
    .local v1, index:I
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_1

    .line 246
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget v3, p1, v4

    .line 252
    .end local v1           #index:I
    .end local v2           #segment:F
    :cond_0
    :goto_0
    return v3

    .line 248
    .restart local v1       #index:I
    .restart local v2       #segment:F
    :cond_1
    int-to-float v4, v1

    mul-float/2addr v4, v2

    sub-float v0, p2, v4

    .line 249
    .local v0, extra:F
    aget v4, p1, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    aget v6, p1, v1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    div-float/2addr v5, v2

    add-float v3, v4, v5

    goto :goto_0
.end method

.method public static getFloatArray(Landroid/content/res/Resources;I)[F
    .locals 4
    .parameter "res"
    .parameter "id"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, stringArray:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 226
    array-length v3, v2

    new-array v0, v3, [F

    .line 227
    .local v0, floatArray:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 228
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v0, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v0           #floatArray:[F
    .end local v1           #i:I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;I)[F
    .locals 4
    .parameter "a"
    .parameter "id"

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 208
    .local v0, charArray:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 209
    array-length v3, v0

    new-array v1, v3, [F

    .line 210
    .local v1, floatArray:[F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 211
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v1           #floatArray:[F
    .end local v2           #i:I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 15
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 148
    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mReverse:Z

    if-eqz v13, :cond_0

    .line 149
    const/high16 v13, 0x3f80

    sub-float p1, v13, p1

    .line 151
    :cond_0
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateX:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v10

    .line 152
    .local v10, translateX:F
    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    if-nez v13, :cond_1

    .line 153
    iget v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    int-to-float v13, v13

    mul-float/2addr v10, v13

    .line 155
    :cond_1
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateY:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v11

    .line 156
    .local v11, translateY:F
    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    if-nez v13, :cond_2

    .line 157
    iget v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    int-to-float v13, v13

    mul-float/2addr v11, v13

    .line 159
    :cond_2
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateZ:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v12

    .line 160
    .local v12, translateZ:F
    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mIsZMapped:Z

    if-nez v13, :cond_3

    .line 161
    iget v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisZ:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    .line 163
    :cond_3
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mAlpha:[F

    const/high16 v14, 0x3f80

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v1

    .line 164
    .local v1, alpha:F
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeX:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v6

    .line 165
    .local v6, rotateDegreeX:F
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeY:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v7

    .line 166
    .local v7, rotateDegreeY:F
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mRotateDegreeZ:[F

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v8

    .line 167
    .local v8, rotateDegreeZ:F
    iget-object v13, p0, Landroid/view/animation/ComboAnimation;->mScale:[F

    const/high16 v14, 0x3f80

    move/from16 v0, p1

    invoke-direct {p0, v13, v0, v14}, Landroid/view/animation/ComboAnimation;->calculateValue([FFF)F

    move-result v9

    .line 168
    .local v9, scale:F
    iget v14, p0, Landroid/view/animation/ComboAnimation;->mCenterX:F

    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    if-eqz v13, :cond_c

    move v13, v10

    :goto_0
    add-float v3, v14, v13

    .line 169
    .local v3, centerX:F
    iget v14, p0, Landroid/view/animation/ComboAnimation;->mCenterY:F

    iget-boolean v13, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    if-eqz v13, :cond_d

    move v13, v11

    :goto_1
    add-float v4, v14, v13

    .line 171
    .local v4, centerY:F
    iget-object v2, p0, Landroid/view/animation/ComboAnimation;->mCamera:Landroid/graphics/Camera;

    .line 172
    .local v2, camera:Landroid/graphics/Camera;
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 174
    .local v5, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 176
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 177
    const/4 v13, 0x0

    cmpl-float v13, v10, v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-eqz v13, :cond_5

    .line 178
    :cond_4
    neg-float v13, v11

    invoke-virtual {v2, v10, v13, v12}, Landroid/graphics/Camera;->translate(FFF)V

    .line 180
    :cond_5
    const/4 v13, 0x0

    cmpl-float v13, v6, v13

    if-eqz v13, :cond_6

    .line 181
    invoke-virtual {v2, v6}, Landroid/graphics/Camera;->rotateX(F)V

    .line 183
    :cond_6
    const/4 v13, 0x0

    cmpl-float v13, v7, v13

    if-eqz v13, :cond_7

    .line 184
    invoke-virtual {v2, v7}, Landroid/graphics/Camera;->rotateY(F)V

    .line 186
    :cond_7
    const/4 v13, 0x0

    cmpl-float v13, v8, v13

    if-eqz v13, :cond_8

    .line 187
    invoke-virtual {v2, v8}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 189
    :cond_8
    invoke-virtual {v2, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 190
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 192
    const/high16 v13, 0x3f80

    cmpl-float v13, v9, v13

    if-eqz v13, :cond_9

    .line 193
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 196
    :cond_9
    const/4 v13, 0x0

    cmpl-float v13, v6, v13

    if-nez v13, :cond_a

    const/4 v13, 0x0

    cmpl-float v13, v7, v13

    if-nez v13, :cond_a

    const/4 v13, 0x0

    cmpl-float v13, v8, v13

    if-nez v13, :cond_a

    const/high16 v13, 0x3f80

    cmpl-float v13, v9, v13

    if-eqz v13, :cond_b

    .line 197
    :cond_a
    neg-float v13, v3

    neg-float v14, v4

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 198
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 200
    :cond_b
    return-void

    .line 168
    .end local v2           #camera:Landroid/graphics/Camera;
    .end local v3           #centerX:F
    .end local v4           #centerY:F
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_c
    iget v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    int-to-float v13, v13

    mul-float/2addr v13, v10

    goto :goto_0

    .line 169
    .restart local v3       #centerX:F
    :cond_d
    iget v13, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    int-to-float v13, v13

    mul-float/2addr v13, v11

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 140
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ComboAnimation;->mCamera:Landroid/graphics/Camera;

    .line 141
    iput p1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    .line 142
    iput p2, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    .line 143
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisZ:I

    .line 144
    return-void
.end method

.method public setIsXMapped(Z)V
    .locals 0
    .parameter "mapped"

    .prologue
    .line 92
    iput-boolean p1, p0, Landroid/view/animation/ComboAnimation;->mIsXMapped:Z

    .line 93
    return-void
.end method

.method public setIsYMapped(Z)V
    .locals 0
    .parameter "mapped"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/view/animation/ComboAnimation;->mIsYMapped:Z

    .line 102
    return-void
.end method

.method public setIsZMapped(Z)V
    .locals 0
    .parameter "mapped"

    .prologue
    .line 110
    iput-boolean p1, p0, Landroid/view/animation/ComboAnimation;->mIsZMapped:Z

    .line 111
    return-void
.end method

.method public setTranslateDisX(I)V
    .locals 0
    .parameter "translateDisX"

    .prologue
    .line 118
    iput p1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisX:I

    .line 119
    return-void
.end method

.method public setTranslateDisY(I)V
    .locals 0
    .parameter "translateDisY"

    .prologue
    .line 126
    iput p1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisY:I

    .line 127
    return-void
.end method

.method public setTranslateDisZ(I)V
    .locals 0
    .parameter "translateDisZ"

    .prologue
    .line 134
    iput p1, p0, Landroid/view/animation/ComboAnimation;->mTranslateDisZ:I

    .line 135
    return-void
.end method
