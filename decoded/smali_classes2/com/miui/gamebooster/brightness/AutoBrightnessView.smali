.class public Lcom/miui/gamebooster/brightness/AutoBrightnessView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/brightness/AutoBrightnessView$b;
    }
.end annotation


# static fields
.field private static final j:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Landroid/content/ContentResolver;

.field private f:Landroid/os/IBinder;

.field protected g:Landroid/os/Handler;

.field private h:Lcom/miui/gamebooster/brightness/AutoBrightnessView$b;

.field private i:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, La8/g0;->t()Z

    move-result v0

    sput-boolean v0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->f:Landroid/os/IBinder;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->g:Landroid/os/Handler;

    new-instance p2, Lcom/miui/gamebooster/brightness/AutoBrightnessView$a;

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->g:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/miui/gamebooster/brightness/AutoBrightnessView$a;-><init>(Lcom/miui/gamebooster/brightness/AutoBrightnessView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->i:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/brightness/AutoBrightnessView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->f()V

    return-void
.end method

.method static synthetic b(Lcom/miui/gamebooster/brightness/AutoBrightnessView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/miui/gamebooster/brightness/AutoBrightnessView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->j(Z)V

    return-void
.end method

.method static synthetic d(Lcom/miui/gamebooster/brightness/AutoBrightnessView;)Lcom/miui/gamebooster/brightness/AutoBrightnessView$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->h:Lcom/miui/gamebooster/brightness/AutoBrightnessView$b;

    return-object p0
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->e:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e01bd

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0130

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->b:Landroid/widget/ImageView;

    const p1, 0x7f0b0131

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->g()V

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->f()V

    iget-boolean p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->d:Z

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->j(Z)V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->e:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->d:Z

    return-void
.end method

.method private g()V
    .locals 4

    sget-boolean v0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->e:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->e:Landroid/content/ContentResolver;

    const-string v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->e:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private h()V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->f:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "AutoBrightnessView"

    const-string v4, "RemoteException!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private j(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->b:Landroid/widget/ImageView;

    const v1, 0x7f08083d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f08083c

    goto :goto_0

    :cond_0
    const p1, 0x7f08083e

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->e:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->i:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->d:Z

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->h()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->d:Z

    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->d:Z

    const/4 v1, -0x2

    const-string v2, "screen_brightness_mode"

    invoke-static {p1, v2, v0, v1}, La8/c0;->k(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleClick to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoBrightnessView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->d:Z

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->j(Z)V

    return-void
.end method

.method public setOnAutoChangeListner(Lcom/miui/gamebooster/brightness/AutoBrightnessView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/AutoBrightnessView;->h:Lcom/miui/gamebooster/brightness/AutoBrightnessView$b;

    return-void
.end method
