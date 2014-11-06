.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .parameter "focusChange"

    .prologue
    .line 1640
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 1649
    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1644
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->am:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1646
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->audioFocusGiant:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3502(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    goto :goto_0
.end method
