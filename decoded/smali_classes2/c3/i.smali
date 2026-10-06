.class public Lc3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/i$c;,
        Lc3/i$b;
    }
.end annotation


# static fields
.field private static c:Lc3/i;


# instance fields
.field private a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lc3/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc3/i;

    invoke-direct {v0}, Lc3/i;-><init>()V

    sput-object v0, Lc3/i;->c:Lc3/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.keyguard.setwallpaper"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    new-instance v2, Lc3/i$a;

    invoke-direct {v2, p0}, Lc3/i$a;-><init>(Lc3/i;)V

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lc3/i;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lc3/i;->k()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lc3/i;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lc3/i;->h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lc3/i;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0

    iput-object p1, p0, Lc3/i;->a:Ljava/lang/ref/SoftReference;

    return-object p1
.end method

.method static synthetic d(Lc3/i;)Lc3/i$c;
    .locals 0

    iget-object p0, p0, Lc3/i;->b:Lc3/i$c;

    return-object p0
.end method

.method static synthetic e(Lc3/i;Lc3/i$c;)Lc3/i$c;
    .locals 0

    iput-object p1, p0, Lc3/i;->b:Lc3/i$c;

    return-object p1
.end method

.method private h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0x64

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lml/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized j()Lc3/i;
    .locals 2

    const-class v0, Lc3/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc3/i;->c:Lc3/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private k()Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lmiui/content/res/ThemeResources;->clearLockWallpaperCache()V

    return-object v0
.end method


# virtual methods
.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc3/i;->b:Lc3/i$c;

    iget-object v0, p0, Lc3/i;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    new-instance v0, Lc3/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc3/i$b;-><init>(Lc3/i;Lc3/i$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public i(Lc3/i$c;)V
    .locals 1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lc3/i;->b:Lc3/i$c;

    iget-object v0, p0, Lc3/i;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc3/i;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Lc3/i$c;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p0}, Lc3/i;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc3/i;->g()V

    :cond_1
    :goto_0
    return-void
.end method
