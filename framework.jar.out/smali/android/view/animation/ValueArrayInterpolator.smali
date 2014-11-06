.class public Landroid/view/animation/ValueArrayInterpolator;
.super Ljava/lang/Object;
.source "ValueArrayInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final TAG:Ljava/lang/String; = "ValueArrayInterpolator"


# instance fields
.field private DEBUG:Z

.field private mValueCount:I

.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    .line 25
    iput v1, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    .line 27
    iput-boolean v1, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    .line 30
    iget-boolean v0, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "ValueArrayInterpolator"

    const-string v1, "ValueArrayInterpolator()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    .line 25
    iput v6, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    .line 27
    iput-boolean v6, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    .line 36
    iget-boolean v3, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 37
    const-string v3, "ValueArrayInterpolator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ValueArrayInterpolator(...); context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    sget-object v3, Lcom/android/internal/R$styleable;->ValueArrayInterpolator:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 44
    .local v2, sa:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 45
    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    .line 46
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 47
    iget-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v3, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_1
    array-length v3, v2

    iput v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    .line 52
    .end local v1           #i:I
    :cond_2
    iget-boolean v3, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 53
    const-string v4, "ValueArrayInterpolator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ValueArrayInterpolator(...); mValues="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    if-nez v3, :cond_4

    const-string/jumbo v3, "null"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void

    .line 53
    :cond_4
    iget-object v3, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    goto :goto_1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 78
    const/4 v2, 0x0

    .line 80
    .local v2, ret:F
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    if-nez v4, :cond_1

    .line 81
    const/high16 v2, 0x3f80

    .line 97
    :goto_0
    iget-boolean v4, p0, Landroid/view/animation/ValueArrayInterpolator;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 98
    const-string v4, "ValueArrayInterpolator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInterpolation("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    return v2

    .line 82
    :cond_1
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    array-length v4, v4

    if-gtz v4, :cond_2

    .line 83
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 84
    :cond_2
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 85
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v2, v4, v7

    goto :goto_0

    .line 86
    :cond_3
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_4

    .line 87
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v2, v4, v7

    goto :goto_0

    .line 88
    :cond_4
    cmpl-float v4, p1, v6

    if-ltz v4, :cond_5

    .line 89
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    iget v5, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    add-int/lit8 v5, v5, -0x1

    aget v2, v4, v5

    goto :goto_0

    .line 91
    :cond_5
    iget v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v3, v6, v4

    .line 92
    .local v3, segment:F
    div-float v4, p1, v3

    float-to-int v1, v4

    .line 93
    .local v1, index:I
    int-to-float v4, v1

    mul-float/2addr v4, v3

    sub-float v0, p1, v4

    .line 94
    .local v0, extra:F
    iget-object v4, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v4, v4, v1

    iget-object v5, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    iget-object v6, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    div-float/2addr v5, v3

    add-float v2, v4, v5

    goto :goto_0
.end method

.method public setValueArray([F)V
    .locals 1
    .parameter "values"

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    .line 70
    iget-object v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValues:[F

    array-length v0, v0

    iput v0, p0, Landroid/view/animation/ValueArrayInterpolator;->mValueCount:I

    goto :goto_0
.end method
