.class public final Ll9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll9/d$a;
    }
.end annotation


# static fields
.field public static final d:Ll9/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field static final synthetic e:[Lhk/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhk/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Ll9/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final a:Ll9/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ll9/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ll9/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Ll9/d;

    const/4 v1, 0x3

    new-array v1, v1, [Lhk/h;

    new-instance v2, Lbk/p;

    const-string v3, "gapDay"

    const-string v4, "getGapDay()Ljava/lang/String;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Lbk/p;

    const-string v3, "lastShowTimeStamp"

    const-string v4, "getLastShowTimeStamp()Ljava/lang/String;"

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lbk/p;

    const-string v3, "lastShowQuestionId"

    const-string v4, "getLastShowQuestionId()Ljava/lang/String;"

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Ll9/d;->e:[Lhk/h;

    new-instance v0, Ll9/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll9/d$a;-><init>(Lbk/g;)V

    sput-object v0, Ll9/d;->d:Ll9/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll9/h;

    const-string v1, "gap_day"

    const-string v2, "0"

    invoke-direct {v0, v1, v2}, Ll9/h;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ll9/d;->a:Ll9/h;

    new-instance v0, Ll9/h;

    const-string v1, "last_show_time_stamp"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ll9/h;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ll9/d;->b:Ll9/h;

    new-instance v0, Ll9/h;

    const-string v1, "last_show_question_id"

    invoke-direct {v0, v1, v2}, Ll9/h;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Ll9/d;->c:Ll9/h;

    return-void
.end method

.method public static final synthetic a()Ll9/d;
    .locals 1

    sget-object v0, Ll9/d;->f:Ll9/d;

    return-object v0
.end method

.method public static final synthetic b(Ll9/d;)V
    .locals 0

    sput-object p0, Ll9/d;->f:Ll9/d;

    return-void
.end method

.method public static final declared-synchronized d()Ll9/d;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Ll9/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ll9/d;->d:Ll9/d$a;

    invoke-virtual {v1}, Ll9/d$a;->a()Ll9/d;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ll9/d;->a:Ll9/h;

    sget-object v1, Ll9/d;->e:[Lhk/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Ll9/h;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ll9/d;->c:Ll9/h;

    sget-object v1, Ll9/d;->e:[Lhk/h;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Ll9/h;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ll9/d;->b:Ll9/h;

    sget-object v1, Ll9/d;->e:[Lhk/h;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Ll9/h;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll9/d;->a:Ll9/h;

    sget-object v1, Ll9/d;->e:[Lhk/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Ll9/h;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll9/d;->c:Ll9/h;

    sget-object v1, Ll9/d;->e:[Lhk/h;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Ll9/h;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll9/d;->b:Ll9/h;

    sget-object v1, Ll9/d;->e:[Lhk/h;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Ll9/h;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method
