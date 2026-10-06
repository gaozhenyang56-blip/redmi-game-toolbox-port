.class final Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameToolBox2BuryPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameToolBox2BuryPoint.kt\ncom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$OneshotTabExposeTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,868:1\n1559#2:869\n1590#2,4:870\n*S KotlinDebug\n*F\n+ 1 GameToolBox2BuryPoint.kt\ncom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$OneshotTabExposeTracker\n*L\n847#1:869\n847#1:870,4\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:J

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/gamebooster/model/n;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$e;->a:Ljava/util/List;

    sget-object p1, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    invoke-static {p1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getCurrentTime(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$e;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-boolean v0, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$e;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$e;->c:Z

    sget-object v1, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    invoke-static {v1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getStayPageByUtil(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    new-array v2, v2, [Loj/l;

    const-string v3, "tip"

    const-string v4, "1513.2.6.1.39312"

    invoke-static {v3, v4}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "stay_page"

    invoke-static {v3, v7}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {v1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getCurrentTime(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)J

    move-result-wide v5

    iget-wide v8, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$e;->b:J

    sub-long/2addr v5, v8

    invoke-static {v1, v5, v6}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$toStayTime(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v5, "stay_time"

    invoke-static {v5, v3}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$e;->a:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v8, v4, 0x1

    if-gez v4, :cond_1

    invoke-static {}, Lqj/l;->n()V

    :cond_1
    check-cast v6, Lcom/miui/gamebooster/model/n;

    sget-object v9, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    invoke-static {v9, v6, v4}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$toBpEntity(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;Lcom/miui/gamebooster/model/n;I)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v8

    goto :goto_0

    :cond_2
    const-string v3, "function_list"

    invoke-static {v3, v5}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lqj/d0;->f([Loj/l;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "expose"

    invoke-static/range {v1 .. v6}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->track$default(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/Object;)V

    invoke-static {v7}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->saveStayPage(Ljava/lang/String;)V

    return-void
.end method
