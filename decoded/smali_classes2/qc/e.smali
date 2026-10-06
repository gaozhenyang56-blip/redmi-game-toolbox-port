.class public final Lqc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProvisionHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProvisionHelper.kt\ncom/miui/permcenter/provision/ProvisionHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,481:1\n1855#2,2:482\n*S KotlinDebug\n*F\n+ 1 ProvisionHelper.kt\ncom/miui/permcenter/provision/ProvisionHelper\n*L\n266#1:482,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lqc/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Z

.field private static d:Z

.field private static e:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lqc/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lqc/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final h:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Z

.field private static final j:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final k:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final m:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final n:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final o:Lqc/e$k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lqc/e;

    invoke-direct {v0}, Lqc/e;-><init>()V

    sput-object v0, Lqc/e;->a:Lqc/e;

    sget-object v1, Lqc/e$g;->a:Lqc/e$g;

    invoke-static {v1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v1

    sput-object v1, Lqc/e;->b:Loj/f;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlinx/coroutines/flow/c0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/s;

    move-result-object v1

    sput-object v1, Lqc/e;->e:Lkotlinx/coroutines/flow/s;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lqc/e;->f:Ljava/util/ArrayList;

    sget-object v1, Lqc/e$e;->a:Lqc/e$e;

    invoke-static {v1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v1

    sput-object v1, Lqc/e;->h:Loj/f;

    invoke-static {}, Lx4/y;->f()Z

    move-result v1

    sput-boolean v1, Lqc/e;->i:Z

    sget-object v2, Lqc/e$d;->a:Lqc/e$d;

    invoke-static {v2}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v2

    sput-object v2, Lqc/e;->j:Loj/f;

    sget-object v2, Lqc/e$f;->a:Lqc/e$f;

    invoke-static {v2}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v2

    sput-object v2, Lqc/e;->k:Loj/f;

    const-string v3, "com.xiaomi.smarthome"

    const-string v4, "com.duokan.reader"

    const-string v5, "com.miui.newhome"

    const-string v6, "com.android.quicksearchbox"

    const-string v7, "com.miui.video"

    const-string v8, "com.android.browser"

    const-string v9, "com.miui.newhome"

    const-string v10, "com.xiaomi.aicr"

    const-string v11, "com.miui.voiceassist"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lqj/l;->f([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lqc/e;->l:Ljava/util/ArrayList;

    sget-object v2, Lqc/e$i;->a:Lqc/e$i;

    invoke-static {v2}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v2

    sput-object v2, Lqc/e;->m:Loj/f;

    sget-object v2, Lqc/e$j;->a:Lqc/e$j;

    invoke-static {v2}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v2

    sput-object v2, Lqc/e;->n:Loj/f;

    invoke-direct {v0}, Lqc/e;->o()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbm/d;->h(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x4

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    sget-object v1, Lqc/c;->a:Lqc/c;

    invoke-direct {v0}, Lqc/e;->o()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lqc/c;->d(Landroid/content/Context;)V

    invoke-direct {v0}, Lqc/e;->o()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0}, Lqc/e;->t()Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v4, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-direct {v0}, Lqc/e;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {v6}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lqc/e$a;

    invoke-direct {v6, v5}, Lqc/e$a;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-static {}, Lcom/miui/common/e;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-direct {v0}, Lqc/e;->o()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0}, Lqc/e;->u()Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-static {v2, v4, v1, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-direct {v0}, Lqc/e;->p()Llk/i0;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lqc/e$b;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lqc/e$b;-><init>(Ltj/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    :cond_1
    new-instance v0, Lqc/e$k;

    invoke-direct {v0}, Lqc/e$k;-><init>()V

    sput-object v0, Lqc/e;->o:Lqc/e$k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lqc/e;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lqc/e;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lqc/e;)Lnk/f;
    .locals 0

    invoke-direct {p0}, Lqc/e;->n()Lnk/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lqc/e;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Lqc/e;->o()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lqc/e;)Llk/i0;
    .locals 0

    invoke-direct {p0}, Lqc/e;->p()Llk/i0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lqc/e;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic f(Lqc/e;)Landroid/content/BroadcastReceiver;
    .locals 0

    invoke-direct {p0}, Lqc/e;->t()Landroid/content/BroadcastReceiver;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g()Lqc/e$k;
    .locals 1

    sget-object v0, Lqc/e;->o:Lqc/e$k;

    return-object v0
.end method

.method public static final synthetic h()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lqc/e;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic i(Lqc/e;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0}, Lqc/e;->y()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Ljava/util/HashMap;)V
    .locals 0

    sput-object p0, Lqc/e;->g:Ljava/util/HashMap;

    return-void
.end method

.method private final l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedApi"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "context.resources.openRawResource(id)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lqc/d;->a:Lqc/d;

    invoke-virtual {v2}, Lqc/d;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {v0, v1}, Lbl/d;->b(Ljava/io/InputStream;Ljava/io/File;)Z

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: copy File, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProvisionExtra"

    invoke-static {p2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private final m(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lqc/e;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.securitycenter.permission.SYSTEM_PERMISSION_DECLARE"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lqc/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Permission denied"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final n()Lnk/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnk/f<",
            "Loj/l<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lqc/e;->j:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnk/f;

    return-object v0
.end method

.method private final o()Landroid/content/Context;
    .locals 2

    sget-object v0, Lqc/e;->h:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-context>(...)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private final p()Llk/i0;
    .locals 1

    sget-object v0, Lqc/e;->k:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llk/i0;

    return-object v0
.end method

.method private final t()Landroid/content/BroadcastReceiver;
    .locals 1

    sget-object v0, Lqc/e;->m:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private final u()Landroid/content/BroadcastReceiver;
    .locals 1

    sget-object v0, Lqc/e;->n:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private final y()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lqc/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lqc/d;->a:Lqc/d;

    invoke-virtual {v1}, Lqc/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-object v2, Loj/m;->b:Loj/m$a;

    invoke-virtual {v1}, Lqc/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbl/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileContent"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lqc/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqc/a;

    invoke-virtual {v2}, Lqc/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v1, Loj/t;->a:Loj/t;

    invoke-static {v1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Loj/m;->b:Loj/m$a;

    invoke-static {v1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqc/e;->m(Ljava/lang/String;)V

    sget-object v0, Lqc/e;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lqc/e;->y()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lqc/e;->g:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lqc/e;->g:Ljava/util/HashMap;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqc/a;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lqc/a;->n()Z

    move-result v1

    const-string v2, "is_agreed"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lqc/a;->o()J

    move-result-wide v1

    const-string v3, "agreed_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lqc/a;->r()Ljava/lang/String;

    move-result-object p1

    const-string v1, "agreed_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final B(Z)V
    .locals 0

    sput-boolean p1, Lqc/e;->d:Z

    return-void
.end method

.method public final C(Z)V
    .locals 0

    sput-boolean p1, Lqc/e;->c:Z

    return-void
.end method

.method public final D()V
    .locals 7

    sget-object v0, Lqc/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lqc/e;->p()Llk/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lqc/e$l;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lqc/e$l;-><init>(Ltj/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public final k(Ljava/lang/String;Z)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lqc/e;->m(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lqc/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x2

    const-string v3, "com.example.testandroid"

    invoke-static {p1, v3, v0, v2, v1}, Ljk/f;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lqc/e;->p()Llk/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lqc/e$c;

    invoke-direct {v5, p1, p2, v1}, Lqc/e$c;-><init>(Ljava/lang/String;ZLtj/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public final q()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lqc/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lqc/e;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final r()Lcom/google/gson/Gson;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lqc/e;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method public final s()Lkotlinx/coroutines/flow/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/s<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lqc/e;->e:Lkotlinx/coroutines/flow/s;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    sget-boolean v0, Lqc/e;->d:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    sget-boolean v0, Lqc/e;->c:Z

    return v0
.end method

.method public final x()V
    .locals 7

    sget-boolean v0, Lqc/e;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lqc/e;->p()Llk/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lqc/e$h;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lqc/e$h;-><init>(Ltj/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public final z()Landroid/os/Bundle;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryShowCTA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lqc/e;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProvisionExtra"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-boolean v1, Lqc/e;->d:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lqc/e;->i:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "show"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
