.class Lym/a0$a;
.super Lym/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lym/a0;->f(Lym/t;JLin/e;)Lym/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lym/t;

.field final synthetic b:J

.field final synthetic c:Lin/e;


# direct methods
.method constructor <init>(Lym/t;JLin/e;)V
    .locals 0

    iput-object p1, p0, Lym/a0$a;->a:Lym/t;

    iput-wide p2, p0, Lym/a0$a;->b:J

    iput-object p4, p0, Lym/a0$a;->c:Lin/e;

    invoke-direct {p0}, Lym/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lym/a0$a;->b:J

    return-wide v0
.end method

.method public e()Lym/t;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lym/a0$a;->a:Lym/t;

    return-object v0
.end method

.method public j()Lin/e;
    .locals 1

    iget-object v0, p0, Lym/a0$a;->c:Lin/e;

    return-object v0
.end method
