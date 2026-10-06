.class Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/slider/ToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/net/Uri;

.field final synthetic c:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;


# direct methods
.method private constructor <init>(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->c:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "screen_brightness_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->a:Landroid/net/Uri;

    const-string p1, "screen_brightness"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->b:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;Landroid/os/Handler;Lcom/miui/superpower/statusbar/slider/ToggleSliderView$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;-><init>(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->c()V

    return-void
.end method

.method static synthetic b(Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->c:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->c:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/superpower/statusbar/slider/ToggleSliderView$b;->c:Lcom/miui/superpower/statusbar/slider/ToggleSliderView;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/slider/ToggleSliderView;->d(Lcom/miui/superpower/statusbar/slider/ToggleSliderView;)V

    return-void
.end method
