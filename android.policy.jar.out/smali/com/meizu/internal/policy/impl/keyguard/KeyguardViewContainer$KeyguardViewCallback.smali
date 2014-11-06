.class interface abstract Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;
.super Ljava/lang/Object;
.source "KeyguardViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "KeyguardViewCallback"
.end annotation


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isScreenOnBecauseOfSlideKey()Z
.end method

.method public abstract onUserActivityTimeoutChanged()V
.end method

.method public abstract showAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract showNextSecurityScreenOrFinish()V
.end method

.method public abstract userActivity(J)V
.end method
