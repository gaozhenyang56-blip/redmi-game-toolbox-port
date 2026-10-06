.class public Ljb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Ljb/g;->a:Landroid/content/Context;

    return-void
.end method

.method private b()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljb/g;->a:Landroid/content/Context;

    const-string v1, "proc_filter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "locked_pkg_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static d(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "proc_filter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p1, "locked_pkg_list"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;)",
            "Ljava/util/List<",
            "Ljb/f;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Ljb/g;->a:Landroid/content/Context;

    invoke-static {v1}, Llb/g;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {}, Llb/g;->c()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanedMemory elapsed time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RunningProcFilter"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Ljb/g;->b()Ljava/util/Set;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljb/f;

    iget-object v9, v8, Ljb/f;->c:[I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v9, :cond_3

    move v9, v11

    :goto_1
    iget-object v12, v8, Ljb/f;->i:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_2

    iget-object v12, v8, Ljb/f;->i:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_1

    iput-boolean v11, v8, Ljb/f;->j:Z

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_2
    if-nez v10, :cond_0

    :goto_3
    goto :goto_4

    :cond_3
    iget-object v9, v0, Ljb/g;->a:Landroid/content/Context;

    iget-object v12, v8, Ljb/f;->a:Ljava/lang/String;

    invoke-static {v9, v12}, Lx4/t;->M(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Ljb/f;->a:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " should keep alive"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Enterprise"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    iget-object v9, v8, Ljb/f;->a:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v0, Ljb/g;->a:Landroid/content/Context;

    iget-object v12, v8, Ljb/f;->a:Ljava/lang/String;

    invoke-static {v9, v12}, Llb/g;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_5

    :cond_6
    move v9, v11

    goto :goto_6

    :cond_7
    :goto_5
    move v9, v10

    :goto_6
    iput-boolean v9, v8, Ljb/f;->j:Z

    if-nez v9, :cond_8

    iget-boolean v9, v8, Ljb/f;->g:Z

    if-nez v9, :cond_8

    goto :goto_3

    :cond_8
    iget-object v9, v8, Ljb/f;->c:[I

    invoke-static {v9}, Lmiui/securitycenter/utils/SecurityCenterHelper;->getProcessPss([I)[J

    move-result-object v9

    if-eqz v9, :cond_9

    move v12, v11

    :goto_7
    array-length v13, v9

    if-ge v12, v13, :cond_9

    iget-wide v13, v8, Ljb/f;->d:J

    aget-wide v15, v9, v12

    const-wide/16 v17, 0x400

    mul-long v15, v15, v17

    add-long/2addr v13, v15

    iput-wide v13, v8, Ljb/f;->d:J

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_9
    iget-wide v12, v8, Ljb/f;->d:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-gtz v9, :cond_a

    goto :goto_3

    :cond_a
    cmp-long v9, v3, v14

    if-eqz v9, :cond_0

    const-wide/32 v12, 0x1d4c0

    cmp-long v9, v3, v12

    if-gez v9, :cond_0

    iget-boolean v9, v8, Ljb/f;->e:Z

    if-nez v9, :cond_0

    iget-object v9, v8, Ljb/f;->k:[J

    aget-wide v11, v9, v11

    :goto_8
    iget-object v9, v8, Ljb/f;->k:[J

    array-length v13, v9

    if-ge v10, v13, :cond_c

    aget-wide v16, v9, v10

    cmp-long v9, v11, v16

    if-lez v9, :cond_b

    move-wide/from16 v11, v16

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_c
    cmp-long v9, v11, v14

    if-eqz v9, :cond_0

    sub-long v9, v5, v11

    cmp-long v9, v9, v3

    if-lez v9, :cond_d

    iget-object v10, v8, Ljb/f;->a:Ljava/lang/String;

    invoke-direct {v0, v7, v10}, Ljb/g;->c(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_d
    if-gez v9, :cond_0

    iget-boolean v8, v8, Ljb/f;->f:Z

    if-nez v8, :cond_0

    goto/16 :goto_3

    :cond_e
    return-object p1
.end method
