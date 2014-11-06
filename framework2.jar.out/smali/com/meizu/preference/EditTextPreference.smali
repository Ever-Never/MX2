.class public Lcom/meizu/preference/EditTextPreference;
.super Landroid/preference/Preference;
.source "EditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/preference/EditTextPreference$SavedState;
    }
.end annotation


# static fields
.field private static focusClass:Lcom/meizu/preference/EditTextPreference;


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    const v1, 0x10900b8

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 62
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 63
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0, v1, p1}, Lcom/meizu/preference/EditTextPreference;->initEditText(Landroid/widget/EditText;Landroid/content/Context;)V

    .line 65
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v1

    .line 68
    .local v0, scale:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v2, v0, 0xa

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 70
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v2, v0, 0x6

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 71
    return-void
.end method

.method private initEditText(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 5
    .parameter "edit"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x1020003

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    .line 78
    const v2, 0x106009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 80
    const/high16 v2, 0x4190

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    const v2, 0x106008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 82
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 84
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 85
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 86
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 87
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 88
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 89
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 92
    const/high16 v2, 0x200

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 95
    const-string v2, "com.meizu.input.candidateAlwaysVisible"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 98
    .local v0, inputType:I
    invoke-static {v0}, Lcom/meizu/preference/EditTextPreference;->isPasswordInputType(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 100
    :cond_0
    return-void
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 103
    and-int/lit16 v0, p0, 0xfff

    .line 105
    .local v0, variation:I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object v1
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 134
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, layout:Landroid/view/View;
    iget-object v3, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 118
    .local v2, oldParent:Landroid/view/ViewParent;
    if-eq v2, v1, :cond_1

    .line 119
    if-eqz v2, :cond_0

    .line 120
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #oldParent:Landroid/view/ViewParent;
    iget-object v3, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    :cond_0
    const v3, 0x102039f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 125
    iget-object v3, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/meizu/preference/EditTextPreference;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .end local v0           #container:Landroid/view/ViewGroup;
    :cond_1
    return-object v1
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 4
    .parameter "dependency"
    .parameter "disableDependent"

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 224
    iget-object v3, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 225
    if-eqz p2, :cond_0

    .line 226
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 227
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 231
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 224
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 137
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 139
    sput-object p0, Lcom/meizu/preference/EditTextPreference;->focusClass:Lcom/meizu/preference/EditTextPreference;

    .line 140
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 208
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 264
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/meizu/preference/EditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 273
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 270
    check-cast v0, Lcom/meizu/preference/EditTextPreference$SavedState;

    .line 271
    .local v0, myState:Lcom/meizu/preference/EditTextPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 272
    iget-object v1, v0, Lcom/meizu/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/meizu/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 252
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 257
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/meizu/preference/EditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 258
    .local v0, myState:Lcom/meizu/preference/EditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/meizu/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v1, v0

    .line 259
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 213
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/meizu/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 214
    return-void

    .line 213
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_0
    sget-object v0, Lcom/meizu/preference/EditTextPreference;->focusClass:Lcom/meizu/preference/EditTextPreference;

    if-ne v0, p0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 314
    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 318
    return-void
.end method

.method public setAutoShowSoftInput(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 328
    if-eqz p1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 330
    iget-object v1, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 331
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 335
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .parameter "dialogTitleResId"

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "dialogTitle"

    .prologue
    .line 156
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-super {p0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 167
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/meizu/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/meizu/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 178
    .local v1, wasBlocking:Z
    iput-object p1, p0, Lcom/meizu/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 180
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 183
    iget-object v2, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/meizu/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 188
    .local v0, isBlocking:Z
    if-eq v0, v1, :cond_1

    .line 189
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 191
    :cond_1
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/meizu/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
