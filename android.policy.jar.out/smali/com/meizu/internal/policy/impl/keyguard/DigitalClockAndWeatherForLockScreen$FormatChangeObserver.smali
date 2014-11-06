.class Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClockAndWeatherForLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;->this$0:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 135
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;->this$0:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->setDateFormat()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->access$300(Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;)V

    .line 140
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;->this$0:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->updateTime()V

    .line 141
    return-void
.end method
