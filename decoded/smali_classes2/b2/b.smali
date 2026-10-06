.class public Lb2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/antispam/policy/a$b;


# static fields
.field private static volatile f:Lb2/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lh2/b;

.field private c:Lcom/miui/antispam/policy/b;

.field private d:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lh2/e;",
            "Lcom/miui/antispam/policy/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/miui/antispam/policy/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lb2/b$a;

    invoke-direct {v1, p0}, Lb2/b$a;-><init>(Lb2/b;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lb2/b;->d:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb2/b;->a:Landroid/content/Context;

    new-instance v0, Lh2/b;

    invoke-direct {v0, p1}, Lh2/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb2/b;->b:Lh2/b;

    invoke-static {}, Lh2/e;->values()[Lh2/e;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    :try_start_0
    iget-object v4, v3, Lh2/e;->b:Ljava/lang/Class;

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    const-class v7, Lcom/miui/antispam/policy/a$b;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Lh2/b;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const-class v7, Lh2/e;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lb2/b;->a:Landroid/content/Context;

    aput-object v6, v5, v1

    aput-object p0, v5, v8

    iget-object v6, p0, Lb2/b;->b:Lh2/b;

    aput-object v6, v5, v9

    aput-object v3, v5, v10

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antispam/policy/a;

    iget-object v5, p0, Lb2/b;->d:Ljava/util/TreeMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_1

    :catch_4
    move-exception v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/miui/antispam/policy/b;

    iget-object v0, p0, Lb2/b;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/miui/antispam/policy/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lb2/b;->c:Lcom/miui/antispam/policy/b;

    iget-object p1, p0, Lb2/b;->b:Lh2/b;

    invoke-virtual {p1}, Lh2/b;->l()V

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lb2/b;
    .locals 2

    const-class v0, Lb2/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb2/b;->f:Lb2/b;

    if-nez v1, :cond_0

    new-instance v1, Lb2/b;

    invoke-direct {v1, p0}, Lb2/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb2/b;->f:Lb2/b;

    :cond_0
    sget-object p0, Lb2/b;->f:Lb2/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Lh2/e;)Lcom/miui/antispam/policy/a;
    .locals 1

    iget-object v0, p0, Lb2/b;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/policy/a;

    return-object p1
.end method

.method public b(Lh2/c;)I
    .locals 7

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start call policy judge, antispam enabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb2/b;->a:Landroid/content/Context;

    iget v3, p1, Lh2/c;->e:I

    invoke-static {v2, v3}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PolicyManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lb2/b;->a:Landroid/content/Context;

    iget v3, p1, Lh2/c;->e:I

    invoke-static {v0, v3}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb2/b;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antispam/policy/a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh2/e;

    iget-object v5, v5, Lh2/e;->c:Lh2/d;

    sget-object v6, Lh2/d;->a:Lh2/d;

    if-eq v5, v6, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh2/e;

    iget-object v3, v3, Lh2/e;->c:Lh2/d;

    sget-object v5, Lh2/d;->c:Lh2/d;

    if-ne v3, v5, :cond_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start call policy "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/antispam/policy/a;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p1}, Lcom/miui/antispam/policy/a;->handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v1, v3, Lcom/miui/antispam/policy/a$a;->b:I

    iget-boolean v3, v3, Lcom/miui/antispam/policy/a$a;->a:Z

    if-eqz v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call is handled by "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/miui/antispam/policy/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "conventional call policy judge finish"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public d()Lh2/b;
    .locals 1

    iget-object v0, p0, Lb2/b;->b:Lh2/b;

    return-object v0
.end method

.method public e(Lh2/c;)I
    .locals 12

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, ""

    iget-boolean v4, p1, Lh2/c;->k:Z

    const-string v5, "PolicyManager"

    if-eqz v4, :cond_2

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start mms policy judge, antispam enabled = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lb2/b;->a:Landroid/content/Context;

    iget v7, p1, Lh2/c;->e:I

    invoke-static {v6, v7}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lb2/b;->a:Landroid/content/Context;

    iget v6, p1, Lh2/c;->e:I

    invoke-static {v4, v6}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lb2/b;->e:Lcom/miui/antispam/policy/a;

    if-nez v4, :cond_1

    new-instance v4, Lcom/miui/antispam/policy/MmsPolicy;

    iget-object v6, p0, Lb2/b;->a:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v7, v7}, Lcom/miui/antispam/policy/MmsPolicy;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V

    iput-object v4, p0, Lb2/b;->e:Lcom/miui/antispam/policy/a;

    :cond_1
    iget-object v4, p0, Lb2/b;->e:Lcom/miui/antispam/policy/a;

    invoke-virtual {v4, p1}, Lcom/miui/antispam/policy/a;->handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;

    move-result-object v4

    if-eqz v4, :cond_8

    iget v1, v4, Lcom/miui/antispam/policy/a$a;->b:I

    if-lez v1, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms is handled by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lb2/b;->e:Lcom/miui/antispam/policy/a;

    invoke-virtual {v6}, Lcom/miui/antispam/policy/a;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start sms policy judge, antispam enabled = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lb2/b;->a:Landroid/content/Context;

    iget v7, p1, Lh2/c;->e:I

    invoke-static {v6, v7}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lb2/b;->a:Landroid/content/Context;

    iget v6, p1, Lh2/c;->e:I

    invoke-static {v4, v6}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lb2/b;->d:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/antispam/policy/a;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lh2/e;

    iget-object v8, v8, Lh2/e;->c:Lh2/d;

    sget-object v9, Lh2/d;->b:Lh2/d;

    if-eq v8, v9, :cond_4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lh2/e;

    iget-object v8, v8, Lh2/e;->c:Lh2/d;

    sget-object v9, Lh2/d;->c:Lh2/d;

    if-ne v8, v9, :cond_3

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start sms policy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/miui/antispam/policy/a;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, p1}, Lcom/miui/antispam/policy/a;->handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;

    move-result-object v10

    if-eqz v10, :cond_6

    instance-of v1, v7, Lcom/miui/antispam/policy/KeywordsBlackListPolicy;

    if-eqz v1, :cond_5

    iget-object v0, v10, Lcom/miui/antispam/policy/a$a;->c:Ljava/lang/String;

    :cond_5
    iget v1, v10, Lcom/miui/antispam/policy/a$a;->b:I

    iget-boolean v10, v10, Lcom/miui/antispam/policy/a$a;->a:Z

    if-eqz v10, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms is handled by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/miui/antispam/policy/a;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh2/e;

    iget v6, v6, Lh2/e;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-static {v6, v10, v11}, Lc2/a;->k(IJ)V

    goto/16 :goto_0

    :cond_7
    :goto_1
    const-string v4, "conventional sms policy judge finish"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lb2/b;->c:Lcom/miui/antispam/policy/b;

    invoke-virtual {v4, v1, p1}, Lcom/miui/antispam/policy/b;->d(ILh2/c;)Lcom/miui/antispam/policy/b$a;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-boolean v6, v4, Lcom/miui/antispam/policy/b$a;->a:Z

    if-eqz v6, :cond_8

    const-string v1, "sms is handled by URLFilterPolicy"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v4, Lcom/miui/antispam/policy/b$a;->b:I

    :cond_8
    :goto_2
    invoke-static {v1}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_9

    iget-object v6, p0, Lb2/b;->a:Landroid/content/Context;

    iget-object p1, p1, Lh2/c;->b:Ljava/lang/String;

    invoke-static {v6, p1, v4, v0}, Lm2/f;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "all sms policy judge finished : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Lc2/a;->h(J)V

    return v1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lb2/b;->c:Lcom/miui/antispam/policy/b;

    invoke-virtual {v2, p1, p2}, Lcom/miui/antispam/policy/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getURLScanResult execute time ="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PolicyManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " where "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p1, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "_id"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const-string p3, "data"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "type"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    const-string v0, "sim_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v1, p0, Lb2/b;->b:Lh2/b;

    invoke-virtual {v1, p3, p4, v0}, Lh2/b;->z(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p3

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_3
    return p2
.end method

.method public h(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lb2/b;->b:Lh2/b;

    invoke-virtual {v0, p1, p2, p3}, Lh2/b;->A(Ljava/lang/String;II)V

    return-void
.end method

.method public i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " where "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "data"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "type"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const-string p4, "sim_id"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    iget-object v0, p0, Lb2/b;->b:Lh2/b;

    invoke-virtual {v0, p2, p3, p4}, Lh2/b;->A(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_2
    return-void
.end method

.method public j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " where "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p1, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "_id"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const-string p3, "number"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "type"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    const-string v0, "sim_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v1, p0, Lb2/b;->b:Lh2/b;

    invoke-virtual {v1, p3, p4, v0}, Lh2/b;->B(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p3

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_3
    return p2
.end method

.method public k(Ljava/lang/String;III)V
    .locals 1

    iget-object v0, p0, Lb2/b;->b:Lh2/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lh2/b;->C(Ljava/lang/String;III)V

    return-void
.end method

.method public l(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " where "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "number"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "type"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const-string p4, "state"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    const-string v0, "sim_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v1, p0, Lb2/b;->b:Lh2/b;

    invoke-virtual {v1, p2, p4, p3, v0}, Lh2/b;->C(Ljava/lang/String;III)V

    iget-object p2, p0, Lb2/b;->a:Landroid/content/Context;

    invoke-static {p2, v0}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lb2/b;->a:Landroid/content/Context;

    const/4 p3, 0x1

    invoke-static {p2, v0, p3}, Lm2/a;->t(Landroid/content/Context;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_2
    return-void
.end method
