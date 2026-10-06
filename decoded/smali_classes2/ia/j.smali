.class public Lia/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final o:Ljava/lang/String; = "e"


# instance fields
.field public a:Lja/b;

.field public b:Lja/b$b;

.field public c:Lja/b$b$a;

.field public d:Lja/b$b$a;

.field public e:Lja/b$b$a;

.field public f:Lja/b$b$a;

.field public g:Lja/b$b$a;

.field public h:Lja/b$b$a;

.field public i:Lja/b$b$a;

.field public j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    iput p1, p0, Lia/j;->m:I

    const/4 p1, 0x0

    iput p1, p0, Lia/j;->n:I

    iput-object p4, p0, Lia/j;->j:Ljava/util/HashMap;

    iput-object p3, p0, Lia/j;->l:Ljava/lang/String;

    new-instance p3, Ljava/io/File;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lia/j;->l:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "apprecmodel"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    const-string v1, "rec_model_20230425.mnn"

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p3

    array-length p4, p3

    if-nez p4, :cond_1

    sget-object p1, Lia/j;->o:Ljava/lang/String;

    const-string p3, "\u7a7a\u76ee\u5f55"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lia/j;->l:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lia/j;->k:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lia/j;->k:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_0
    :try_start_0
    iget-object p1, p0, Lia/j;->k:Ljava/lang/String;

    invoke-static {p2, v1, p1}, Lia/d;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    aget-object p2, p3, p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lia/j;->n:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lia/j;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "checkpoint_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lia/j;->n:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lia/j;->k:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p4, Lia/j;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cpDir no exists:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lia/j;->n:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lia/j;->l:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lia/j;->k:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lia/j;->k:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    :try_start_1
    iget-object p1, p0, Lia/j;->k:Ljava/lang/String;

    invoke-static {p2, v1, p1}, Lia/d;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lia/j;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNNetNative;->nativeCreateNetFromFile(Ljava/lang/String;)J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long v0, p4, p2

    const-string v1, "MNNDemo"

    const/4 v2, 0x0

    if-nez v0, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Create Net Failed from file "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    goto :goto_1

    :cond_5
    new-instance p1, Lja/b;

    invoke-direct {p1, p2, p3}, Lja/b;-><init>(J)V

    :goto_1
    iput-object p1, p0, Lia/j;->a:Lja/b;

    if-nez p1, :cond_6

    sget-object p1, Lia/j;->o:Ljava/lang/String;

    const-string p2, "netInstance is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    sget-object p2, Lja/a;->b:Lja/a;

    iget v5, p2, Lja/a;->a:I

    invoke-virtual {p1}, Lja/b;->a()V

    iget-wide v3, p1, Lja/b;->a:J

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNNetNative;->nativeCreateSession(JII[Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p2

    cmp-long p4, p4, p2

    if-nez p4, :cond_7

    const-string p1, "Create Session Error"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    new-instance p4, Lja/b$b;

    invoke-direct {p4, p1, p2, p3, v2}, Lja/b$b;-><init>(Lja/b;JLja/b$a;)V

    move-object v2, p4

    :goto_2
    iput-object v2, p0, Lia/j;->b:Lja/b$b;

    const-string p1, "sparse_inputs_1"

    invoke-virtual {v2, p1}, Lja/b$b;->a(Ljava/lang/String;)Lja/b$b$a;

    move-result-object p1

    iput-object p1, p0, Lia/j;->c:Lja/b$b$a;

    iget-object p1, p0, Lia/j;->b:Lja/b$b;

    const-string p2, "sparse_inputs_2"

    invoke-virtual {p1, p2}, Lja/b$b;->a(Ljava/lang/String;)Lja/b$b$a;

    move-result-object p1

    iput-object p1, p0, Lia/j;->d:Lja/b$b$a;

    iget-object p1, p0, Lia/j;->b:Lja/b$b;

    const-string p2, "sparse_inputs_3"

    invoke-virtual {p1, p2}, Lja/b$b;->a(Ljava/lang/String;)Lja/b$b$a;

    move-result-object p1

    iput-object p1, p0, Lia/j;->e:Lja/b$b$a;

    iget-object p1, p0, Lia/j;->b:Lja/b$b;

    const-string p2, "sparse_inputs_4"

    invoke-virtual {p1, p2}, Lja/b$b;->a(Ljava/lang/String;)Lja/b$b$a;

    move-result-object p1

    iput-object p1, p0, Lia/j;->f:Lja/b$b$a;

    iget-object p1, p0, Lia/j;->b:Lja/b$b;

    const-string p2, "sparse_inputs_5"

    invoke-virtual {p1, p2}, Lja/b$b;->a(Ljava/lang/String;)Lja/b$b$a;

    move-result-object p1

    iput-object p1, p0, Lia/j;->g:Lja/b$b$a;

    iget-object p1, p0, Lia/j;->b:Lja/b$b;

    const-string p2, "sparse_inputs_6"

    invoke-virtual {p1, p2}, Lja/b$b;->a(Ljava/lang/String;)Lja/b$b$a;

    move-result-object p1

    iput-object p1, p0, Lia/j;->h:Lja/b$b$a;

    iget-object p1, p0, Lia/j;->b:Lja/b$b;

    const-string p2, "sparse_inputs_time"

    invoke-virtual {p1, p2}, Lja/b$b;->a(Ljava/lang/String;)Lja/b$b$a;

    move-result-object p1

    iput-object p1, p0, Lia/j;->i:Lja/b$b$a;

    :goto_3
    return-void

    :catchall_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static synthetic c(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p1, p0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p1, p0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p0

    return p0
.end method

.method public static synthetic j(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p1, p0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lia/j;->a:Lja/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lja/b;->a()V

    iget-wide v1, v0, Lja/b;->a:J

    invoke-static {v1, v2}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNNetNative;->nativeReleaseNet(J)J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lja/b;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lia/j;->a:Lja/b;

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lia/h;

    invoke-direct {p1}, Lia/h;-><init>()V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Lia/i;

    invoke-direct {p1}, Lia/i;-><init>()V

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public e(Ljava/util/List;Ljava/util/List;Lga/b;Lla/a;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/mlkit/mobilerec/bean/PredictApp;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lga/b;",
            "Lla/a;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    new-array v9, v8, [I

    const/4 v10, 0x0

    aput v7, v9, v10

    const/4 v11, 0x1

    const/16 v12, 0x1e

    aput v12, v9, v11

    new-array v13, v8, [I

    aput v7, v13, v10

    aput v11, v13, v11

    iget-object v14, v0, Lia/j;->c:Lja/b$b$a;

    invoke-virtual {v14, v9}, Lja/b$b$a;->a([I)V

    iget-object v14, v0, Lia/j;->d:Lja/b$b$a;

    invoke-virtual {v14, v9}, Lja/b$b$a;->a([I)V

    iget-object v14, v0, Lia/j;->e:Lja/b$b$a;

    invoke-virtual {v14, v9}, Lja/b$b$a;->a([I)V

    iget-object v14, v0, Lia/j;->f:Lja/b$b$a;

    invoke-virtual {v14, v9}, Lja/b$b$a;->a([I)V

    iget-object v14, v0, Lia/j;->g:Lja/b$b$a;

    invoke-virtual {v14, v9}, Lja/b$b$a;->a([I)V

    iget-object v14, v0, Lia/j;->h:Lja/b$b$a;

    invoke-virtual {v14, v9}, Lja/b$b$a;->a([I)V

    iget-object v9, v0, Lia/j;->i:Lja/b$b$a;

    invoke-virtual {v9, v13}, Lja/b$b$a;->a([I)V

    iget-object v9, v0, Lia/j;->b:Lja/b$b;

    iget-object v13, v9, Lja/b$b;->b:Lja/b;

    iget-wide v13, v13, Lja/b;->a:J

    iget-wide v8, v9, Lja/b$b;->a:J

    invoke-static {v13, v14, v8, v9}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNNetNative;->nativeReshapeSession(JJ)I

    mul-int/lit8 v8, v7, 0x1e

    new-array v9, v8, [I

    new-array v13, v8, [I

    new-array v14, v8, [I

    new-array v15, v8, [I

    new-array v11, v8, [I

    new-array v8, v8, [I

    new-array v10, v7, [I

    new-array v4, v12, [I

    move-object/from16 v17, v4

    new-array v4, v12, [I

    move-object/from16 v18, v4

    new-array v4, v12, [I

    move-object/from16 v19, v4

    new-array v4, v12, [I

    move-object/from16 v20, v4

    new-array v4, v12, [I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_0

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    iget-object v12, v12, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->mPkg:Ljava/lang/String;

    move-object/from16 v22, v4

    iget-object v4, v0, Lia/j;->j:Ljava/util/HashMap;

    invoke-static {v12, v4}, Lia/d;->f(Ljava/lang/String;Ljava/util/HashMap;)[I

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object/from16 v22, v4

    move-object/from16 v4, v17

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v3, 0x1

    if-le v12, v3, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    iget-object v3, v12, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->mPkg:Ljava/lang/String;

    iget-object v12, v0, Lia/j;->j:Ljava/util/HashMap;

    invoke-static {v3, v12}, Lia/d;->f(Ljava/lang/String;Ljava/util/HashMap;)[I

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object/from16 v3, v18

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v17, v5

    const/4 v5, 0x2

    if-le v12, v5, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    iget-object v12, v12, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->mPkg:Ljava/lang/String;

    iget-object v5, v0, Lia/j;->j:Ljava/util/HashMap;

    invoke-static {v12, v5}, Lia/d;->f(Ljava/lang/String;Ljava/util/HashMap;)[I

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object/from16 v5, v19

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v18, v6

    const/4 v6, 0x3

    if-le v12, v6, :cond_3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    iget-object v6, v6, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->mPkg:Ljava/lang/String;

    iget-object v12, v0, Lia/j;->j:Ljava/util/HashMap;

    invoke-static {v6, v12}, Lia/d;->f(Ljava/lang/String;Ljava/util/HashMap;)[I

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object/from16 v6, v20

    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v19, v8

    const/4 v8, 0x4

    if-le v12, v8, :cond_4

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    iget-object v1, v1, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->mPkg:Ljava/lang/String;

    iget-object v8, v0, Lia/j;->j:Ljava/util/HashMap;

    invoke-static {v1, v8}, Lia/d;->f(Ljava/lang/String;Ljava/util/HashMap;)[I

    move-result-object v1

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object/from16 v8, v22

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0xb

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v10, v0}, Ljava/util/Arrays;->fill([II)V

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v7, :cond_5

    mul-int/lit8 v0, v12, 0x1e

    move/from16 v20, v7

    const/4 v1, 0x0

    const/16 v7, 0x1e

    invoke-static {v4, v1, v9, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v1, v13, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v1, v14, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v1, v15, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8, v1, v11, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, p0

    move-object/from16 v23, v3

    iget-object v3, v7, Lia/j;->j:Ljava/util/HashMap;

    invoke-static {v1, v3}, Lia/d;->f(Ljava/lang/String;Ljava/util/HashMap;)[I

    move-result-object v1

    move-object/from16 v21, v5

    move-object/from16 v3, v19

    const/16 v5, 0x1e

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v19

    move/from16 v7, v20

    move-object/from16 v5, v21

    move-object/from16 v19, v3

    move-object/from16 v3, v23

    goto :goto_5

    :cond_5
    move-object/from16 v7, p0

    move-object/from16 v3, v19

    iget-object v0, v7, Lia/j;->c:Lja/b$b$a;

    invoke-virtual {v0, v9}, Lja/b$b$a;->b([I)V

    iget-object v0, v7, Lia/j;->d:Lja/b$b$a;

    invoke-virtual {v0, v13}, Lja/b$b$a;->b([I)V

    iget-object v0, v7, Lia/j;->e:Lja/b$b$a;

    invoke-virtual {v0, v14}, Lja/b$b$a;->b([I)V

    iget-object v0, v7, Lia/j;->f:Lja/b$b$a;

    invoke-virtual {v0, v15}, Lja/b$b$a;->b([I)V

    iget-object v0, v7, Lia/j;->g:Lja/b$b$a;

    invoke-virtual {v0, v11}, Lja/b$b$a;->b([I)V

    iget-object v0, v7, Lia/j;->h:Lja/b$b$a;

    invoke-virtual {v0, v3}, Lja/b$b$a;->b([I)V

    iget-object v0, v7, Lia/j;->i:Lja/b$b$a;

    invoke-virtual {v0, v10}, Lja/b$b$a;->b([I)V

    iget-object v0, v7, Lia/j;->b:Lja/b$b;

    iget-object v1, v0, Lja/b$b;->b:Lja/b;

    iget-wide v3, v1, Lja/b;->a:J

    iget-wide v0, v0, Lja/b$b;->a:J

    invoke-static {v3, v4, v0, v1}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNNetNative;->nativeRunSession(JJ)I

    iget-object v0, v7, Lia/j;->b:Lja/b$b;

    const-string v1, "linear_9.tmp_1"

    iget-object v3, v0, Lja/b$b;->b:Lja/b;

    iget-wide v3, v3, Lja/b;->a:J

    iget-wide v5, v0, Lja/b$b;->a:J

    invoke-static {v3, v4, v5, v6, v1}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNNetNative;->nativeGetSessionOutput(JJLjava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v5, v3

    const/4 v6, 0x0

    if-nez v5, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find seesion output: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MNNDemo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    goto :goto_6

    :cond_6
    new-instance v1, Lja/b$b$a;

    invoke-direct {v1, v0, v3, v4, v6}, Lja/b$b$a;-><init>(Lja/b$b;JLja/b$a;)V

    :goto_6
    iget-object v0, v1, Lja/b$b$a;->a:[F

    if-nez v0, :cond_7

    iget-wide v3, v1, Lja/b$b$a;->b:J

    invoke-static {v3, v4, v6}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNNetNative;->nativeTensorGetData(J[F)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, v1, Lja/b$b$a;->a:[F

    :cond_7
    iget-wide v3, v1, Lja/b$b$a;->b:J

    iget-object v0, v1, Lja/b$b$a;->a:[F

    invoke-static {v3, v4, v0}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNNetNative;->nativeTensorGetData(J[F)I

    iget-object v0, v1, Lja/b$b$a;->a:[F

    const/4 v12, 0x0

    :goto_7
    array-length v1, v0

    const/4 v3, 0x2

    div-int/2addr v1, v3

    const/4 v4, 0x0

    if-ge v12, v1, :cond_a

    mul-int/lit8 v1, v12, 0x2

    add-int/lit8 v5, v1, 0x2

    invoke-static {v0, v1, v5}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v1

    new-instance v5, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x0

    aget v9, v1, v8

    const/4 v10, 0x1

    aget v11, v1, v10

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    move v10, v8

    :goto_8
    array-length v11, v1

    if-ge v10, v11, :cond_8

    float-to-double v13, v4

    aget v4, v1, v10

    sub-float/2addr v4, v9

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    add-double/2addr v3, v13

    double-to-float v4, v3

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x2

    goto :goto_8

    :cond_8
    array-length v3, v1

    new-array v3, v3, [F

    move v10, v8

    :goto_9
    array-length v11, v1

    if-ge v10, v11, :cond_9

    aget v11, v1, v10

    sub-float/2addr v11, v9

    float-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    move-result-wide v13

    move/from16 p1, v9

    float-to-double v8, v4

    div-double/2addr v13, v8

    double-to-float v8, v13

    aput v8, v3, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, p1

    const/4 v8, 0x0

    goto :goto_9

    :cond_9
    const/4 v8, 0x1

    aget v1, v3, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, v18

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v1, v18

    new-instance v0, Lia/g;

    invoke-direct {v0}, Lia/g;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    move-object/from16 v3, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    iget-object v2, v0, Lga/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    move-object v6, v1

    goto/16 :goto_10

    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v10, 0x0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v10, v8

    goto :goto_b

    :cond_d
    move-object/from16 v8, p4

    iget-object v2, v8, Lla/a;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x1

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v9, v11

    goto :goto_c

    :cond_e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "NaN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    new-instance v11, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-direct {v11, v2, v12}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    int-to-float v12, v10

    div-float/2addr v11, v12

    const/4 v13, 0x1

    goto :goto_f

    :cond_10
    iget-object v11, v8, Lla/a;->c:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v12, v8, Lla/a;->c:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    int-to-float v12, v12

    goto :goto_e

    :cond_11
    const/4 v13, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    :goto_e
    mul-float/2addr v11, v12

    int-to-float v12, v9

    div-float/2addr v11, v12

    :goto_f
    new-instance v12, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v12, v2, v11}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_12
    move-object v6, v5

    :goto_10
    iget-object v0, v0, Lga/b;->a:Ljava/util/List;

    invoke-virtual {v7, v6, v0}, Lia/j;->d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public f(Ljava/util/List;Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;)Lorg/json/JSONObject;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/mlkit/mobilerec/bean/PredictApp;",
            ">;",
            "Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    iget-object v4, v1, Lia/j;->j:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v5, v3, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->mPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_2

    sget-object v0, Lia/j;->o:Ljava/lang/String;

    const-string v2, "trainData size is not enough, min size is 50"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    int-to-double v5, v4

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v5, v7

    double-to-int v5, v5

    sub-int v6, v4, v5

    const/4 v7, 0x2

    new-array v8, v7, [I

    const/4 v9, 0x1

    aput v9, v8, v9

    const/4 v10, 0x0

    aput v6, v8, v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, [[I

    new-array v8, v7, [I

    aput v9, v8, v9

    aput v6, v8, v10

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, [[I

    new-array v8, v7, [I

    aput v9, v8, v9

    aput v6, v8, v10

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, [[I

    new-array v8, v7, [I

    aput v9, v8, v9

    aput v6, v8, v10

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, [[I

    new-array v8, v7, [I

    aput v9, v8, v9

    aput v6, v8, v10

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, [[I

    new-array v8, v7, [I

    aput v9, v8, v9

    aput v6, v8, v10

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v19, v8

    check-cast v19, [[I

    new-array v6, v6, [I

    new-array v8, v7, [I

    aput v9, v8, v9

    aput v5, v8, v10

    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    new-array v12, v7, [I

    aput v9, v12, v9

    aput v5, v12, v10

    invoke-static {v11, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v33, v12

    check-cast v33, [[I

    new-array v12, v7, [I

    aput v9, v12, v9

    aput v5, v12, v10

    invoke-static {v11, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v34, v12

    check-cast v34, [[I

    new-array v12, v7, [I

    aput v9, v12, v9

    aput v5, v12, v10

    invoke-static {v11, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v35, v12

    check-cast v35, [[I

    new-array v12, v7, [I

    aput v9, v12, v9

    aput v5, v12, v10

    invoke-static {v11, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v36, v12

    check-cast v36, [[I

    new-array v12, v7, [I

    aput v9, v12, v9

    aput v5, v12, v10

    invoke-static {v11, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    new-array v12, v5, [I

    new-instance v13, Ljava/util/HashSet;

    int-to-double v9, v5

    const-wide v20, 0x3fe6666666666666L    # 0.7

    div-double v9, v9, v20

    double-to-int v9, v9

    invoke-direct {v13, v9}, Ljava/util/HashSet;-><init>(I)V

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v7

    if-ge v7, v5, :cond_3

    mul-int/lit8 v7, v4, 0x2

    if-ge v10, v7, :cond_3

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v4, Lia/j;->o:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v2

    const-string v2, "times = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", test data size = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ge v4, v5, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    sget-object v4, Lia/j;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "second times = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v2, Lia/j;->o:Ljava/lang/String;

    const-string v3, "begin"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x6

    if-ge v2, v5, :cond_9

    add-int/lit8 v5, v2, 0x5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    aget-object v23, v8, v4

    iget-object v10, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    aput v7, v23, v10

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    aget-object v23, v33, v4

    iget-object v10, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    aput v7, v23, v10

    add-int/lit8 v7, v2, 0x2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    aget-object v23, v34, v4

    iget-object v10, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    aput v7, v23, v10

    add-int/lit8 v7, v2, 0x3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    aget-object v23, v35, v4

    iget-object v10, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    aput v7, v23, v10

    add-int/lit8 v7, v2, 0x4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    aget-object v23, v36, v4

    iget-object v10, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    aput v7, v23, v10

    const/4 v7, 0x2

    invoke-virtual {v9, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    if-nez v23, :cond_6

    aget-object v5, v11, v4

    const/16 v7, 0x1388

    invoke-virtual {v9, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aput v7, v5, v10

    aput v10, v12, v4

    goto :goto_4

    :cond_6
    aget-object v7, v11, v4

    iget-object v10, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v10, 0x0

    aput v5, v7, v10

    const/4 v5, 0x1

    aput v5, v12, v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    aget-object v10, v14, v3

    move/from16 v23, v4

    iget-object v4, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x0

    aput v4, v10, v7

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    aget-object v10, v15, v3

    iget-object v7, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x0

    aput v4, v10, v7

    add-int/lit8 v4, v2, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    aget-object v10, v16, v3

    iget-object v7, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x0

    aput v4, v10, v7

    add-int/lit8 v4, v2, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    aget-object v10, v17, v3

    iget-object v7, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x0

    aput v4, v10, v7

    add-int/lit8 v4, v2, 0x4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    aget-object v10, v18, v3

    iget-object v7, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x0

    aput v4, v10, v7

    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    if-nez v10, :cond_8

    aget-object v5, v19, v3

    const/16 v10, 0x1388

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    aput v10, v5, v7

    aput v7, v6, v3

    goto :goto_5

    :cond_8
    aget-object v10, v19, v3

    iget-object v4, v1, Lia/j;->j:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v10, v7

    const/4 v4, 0x1

    aput v4, v6, v3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v23

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v21

    sget-object v0, Lia/j;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare data use time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lia/j;->k:Ljava/lang/String;

    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v33

    move-object/from16 v23, v34

    move-object/from16 v24, v35

    move-object/from16 v25, v36

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    invoke-static/range {v20 .. v27}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNTrainNative;->nativeGetRecModelPredictScore(Ljava/lang/String;[[I[[I[[I[[I[[I[[I[I)[F

    move-result-object v2

    iget v3, v1, Lia/j;->n:I

    const-string v4, "checkpoint_"

    const-string v5, "apprecmodel"

    const-string v7, "/"

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lia/j;->l:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lia/j;->n:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "runSave del succ old check :"

    goto :goto_7

    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "runSave del fail old check :"

    goto :goto_7

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lia/j;->l:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "runSave create succ :"

    goto :goto_7

    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "runSave create fail :"

    :goto_7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget v3, v1, Lia/j;->n:I

    const/4 v9, 0x1

    add-int/2addr v3, v9

    iput v3, v1, Lia/j;->n:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lia/j;->l:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lia/j;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newPath "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, v1, Lia/j;->k:Ljava/lang/String;

    move-object v10, v12

    move-object v12, v7

    invoke-virtual/range {p2 .. p2}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->getEpochs()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->getLr()F

    move-result v29

    invoke-virtual/range {p2 .. p2}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->getWorkNum()I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->getTrainBatchSize()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->getTestBatchSize()I

    move-result v32

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v33

    move-object/from16 v23, v34

    move-object/from16 v24, v35

    move-object/from16 v25, v36

    move-object/from16 v26, v11

    move-object/from16 v27, v10

    invoke-static/range {v12 .. v32}, Lcom/miui/mlkit/mobilerec/ranking/mnn/MNNTrainNative;->nativeTrainRecModel(Ljava/lang/String;Ljava/lang/String;[[I[[I[[I[[I[[I[[I[I[[I[[I[[I[[I[[I[[I[IIFIII)[F

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    const/4 v4, 0x0

    aget v5, v6, v4

    aget v10, v2, v4

    cmpl-float v4, v5, v10

    const-string v5, "delete file = "

    if-lez v4, :cond_e

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    const-string v4, "score is low than before"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v9, 0x0

    :cond_10
    :goto_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "train_count"

    :try_start_0
    iget v4, v1, Lia/j;->n:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "current_score"

    const/4 v4, 0x0

    :try_start_1
    aget v2, v2, v4

    float-to-double v10, v2

    invoke-virtual {v3, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "new_score"

    :try_start_2
    aget v2, v6, v4

    float-to-double v4, v2

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "train_data_size"

    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->getTrainBatchSize()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "test_data_size"

    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->getTestBatchSize()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "train_use_time"

    :try_start_5
    invoke-virtual {v3, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v0, "is_good_than_before"

    :try_start_6
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v0, "task_epoch"

    :try_start_7
    invoke-virtual/range {p2 .. p2}, Lcom/miui/mlkit/mobilerec/bean/TrainPlanBean;->getEpochs()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    sget-object v2, Lia/j;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appTrain put json e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-object v3
.end method
