.class Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;
.super Ljava/lang/Object;
.source "DigitalClockAndWeatherForLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 2
    .parameter "parent"
    .parameter "tf"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const v1, 0x102034b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->mAmPm:Landroid/widget/TextView;

    .line 110
    if-eqz p2, :cond_0

    .line 111
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    :cond_0
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->mAmString:Ljava/lang/String;

    .line 116
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->mPmString:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    return-void

    .line 120
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "newColorStateList"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 129
    return-void
.end method
