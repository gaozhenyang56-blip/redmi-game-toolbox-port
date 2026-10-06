.class public Lcom/miui/antispam/policy/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/policy/b$a;
    }
.end annotation


# static fields
.field private static final c:Z


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Luf/a;->a:Z

    sput-boolean v0, Lcom/miui/antispam/policy/b;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    iput-object v0, p0, Lcom/miui/antispam/policy/b;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/antispam/policy/b;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Lp4/i;)Ljava/lang/String;
    .locals 10

    const-string v0, "URLFilterPolicy"

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "GET"

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x1388

    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v5, "User-Agent"

    const-string v6, "antispam/1.0.0"

    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/miui/antispam/policy/b;->c:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRedirectURL: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0x1000

    new-array v7, v7, [B

    :goto_0
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eq v8, v1, :cond_1

    invoke-virtual {v6, v7, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "Location"

    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v4}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-static {p2, v3, v2}, Lp4/h;->a(Lp4/i;II)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_0
    move-exception p1

    move v1, v3

    goto :goto_2

    :catch_0
    move-exception v1

    move v9, v3

    move-object v3, v1

    move v1, v9

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when get redirect url :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {p2, v1, v2}, Lp4/h;->a(Lp4/i;II)V

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object p1

    :catchall_2
    move-exception p1

    :goto_2
    move-object v3, v4

    :goto_3
    invoke-static {p2, v1, v2}, Lp4/h;->a(Lp4/i;II)V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 8

    const-string v0, "URLFilterPolicy"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "https://url-detect.engine.mi.com/url/detect"

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "url"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "c"

    const-string v4, "2"

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sign"

    const-string v4, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    invoke-static {v3, v4}, Leg/j;->m(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Leg/j;->x(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_6

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "urlCategoryId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    if-eq v4, p1, :cond_4

    if-ne v3, p1, :cond_5

    :cond_4
    move v2, v4

    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check url phish result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "Exception when resolve result string :"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return v2
.end method

.method private e(I)I
    .locals 0

    or-int/lit16 p1, p1, 0x80

    return p1
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string v0, "URLFilterPolicy"

    invoke-static {}, Lef/x;->z()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-static {}, Lc2/a;->s()V

    iget-object v1, p0, Lcom/miui/antispam/policy/b;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lm2/i;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    new-instance v1, Lp4/i;

    const-string v3, "antispam_urlfilterpolicy"

    invoke-direct {v1, v3}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/miui/antispam/policy/b;->a(Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lh2/f;

    iget-object v4, p0, Lcom/miui/antispam/policy/b;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lh2/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Lh2/f;->d(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const-string v3, "check ori by browser! === "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/miui/antispam/policy/b;->b(Ljava/lang/String;)I

    move-result v3

    :cond_1
    if-eq v3, v4, :cond_2

    const-string v3, "check by browser!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/miui/antispam/policy/b;->b(Ljava/lang/String;)I

    move-result v3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AVL black url check done : result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez p1, :cond_5

    if-ne v3, v4, :cond_3

    return v6

    :cond_3
    if-ne v3, v6, :cond_4

    return v5

    :cond_4
    return v2

    :cond_5
    if-ne v3, v4, :cond_6

    return v6

    :cond_6
    invoke-static {p2}, Lm2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antispam/policy/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lm2/i;->d(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object p2

    const-string v3, "URL WhiteList Check done "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v5

    :cond_7
    invoke-static {}, Le2/b;->h()Z

    move-result v3

    if-nez v3, :cond_8

    const-string p1, "SecurityCenter is not allowed to access internet, check failed!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    invoke-static {v1}, Lm2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lc2/a;->r()V

    :cond_9
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_a

    return v5

    :cond_a
    return v4

    :catch_0
    move-exception p1

    const-string p2, "exception when get URL Scan Result : "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public d(ILh2/c;)Lcom/miui/antispam/policy/b$a;
    .locals 10

    const-string v0, "URLFilterPolicy"

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/miui/antispam/policy/b;->a:Landroid/content/Context;

    iget v3, p2, Lh2/c;->e:I

    invoke-static {v1, v3}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    iget-object v1, p2, Lh2/c;->g:Ljava/lang/String;

    invoke-static {v1}, Lm2/i;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/miui/antispam/policy/b;->a:Landroid/content/Context;

    iget-object v4, p2, Lh2/c;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lm2/i;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    new-instance p2, Lcom/miui/antispam/policy/b$a;

    invoke-direct {p0, p1}, Lcom/miui/antispam/policy/b;->e(I)I

    move-result p1

    invoke-direct {p2, p0, v4, p1}, Lcom/miui/antispam/policy/b$a;-><init>(Lcom/miui/antispam/policy/b;ZI)V

    return-object p2

    :cond_2
    const/4 v3, 0x3

    if-lt p1, v3, :cond_3

    return-object v2

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lm2/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v5, Lh2/f;

    iget-object v6, p0, Lcom/miui/antispam/policy/b;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Lh2/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "; "

    if-eqz v7, :cond_6

    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lh2/f;->d(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v4, :cond_5

    const-string p1, "black"

    invoke-static {p1}, Lc2/a;->t(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lh2/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc2/a;->o(Ljava/lang/String;)V

    new-instance p1, Lcom/miui/antispam/policy/b$a;

    const/16 p2, 0x8

    invoke-direct {p1, p0, v4, p2}, Lcom/miui/antispam/policy/b$a;-><init>(Lcom/miui/antispam/policy/b;ZI)V

    return-object p1

    :cond_6
    iget-object v5, p2, Lh2/c;->g:Ljava/lang/String;

    invoke-static {v5}, Lm2/i;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string p2, "number"

    invoke-static {p2}, Lc2/a;->t(Ljava/lang/String;)V

    const-string p2, "url marked by phoneNumber in text"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/miui/antispam/policy/b$a;

    invoke-direct {p0, p1}, Lcom/miui/antispam/policy/b;->e(I)I

    move-result p1

    invoke-direct {p2, p0, v4, p1}, Lcom/miui/antispam/policy/b$a;-><init>(Lcom/miui/antispam/policy/b;ZI)V

    return-object p2

    :cond_7
    iget-object v5, p0, Lcom/miui/antispam/policy/b;->a:Landroid/content/Context;

    invoke-static {v5}, Lm2/i;->d(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_9

    const-string v1, "non_white_black_single_url"

    :goto_1
    invoke-static {v1}, Lc2/a;->t(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v1, "non_white_black_multi_url"

    goto :goto_1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lh2/c;->b:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lc2/a;->u(Ljava/lang/String;)V

    const-string p2, "url marked by risky url in text"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/miui/antispam/policy/b$a;

    invoke-direct {p0, p1}, Lcom/miui/antispam/policy/b;->e(I)I

    move-result p1

    invoke-direct {p2, p0, v4, p1}, Lcom/miui/antispam/policy/b$a;-><init>(Lcom/miui/antispam/policy/b;ZI)V

    return-object p2

    :cond_a
    const-string p1, "white"

    invoke-static {p1}, Lc2/a;->t(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "Exception when check message urls ! "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_3
    return-object v2
.end method
