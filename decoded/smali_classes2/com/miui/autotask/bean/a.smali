.class public Lcom/miui/autotask/bean/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:D

.field private e:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/bean/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/bean/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/autotask/bean/a;->d:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/autotask/bean/a;->e:D

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/bean/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/bean/a;->a:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/bean/a;->b:Ljava/lang/String;

    return-void
.end method

.method public h(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/autotask/bean/a;->d:D

    return-void
.end method

.method public i(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/autotask/bean/a;->e:D

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/bean/a;->c:Ljava/lang/String;

    return-void
.end method
