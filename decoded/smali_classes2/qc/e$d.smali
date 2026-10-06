.class final Lqc/e$d;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lnk/f<",
        "Loj/l<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lqc/e$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqc/e$d;

    invoke-direct {v0}, Lqc/e$d;-><init>()V

    sput-object v0, Lqc/e$d;->a:Lqc/e$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lnk/f;
    .locals 3
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2, v1}, Lnk/i;->b(ILnk/e;Lak/l;ILjava/lang/Object;)Lnk/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lqc/e$d;->a()Lnk/f;

    move-result-object v0

    return-object v0
.end method
