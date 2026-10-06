.class final Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh7/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Lak/p;)V
    .locals 1
    .param p1    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/p<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "realCallback"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$d;->a:Lak/p;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$d;->b:Z

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$d;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$d;->b:Z

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$d;->a:Lak/p;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
