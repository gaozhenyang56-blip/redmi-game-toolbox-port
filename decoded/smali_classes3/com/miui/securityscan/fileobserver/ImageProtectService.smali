.class public Lcom/miui/securityscan/fileobserver/ImageProtectService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/fileobserver/ImageProtectService$c;,
        Lcom/miui/securityscan/fileobserver/ImageProtectService$d;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Z

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

.field private b:Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

.field private c:Landroid/content/ContentResolver;

.field private d:Landroid/database/ContentObserver;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lvf/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lvf/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Lcom/miui/securityscan/fileobserver/ImageProtectService$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/securityscan/fileobserver/ImageProtectService;->j:Z

    const-string v1, ".png"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".jpg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".jpeg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".webp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".gif"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".bmp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".tif"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".pcx"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".tga"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".exif"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".fpx"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".svg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".psd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".cdr"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".pcd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".dxf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".ufo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".eps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".ai"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".raw"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    const-string v1, ".WMF"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->k:Ljava/util/List;

    const-string v1, "android.media"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->f:Ljava/util/Map;

    return-void
.end method

.method private A()Lcom/miui/securityscan/fileobserver/ImageProtectService;
    .locals 0

    return-object p0
.end method

.method public static B(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;ZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lvf/k;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJ)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lx4/z1;->b(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_4

    :cond_0
    invoke-static {p0, p5}, Lcom/miui/permcenter/n;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2, p5, p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->w(ILjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "appName"

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "appPackageName"

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "notificationTime"

    invoke-virtual {v0, p2, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "notificationId"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/16 p5, 0x12c

    if-gt p2, p5, :cond_2

    move-object p2, p1

    check-cast p2, Ljava/io/Serializable;

    const-string p5, "files"

    invoke-virtual {v0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_2
    sget-object p2, Lcom/miui/securityscan/fileobserver/ImageProtectService;->h:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "size = "

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/high16 p2, 0x4000000

    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance p2, Lw4/b$b;

    const p5, 0x7f120c3f

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 p7, 0x1

    new-array p7, p7, [Ljava/lang/Object;

    const/4 p8, 0x0

    aput-object p4, p7, p8

    invoke-static {p5, p7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p0, p4}, Lw4/b$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p4, 0x7f120c45

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    const p4, 0x7f0805c7

    invoke-virtual {p2, p4}, Lw4/b$b;->q(I)Lw4/b$b;

    sget-boolean p5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p5, :cond_3

    const p4, 0x7f080f25

    :cond_3
    invoke-virtual {p2, p4}, Lw4/b$b;->v(I)Lw4/b$b;

    invoke-virtual {p2, p1}, Lw4/b$b;->f(Landroid/app/PendingIntent;)Lw4/b$b;

    invoke-virtual {p2, p3}, Lw4/b$b;->r(I)Lw4/b$b;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120f27

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.miui.securitycenter"

    invoke-virtual {p2, p1, p0}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Lw4/b$b;->l(I)Lw4/b$b;

    invoke-virtual {p2, p6}, Lw4/b$b;->i(Z)Lw4/b$b;

    invoke-virtual {p2}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void

    :cond_4
    :goto_0
    invoke-static {}, Lvf/l;->s()Lvf/l;

    move-result-object p0

    invoke-virtual {p0, p3}, Lvf/l;->o(I)V

    return-void
.end method

.method private static C(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "del_image_pkg_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "protect_image_notify_show"

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private D(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    :try_start_0
    const-class v2, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v2, v0}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ino="

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/securityscan/fileobserver/ImageProtectService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->x()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/miui/securityscan/fileobserver/ImageProtectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->o()V

    return-void
.end method

.method static synthetic d(Lcom/miui/securityscan/fileobserver/ImageProtectService;)Lcom/miui/securityscan/fileobserver/ImageProtectService$d;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->g:Lcom/miui/securityscan/fileobserver/ImageProtectService$d;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/securityscan/fileobserver/ImageProtectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->s()V

    return-void
.end method

.method static synthetic f(Lcom/miui/securityscan/fileobserver/ImageProtectService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->y(Ljava/util/List;)V

    return-void
.end method

.method static synthetic g(Lcom/miui/securityscan/fileobserver/ImageProtectService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/securityscan/fileobserver/ImageProtectService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic i(ILjava/lang/String;Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->w(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic j(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->C(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/miui/securityscan/fileobserver/ImageProtectService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/miui/securityscan/fileobserver/ImageProtectService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->m()V

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->b:Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->b:Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

    :cond_0
    return-void
.end method

.method private n()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->o()V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->m()V

    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

    :cond_0
    return-void
.end method

.method private p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    :try_start_0
    aget-object v4, v0, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v4, v1

    goto :goto_1

    :cond_0
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v1

    :goto_0
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p2}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->q(Ljava/io/File;)V

    return-void

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3
    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    aget-object v5, v5, v6

    goto :goto_3

    :cond_2
    move-object v5, v1

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0xa

    cmp-long v1, v7, v9

    if-gez v1, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->u(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    aget-object v0, v0, v6

    invoke-direct {p0, v0, v1}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".protected_image"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DCIM"

    invoke-virtual {v1, p2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lvf/k;

    invoke-direct {v0, p2, v1, p1}, Lvf/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x3e8

    if-ne v2, v3, :cond_8

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->f:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->g:Lcom/miui/securityscan/fileobserver/ImageProtectService$d;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->g:Lcom/miui/securityscan/fileobserver/ImageProtectService$d;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->g:Lcom/miui/securityscan/fileobserver/ImageProtectService$d;

    invoke-virtual {v3, v2, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->f:Ljava/util/Map;

    invoke-interface {p2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->e:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->g:Lcom/miui/securityscan/fileobserver/ImageProtectService$d;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->g:Lcom/miui/securityscan/fileobserver/ImageProtectService$d;

    invoke-virtual {v3, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-eqz v1, :cond_9

    :goto_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->e:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void

    :cond_a
    :goto_6
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static q(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->q(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method

.method public static r(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {}, Ldb/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.protect_image"

    invoke-static {v1, v0}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "protect_image"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securityscan/fileobserver/ImageProtectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Lx4/z1;->u(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lx4/z1;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lx4/z1;->g(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lx4/z1;->l(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lx4/v;->w(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private s()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->b:Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".protected_image"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    const-string v2, "999"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v1, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;-><init>(Lcom/miui/securityscan/fileobserver/ImageProtectService;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->b:Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    :cond_1
    return-void
.end method

.method private u(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static v()Z
    .locals 6

    invoke-static {}, Ldb/c;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "persist.sys.protect_image"

    const-string v2, ""

    invoke-static {v0, v2}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    const-string v5, "true"

    if-eqz v2, :cond_1

    invoke-static {v0, v5}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    return v1
.end method

.method private static w(ILjava/lang/String;Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    const/4 p0, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-static {p1}, Lx4/f1;->I(Landroid/content/pm/PackageInfo;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return p0
.end method

.method private x()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->A()Lcom/miui/securityscan/fileobserver/ImageProtectService;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/appmanager/AppManageUtils;->k0(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private y(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvf/m;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvf/m;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lvf/m;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lvf/m;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lvf/m;->f:Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lvf/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lvf/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvf/m;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v2, Lvf/m;->e:Ljava/lang/String;

    iget-object v5, v3, Lvf/m;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, v3, Lvf/m;->f:Ljava/util/List;

    iget-object v2, v2, Lvf/m;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    iget-object v3, v2, Lvf/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvf/m;

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->A()Lcom/miui/securityscan/fileobserver/ImageProtectService;

    move-result-object v1

    iget-object v2, v0, Lvf/m;->f:Ljava/util/List;

    iget v3, v0, Lvf/m;->a:I

    iget v4, v0, Lvf/m;->b:I

    iget-object v5, v0, Lvf/m;->d:Ljava/lang/String;

    iget-object v6, v0, Lvf/m;->e:Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, v0, Lvf/m;->c:J

    invoke-static/range {v1 .. v9}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->B(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method private z()V
    .locals 2

    invoke-static {}, Lvf/l;->s()Lvf/l;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/fileobserver/ImageProtectService$b;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService$b;-><init>(Lcom/miui/securityscan/fileobserver/ImageProtectService;)V

    invoke-virtual {v0, v1}, Lvf/l;->F(Lvf/b;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/miui/securityscan/fileobserver/ImageProtectService;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/miui/securityscan/fileobserver/ImageProtectService$d;

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->A()Lcom/miui/securityscan/fileobserver/ImageProtectService;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/miui/securityscan/fileobserver/ImageProtectService$d;-><init>(Lcom/miui/securityscan/fileobserver/ImageProtectService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->g:Lcom/miui/securityscan/fileobserver/ImageProtectService$d;

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->c:Landroid/content/ContentResolver;

    new-instance v0, Lcom/miui/securityscan/fileobserver/ImageProtectService$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/fileobserver/ImageProtectService$a;-><init>(Lcom/miui/securityscan/fileobserver/ImageProtectService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->d:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->c:Landroid/content/ContentResolver;

    invoke-static {}, Lx4/z1;->o()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->n()V

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->c:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->d:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/miui/securityscan/fileobserver/ImageProtectService;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->j:Z

    invoke-virtual {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->t()V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->z()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->n()V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".protected_image"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v1, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/miui/securityscan/fileobserver/ImageProtectService$c;-><init>(Lcom/miui/securityscan/fileobserver/ImageProtectService;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->a:Lcom/miui/securityscan/fileobserver/ImageProtectService$c;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    :cond_1
    sget-object v0, Lcom/miui/securityscan/fileobserver/ImageProtectService;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOwner = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx4/z1;->r()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   isXSpaceEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->x()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageProtectService;->s()V

    :cond_2
    return-void
.end method
