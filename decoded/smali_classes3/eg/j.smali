.class public Leg/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg/j$c;,
        Leg/j$b;
    }
.end annotation


# static fields
.field private static final a:Z

.field public static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-boolean v0, Luf/a;->a:Z

    sput-boolean v0, Leg/j;->a:Z

    const-string v0, "ro.product.device"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leg/j;->b:Ljava/lang/String;

    const-string v2, "ro.carrier.name"

    invoke-static {v2, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Leg/j;->c:Ljava/lang/String;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Leg/j;->d:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v4, Leg/j;->e:Ljava/lang/String;

    const-string v5, "ro.miui.ui.version.name"

    invoke-static {v5, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Leg/j;->f:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v5, Leg/j;->g:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v6, Leg/j;->h:Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Leg/j;->i:Ljava/util/HashMap;

    const-string v8, "d"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "c"

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "r"

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v"

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vn"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "av"

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Leg/c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "si"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mo"

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    invoke-static {}, Leg/j;->o()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Leg/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MD5"

    invoke-static {v2, v3}, Llm/a;->b(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lsm/a;->d([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const-string v3, "m"

    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ri"

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v0}, Leg/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "o"

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "e"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static A(Ljava/lang/String;Leg/j$b;Ljava/lang/String;Lp4/i;)Ljava/lang/String;
    .locals 9

    const-string v0, "?"

    invoke-static {}, Lx4/l1;->b()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "u"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sign"

    invoke-static {v5, p2}, Leg/j;->m(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Leg/j$b;->a:Leg/j$b;

    if-ne p1, p2, :cond_2

    invoke-static {v5}, Leg/j;->h(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    sget-boolean p2, Leg/j;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v0, "NetUtil"

    if-eqz p2, :cond_3

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request start : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Leg/j;->p(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-static {p0, p1, v5}, Leg/j;->E(Ljava/net/HttpURLConnection;Leg/j$b;Ljava/util/Map;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz p2, :cond_4

    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " responseCode :  "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 p2, 0xc8

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v3, 0x1000

    :try_start_4
    new-array v3, v3, [B

    :goto_2
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v1, :cond_5

    invoke-virtual {p2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Leg/j;->a:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request result  : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    invoke-static {p3, p1, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {p0}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p2}, Leg/j;->d(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v3, p0

    move v1, p1

    move-object p0, v0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v3, p0

    move v1, p1

    move-object p0, v0

    goto :goto_5

    :catchall_1
    move-exception p2

    move v1, p1

    move-object v8, v3

    move-object v3, p0

    move-object p0, p2

    move-object p2, v8

    goto :goto_7

    :catch_1
    move-exception p2

    move v1, p1

    move-object v8, v3

    move-object v3, p0

    move-object p0, p2

    move-object p2, v8

    goto :goto_5

    :catchall_2
    move-exception p0

    move v1, p1

    goto :goto_3

    :catch_2
    move-exception p0

    move v1, p1

    goto :goto_4

    :cond_7
    invoke-static {p3, p1, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_3
    move-exception p0

    :goto_3
    move-object p2, v3

    goto :goto_7

    :catch_3
    move-exception p0

    :goto_4
    move-object p2, v3

    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {p3, v1, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p2}, Leg/j;->d(Ljava/io/Closeable;)V

    :goto_6
    return-object v2

    :catchall_4
    move-exception p0

    :goto_7
    invoke-static {p3, v1, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p2}, Leg/j;->d(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static B(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;Lp4/i;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Leg/j$b;",
            "Ljava/lang/String;",
            "Lp4/i;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Leg/j;->C(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;ZZLp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static C(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;ZZLp4/i;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Leg/j$b;",
            "Ljava/lang/String;",
            "ZZ",
            "Lp4/i;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "?"

    invoke-static {}, Lx4/l1;->b()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    if-nez p4, :cond_0

    return-object v2

    :cond_0
    const/4 p4, -0x1

    const/4 v1, 0x0

    const-string v3, "NetUtil"

    const/4 v4, 0x0

    if-eqz p5, :cond_1

    :try_start_0
    invoke-static {p0, p3}, Leg/j;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    goto :goto_2

    :catchall_0
    move-exception p0

    :goto_0
    move-object p2, v1

    goto/16 :goto_8

    :catch_0
    move-exception p0

    :goto_1
    move-object p2, v1

    goto/16 :goto_6

    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_2
    const-string p5, "sign"

    invoke-static {p0, p3}, Leg/j;->m(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p3, Leg/j$b;->a:Leg/j$b;

    if-ne p2, p3, :cond_4

    if-eqz p0, :cond_4

    invoke-static {p0}, Leg/j;->h(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_3

    :goto_3
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    :goto_4
    sget-boolean p3, Leg/j;->a:Z

    if-eqz p3, :cond_5

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request start : "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p5, Ljava/net/URL;

    invoke-direct {p5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Leg/j;->p(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    invoke-static {p1, p2, p0}, Leg/j;->E(Ljava/net/HttpURLConnection;Leg/j$b;Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_6

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " responseCode :  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 p2, 0xc8

    if-ne p0, p2, :cond_9

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 p3, 0x1000

    :try_start_3
    new-array p3, p3, [B

    :goto_5
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result p5

    if-eq p5, p4, :cond_7

    invoke-virtual {p2, p3, v4, p5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p3

    sget-boolean p4, Leg/j;->a:Z

    if-eqz p4, :cond_8

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "request result  : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_8
    invoke-static {p6, p0, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {p1}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p2}, Leg/j;->d(Ljava/io/Closeable;)V

    return-object p3

    :catchall_1
    move-exception p3

    move p4, p0

    move-object v1, p1

    move-object p0, p3

    goto :goto_8

    :catch_1
    move-exception p3

    move p4, p0

    move-object v1, p1

    move-object p0, p3

    goto :goto_6

    :catchall_2
    move-exception p2

    move p4, p0

    move-object p0, p2

    move-object p2, v1

    move-object v1, p1

    goto :goto_8

    :catch_2
    move-exception p2

    move p4, p0

    move-object p0, p2

    move-object p2, v1

    move-object v1, p1

    goto :goto_6

    :catchall_3
    move-exception p1

    move p4, p0

    move-object p0, p1

    goto/16 :goto_0

    :catch_3
    move-exception p1

    move p4, p0

    move-object p0, p1

    goto/16 :goto_1

    :cond_9
    invoke-static {p6, p0, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v1}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v1}, Leg/j;->d(Ljava/io/Closeable;)V

    goto :goto_7

    :goto_6
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "request: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-static {p6, p4, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v1}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p2}, Leg/j;->d(Ljava/io/Closeable;)V

    :goto_7
    return-object v2

    :catchall_4
    move-exception p0

    :goto_8
    invoke-static {p6, p4, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v1}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p2}, Leg/j;->d(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lx4/l1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Leg/j;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v2, "NetUtil"

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request post json start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Leg/j;->p(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/16 v3, 0xbb8

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v3, "POST"

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {p1, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " responseCode :  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0xc8

    if-ne p0, v1, :cond_5

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v1, 0x1000

    :try_start_3
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Leg/j;->a:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request post json result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    invoke-static {p0}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p1}, Leg/j;->d(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v5, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v5

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, v0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_1

    :cond_5
    invoke-static {v0}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v0}, Leg/j;->d(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object p1, v0

    move-object v1, p1

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {p1}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v1}, Leg/j;->d(Ljava/io/Closeable;)V

    :goto_2
    return-object v0

    :catchall_3
    move-exception p0

    move-object v0, p1

    move-object p1, v1

    :goto_3
    invoke-static {v0}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p1}, Leg/j;->d(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static E(Ljava/net/HttpURLConnection;Leg/j$b;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Leg/j$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Leg/j$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const-string p1, "PUT"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "POST"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p2}, Leg/j;->a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const-string p1, "DELETE"

    goto :goto_0

    :cond_3
    const-string p1, "GET"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1}, Leg/j;->h(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Leg/j;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " post body : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_2
    return-void
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    sget-object v0, Leg/j;->i:Ljava/util/HashMap;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "l"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Leg/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "n"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {}, Lef/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/miui/securitykey/ConfigManager;->getUuidAesKey(Landroid/content/Context;)Lcom/miui/securitykey/ConfigManager$UuidAesKey;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/securitykey/ConfigManager$UuidAesKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/securitykey/ConfigManager$UuidAesKey;->getIv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1, v3, v0}, Leg/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v0, "g"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lx4/y;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cr"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetUtil"

    const-string v2, "getAdvertisingId error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    invoke-static {v0}, Leg/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oa"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p0, p1}, Leg/j;->m(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sign"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static c(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Leg/j;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " post body : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=UTF-8"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_2
    return-void
.end method

.method private static d(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lp4/i;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Leg/j$b;->a:Leg/j$b;

    invoke-static {p0, p1, v0, p2}, Leg/j;->g(Ljava/lang/String;Ljava/util/Map;Leg/j$b;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lp4/i;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Leg/j$b;->b:Leg/j$b;

    invoke-static {p0, p1, v0, p2}, Leg/j;->g(Ljava/lang/String;Ljava/util/Map;Leg/j$b;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/String;Ljava/util/Map;Leg/j$b;Lp4/i;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Leg/j$b;",
            "Lp4/i;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "?"

    invoke-static {}, Lx4/l1;->b()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Leg/j$b;->a:Leg/j$b;

    if-ne p2, v5, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p1}, Leg/j;->h(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    sget-boolean v0, Leg/j;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v5, "NetUtil"

    if-eqz v0, :cond_3

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request start : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Leg/j;->p(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-static {p0, p2, p1}, Leg/j;->E(Ljava/net/HttpURLConnection;Leg/j$b;Ljava/util/Map;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_4

    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " responseCode :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 p2, 0xc8

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v0, 0x1000

    :try_start_4
    new-array v0, v0, [B

    :goto_2
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v1, :cond_5

    invoke-virtual {p2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Leg/j;->a:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request result  : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    invoke-static {p3, p1, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {p0}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p2}, Leg/j;->d(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, p0

    move v1, p1

    move-object p0, v0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v3, p0

    move v1, p1

    move-object p0, v0

    goto :goto_5

    :catchall_1
    move-exception p2

    move v1, p1

    move-object v8, v3

    move-object v3, p0

    move-object p0, p2

    move-object p2, v8

    goto :goto_7

    :catch_1
    move-exception p2

    move v1, p1

    move-object v8, v3

    move-object v3, p0

    move-object p0, p2

    move-object p2, v8

    goto :goto_5

    :catchall_2
    move-exception p0

    move v1, p1

    goto :goto_3

    :catch_2
    move-exception p0

    move v1, p1

    goto :goto_4

    :cond_7
    invoke-static {p3, p1, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_3
    move-exception p0

    :goto_3
    move-object p2, v3

    goto :goto_7

    :catch_3
    move-exception p0

    :goto_4
    move-object p2, v3

    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "NetExp"

    const-string v0, "Comment request exp"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {p3, v1, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p2}, Leg/j;->d(Ljava/io/Closeable;)V

    :goto_6
    return-object v2

    :catchall_4
    move-exception p0

    :goto_7
    invoke-static {p3, v1, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p2}, Leg/j;->d(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static h(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "UTF-8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static i(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lp4/i;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v2, Leg/j$b;->b:Leg/j$b;

    const-string v3, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Leg/j;->C(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;ZZLp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lp4/i;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v2, Leg/j$b;->a:Leg/j$b;

    const-string v3, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Leg/j;->C(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;ZZLp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static k(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p0}, Leg/j;->k(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v0, "%1$032X"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static m(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Leg/j$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Leg/j$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_1
    const-string v3, "&"

    if-ge v2, p0, :cond_2

    if-lez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leg/j$c;

    invoke-static {v3}, Leg/j$c;->b(Leg/j$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Leg/j$c;->a(Leg/j$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Leg/j;->k(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Leg/j;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Leg/j;->b:Ljava/lang/String;

    const-string v2, "d"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Leg/j;->d:Ljava/lang/String;

    const-string v2, "r"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Leg/j;->e:Ljava/lang/String;

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidVersion"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Leg/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Leg/c;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t_app"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Leg/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v3, ""

    if-nez v2, :cond_1

    invoke-static {}, Leg/j;->o()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Leg/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MD5"

    invoke-static {v2, v4}, Llm/a;->b(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lsm/a;->d([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "m"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "oa"

    :goto_1
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    :try_start_0
    invoke-static {}, Lef/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/securitykey/ConfigManager;->getUuidAesKey(Landroid/content/Context;)Lcom/miui/securitykey/ConfigManager$UuidAesKey;

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/securitykey/ConfigManager;->getUuidAesKey(Landroid/content/Context;)Lcom/miui/securitykey/ConfigManager$UuidAesKey;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/miui/securitykey/ConfigManager$UuidAesKey;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/miui/securitykey/ConfigManager$UuidAesKey;->getIv()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2, v5, v4}, Leg/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v4, "TrainRequestBean"

    const-string v5, "getAdvertisingId error"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v2, v3

    :goto_2
    const-string v4, "g"

    goto :goto_1

    :goto_3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    const-string v1, "e"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model_version"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static o()Z
    .locals 1

    invoke-static {}, Leg/c;->l()Z

    move-result v0

    return v0
.end method

.method private static p(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    return-object p0
.end method

.method public static q(Ljava/lang/String;Lp4/i;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Leg/j;->t(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lp4/i;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lp4/i;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v2, Leg/j$b;->b:Leg/j$b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Leg/j;->C(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;ZZLp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZZLp4/i;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lp4/i;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v2, Leg/j$b;->b:Leg/j$b;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Leg/j;->C(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;ZZLp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lp4/i;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v2, Leg/j$b;->b:Leg/j$b;

    const-string v3, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Leg/j;->C(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;ZZLp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Leg/j;->n(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v2, Leg/j$b;->b:Leg/j$b;

    new-instance v6, Lp4/i;

    const-string p0, "ai_request_task"

    invoke-direct {v6, p0}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://api.sec.miui.com/mnntrain/taskdata"

    const-string v3, "5cdd8678-cddf-4269-ab73-48017445bba3"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Leg/j;->C(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;ZZLp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    const-string v0, "NetUtil"

    invoke-static {}, Lx4/l1;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Leg/j;->a:Z

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Leg/j;->p(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const-string v3, "POST"

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "body : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    const-string v3, "Content-Type"

    const-string v4, "application/json; charset=UTF-8"

    invoke-virtual {p0, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseCode : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_8

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v2, 0x1000

    :try_start_3
    new-array v2, v2, [B

    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v4, Leg/j;->a:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request result  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    invoke-static {p0}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p1}, Leg/j;->d(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_4

    :catch_0
    move-exception v2

    move-object v6, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v6

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v6, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v6

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v2, v1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_2

    :cond_8
    invoke-static {v1}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v1}, Leg/j;->d(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object p1, v1

    goto :goto_4

    :catch_2
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    goto :goto_2

    :catchall_3
    move-exception p0

    move-object p1, v1

    move-object v3, p1

    goto :goto_4

    :catch_3
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    move-object v3, v2

    :goto_2
    :try_start_4
    const-string v4, "postAdvTailData failed "

    invoke-static {v0, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-static {p1}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v2}, Leg/j;->d(Ljava/io/Closeable;)V

    :goto_3
    return-object v1

    :catchall_4
    move-exception p0

    move-object v1, p1

    move-object p1, v2

    :goto_4
    invoke-static {v1}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v3}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p1}, Leg/j;->d(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static w(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Leg/j;->x(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(TT;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Leg/j;->y(Ljava/util/Map;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/util/Map;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(TT;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "sign"

    invoke-static {}, Lx4/l1;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Leg/j;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v3, "NetUtil"

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request start : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Leg/j;->p(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v4, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    if-eqz p3, :cond_2

    :try_start_2
    invoke-static {p0, v4}, Leg/k;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-static {p0, v4}, Leg/j;->m(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-interface {p0, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lx4/l0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonBodyStr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p1, v0, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {p1, p0}, Leg/j;->c(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    if-eqz v2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " responseCode :  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 p2, 0xc8

    if-ne p0, p2, :cond_8

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 p2, 0x1000

    :try_start_4
    new-array p2, p2, [B

    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p2

    sget-boolean p3, Leg/j;->a:Z

    if-eqz p3, :cond_7

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request result  : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    invoke-static {p0}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p1}, Leg/j;->d(Ljava/io/Closeable;)V

    return-object p2

    :catchall_0
    move-exception p2

    move-object v1, p0

    move-object p0, p2

    goto :goto_4

    :catch_0
    move-exception p2

    move-object v6, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v6

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v6, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v6

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p2, v1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_2

    :cond_8
    invoke-static {v1}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {v1}, Leg/j;->d(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object p1, v1

    goto :goto_4

    :catch_2
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {p1}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p2}, Leg/j;->d(Ljava/io/Closeable;)V

    :goto_3
    return-object v1

    :catchall_3
    move-exception p0

    move-object v1, p1

    move-object p1, p2

    :goto_4
    invoke-static {v1}, Leg/j;->d(Ljava/io/Closeable;)V

    invoke-static {p1}, Leg/j;->d(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static z(Ljava/lang/String;Lp4/i;)Ljava/lang/String;
    .locals 2

    sget-object v0, Leg/j$b;->b:Leg/j$b;

    const-string v1, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    invoke-static {p0, v0, v1, p1}, Leg/j;->A(Ljava/lang/String;Leg/j$b;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
